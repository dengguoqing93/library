-- Create table
/*
create table BOOKINFO
(
  BOOKID           NUMBER(10) not null,
  BOOKNO           VARCHAR2(15) not null,
  BOOKNAME         VARCHAR2(50) not null,
  AUTHOR           VARCHAR2(50) not null,
  BOOKCATEGORYID   NUMBER(10) not null,
  PUBLISHCOMPANYID NUMBER(10) not null,
  PUBLICATIONYEAR  NUMBER(4) not null,
  BORROWINGSTATUS  NUMBER(2) not null,
  COMM             VARCHAR2(100),
  DEF01            VARCHAR2(50),
  DEF02            VARCHAR2(50),
  DEF03            VARCHAR2(50),
  DEF04            VARCHAR2(50),
  DEF05            VARCHAR2(50),
  PRICE            NUMBER(6,2) not null
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table BOOKINFO
  is '图书信息表';
-- Add comments to the columns 
comment on column BOOKINFO.BOOKID
  is '图书ID';
comment on column BOOKINFO.BOOKNO
  is '图书编号';
comment on column BOOKINFO.BOOKNAME
  is '图书名字';
comment on column BOOKINFO.AUTHOR
  is '图书作者';
comment on column BOOKINFO.BOOKCATEGORYID
  is '图书类别ID';
comment on column BOOKINFO.PUBLISHCOMPANYID
  is '图书出版社ID';
comment on column BOOKINFO.PUBLICATIONYEAR
  is '出版年份';
comment on column BOOKINFO.BORROWINGSTATUS
  is '借阅状态（0，1表示。0表示未借出，1表示已借出）';
comment on column BOOKINFO.COMM
  is '备注信息';
comment on column BOOKINFO.DEF01
  is '预留字段';
comment on column BOOKINFO.DEF02
  is '预留字段';
comment on column BOOKINFO.DEF03
  is '预留字段';
comment on column BOOKINFO.DEF04
  is '预留字段';
comment on column BOOKINFO.DEF05
  is '预留字段';
comment on column BOOKINFO.PRICE
  is '价格';
-- Create/Recreate primary, unique and foreign key constraints 
alter table BOOKINFO
  add constraint PRIKEY primary key (BOOKID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table BOOKINFO
  add constraint BOOKNO_UNIQUE unique (BOOKNO)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table BOOKINFO
  add constraint BOOKINFO_CATEGORY_CATEID_FK foreign key (BOOKCATEGORYID)
  references BOOKCATEGORYINFO (BOOKCATEGORYID) on delete cascade;
alter table BOOKINFO
  add constraint BOOKINFO_PBCINFO_PBCID_FK foreign key (PUBLISHCOMPANYID)
  references BOOKPUBLISHCOMPANYINFO (PUBLISHCOMPANYID) on delete cascade;
*/
--mysql 创建语句
CREATE TABLE `bookinfo` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BOOKCATEGORYID` int(11) NOT NULL COMMENT '图书类别ID',
  `PUBLISHCOMPANYID` int(11) NOT NULL,
  `BOOKNO` varchar(45) NOT NULL COMMENT '图书编号',
  `BOOKNAME` varchar(45) NOT NULL COMMENT '书名',
  `AUTHOR` varchar(45) NOT NULL COMMENT '作者',
  `PUBLICATIONYEAR` varchar(45) NOT NULL COMMENT '出版年份',
  `BORROWINGSTATUS` int(11) NOT NULL DEFAULT '0' COMMENT '借阅状态（0，1表示。0表示未借出，1表示已借出）',
  `PRICE` varchar(45) NOT NULL COMMENT '价格\n',
  `COMM` varchar(45) DEFAULT NULL COMMENT '备注信息',
  `DEF01` varchar(45) DEFAULT NULL COMMENT '预留字段',
  `DEF02` varchar(45) DEFAULT NULL COMMENT '预留字段',
  `DEF03` varchar(45) DEFAULT NULL COMMENT '预留字段',
  `DEE04` varchar(45) DEFAULT NULL COMMENT '预留字段',
  `DEF05` varchar(45) DEFAULT NULL COMMENT '预留字段',
  PRIMARY KEY (`ID`),
  KEY `fk_category_book_idx` (`BOOKCATEGORYID`),
  KEY `fk_book_category_idx` (`BOOKCATEGORYID`),
  KEY `fk_book_company_idx` (`PUBLISHCOMPANYID`),
  CONSTRAINT `fk_book_category` FOREIGN KEY (`BOOKCATEGORYID`) REFERENCES `bookcategoryinfo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_book_company` FOREIGN KEY (`PUBLISHCOMPANYID`) REFERENCES `bookpublishcompanyinfo` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='图书信息表';