-- Create table
/*
 * orcle语句
 *
 create table BOOKPUBLISHCOMPANYINFO
(
  PUBLISHCOMPANYID   NUMBER(10) not null,
  PUBLISHCOMPANYABBR VARCHAR2(4) not null,
  PUBLISHCOMPANYNAME VARCHAR2(25) not null,
  PUBLISHCOMPANYCOMM VARCHAR2(50),
  DEF01              VARCHAR2(50),
  DEF02              VARCHAR2(50),
  DEF03              VARCHAR2(50),
  DEF04              VARCHAR2(50),
  DEF05              VARCHAR2(50)
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
-- Add comments to the columns 
comment on column BOOKPUBLISHCOMPANYINFO.PUBLISHCOMPANYID
  is '出版社编号';
comment on column BOOKPUBLISHCOMPANYINFO.PUBLISHCOMPANYABBR
  is '出版社缩写';
comment on column BOOKPUBLISHCOMPANYINFO.PUBLISHCOMPANYNAME
  is '出版社名字';
comment on column BOOKPUBLISHCOMPANYINFO.PUBLISHCOMPANYCOMM
  is '备注信息';
comment on column BOOKPUBLISHCOMPANYINFO.DEF01
  is '预留字段';
comment on column BOOKPUBLISHCOMPANYINFO.DEF02
  is '预留字段';
comment on column BOOKPUBLISHCOMPANYINFO.DEF03
  is '预留字段';
comment on column BOOKPUBLISHCOMPANYINFO.DEF04
  is '预留字段';
comment on column BOOKPUBLISHCOMPANYINFO.DEF05
  is '预留字段';
-- Create/Recreate primary, unique and foreign key constraints 
alter table BOOKPUBLISHCOMPANYINFO
  add constraint COMPANYPUBLISH_KEY primary key (PUBLISHCOMPANYID)
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
alter table BOOKPUBLISHCOMPANYINFO
  add constraint COMPANYPUBLISH_ABBR unique (PUBLISHCOMPANYABBR)
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
alter table BOOKPUBLISHCOMPANYINFO
  add constraint COMPANYPUBLISH_NAME unique (PUBLISHCOMPANYNAME)
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
*/
--Mysql
	CREATE TABLE `library`.`bookpublishcompanyinfo` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `ABBR` VARCHAR(4) NOT NULL COMMENT '出版社缩写',
  `NAME` VARCHAR(45) NOT NULL COMMENT '出版社名字',
  `COMM` VARCHAR(45) NULL COMMENT '备注信息',
  `DEF01` VARCHAR(45) NULL COMMENT '预留字段',
  `DEF02` VARCHAR(45) NULL COMMENT '预留字段',
  `DEF03` VARCHAR(45) NULL COMMENT '预留字段',
  `DEF04` VARCHAR(45) NULL COMMENT '预留字段',
  `DEF05` VARCHAR(45) NULL COMMENT '预留字段',
  PRIMARY KEY (`ID`))
COMMENT = '出版社信息';
