---- Create table
--create table BORROWINGINFO
--(
--  BORROWINGID      NUMBER(10) not null,
--  BOOKID           NUMBER(10) not null,
--  STUDENTNO        NUMBER(10) not null,
--  BORROWEDDATE     DATE default sysdate not null,
--  SHOULDRETURNDATE DATE default sysdate+30 not null,
--  ACTUALRETURNDATE DATE,
--  OVERDUE          NUMBER(2) default 0,
--  COMM             VARCHAR2(100),
--  DEF01            VARCHAR2(100),
--  DEF02            VARCHAR2(100),
--  DEF03            VARCHAR2(100),
--  DEF04            VARCHAR2(100),
--  DEF05            VARCHAR2(100)
--)
--tablespace USERS
--  pctfree 10
--  initrans 1
--  maxtrans 255
--  storage
--  (
--    initial 64K
--    next 1M
--    minextents 1
--    maxextents unlimited
--  );
---- Add comments to the table 
--comment on table BORROWINGINFO
--  is '学生的借阅信息';
---- Add comments to the columns 
--comment on column BORROWINGINFO.BORROWINGID
--  is '借阅信息编号';
--comment on column BORROWINGINFO.BOOKID
--  is '图书编号';
--comment on column BORROWINGINFO.STUDENTNO
--  is '学号';
--comment on column BORROWINGINFO.BORROWEDDATE
--  is '借出日期';
--comment on column BORROWINGINFO.SHOULDRETURNDATE
--  is '应还日期';
--comment on column BORROWINGINFO.ACTUALRETURNDATE
--  is '实际归还日期';
--comment on column BORROWINGINFO.OVERDUE
--  is '是否逾期（0表示未逾期，1表示逾期）';
--comment on column BORROWINGINFO.COMM
--  is '备注';
--comment on column BORROWINGINFO.DEF01
--  is '预留字段';
--comment on column BORROWINGINFO.DEF02
--  is '预留字段';
--comment on column BORROWINGINFO.DEF03
--  is '预留字段';
--comment on column BORROWINGINFO.DEF04
--  is '预留字段';
--comment on column BORROWINGINFO.DEF05
--  is '预留字段';
---- Create/Recreate primary, unique and foreign key constraints 
--alter table BORROWINGINFO
--  add constraint BORROWINGPRIMARYKEY primary key (BORROWINGID)
--  using index 
--  tablespace USERS
--  pctfree 10
--  initrans 2
--  maxtrans 255
--  storage
--  (
--    initial 64K
--    next 1M
--    minextents 1
--    maxextents unlimited
--  );
--alter table BORROWINGINFO
--  add constraint FK_BOROWING_STUINFO_STUNO foreign key (STUDENTNO)
--  references STUDENTINFO (STUDENTNO);
--alter table BORROWINGINFO
--  add constraint FK_BORREWING_BOOKINFO_BOOKID foreign key (BOOKID)
--  references BOOKINFO (BOOKID);
--MySQL创建语句
DROP TABLE IF EXISTS `bookinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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