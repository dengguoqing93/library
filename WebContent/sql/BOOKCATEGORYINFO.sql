-- Create table 
/* orcle语句
 * create table BOOKCATEGORYINFO
(
  BOOKCATEGORYABBR VARCHAR2(4) not null,
  BOOKCATEGORYID   NUMBER(10) not null,
  BOOKCATEGORYNAME VARCHAR2(50) not null,
  BOOKCATEGORYCOMM VARCHAR2(50),
  DEF01            VARCHAR2(50),
  DEF02            VARCHAR2(50),
  DEF03            VARCHAR2(50),
  DEF04            VARCHAR2(50),
  DEF05            VARCHAR2(50)
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
comment on column BOOKCATEGORYINFO.BOOKCATEGORYABBR
  is '图书类别缩写';
comment on column BOOKCATEGORYINFO.BOOKCATEGORYID
  is '图书类别ID';
comment on column BOOKCATEGORYINFO.BOOKCATEGORYNAME
  is '图书类别名字';
comment on column BOOKCATEGORYINFO.BOOKCATEGORYCOMM
  is '备注信息';
comment on column BOOKCATEGORYINFO.DEF01
  is '预留字段';
comment on column BOOKCATEGORYINFO.DEF02
  is '预留字段';
comment on column BOOKCATEGORYINFO.DEF03
  is '预留字段';
comment on column BOOKCATEGORYINFO.DEF04
  is '预留字段';
comment on column BOOKCATEGORYINFO.DEF05
  is '预留字段';
-- Create/Recreate primary, unique and foreign key constraints 
alter table BOOKCATEGORYINFO
  add constraint BOOKCATEGORY_KEY primary key (BOOKCATEGORYID)
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
alter table BOOKCATEGORYINFO
  add constraint BOOKCATEGORYABBR unique (BOOKCATEGORYABBR)
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
alter table BOOKCATEGORYINFO
  add constraint BOOKCATEGORY_NAME unique (BOOKCATEGORYNAME)
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
--MYSQL语句
CREATE TABLE `library`.`bookcategoryinfo` (
  `ID` INT(10) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `ABBR` VARCHAR(4) NOT NULL COMMENT '类别缩写',
  `NAME` VARCHAR(45) NOT NULL COMMENT '类别名',
  `COMM` VARCHAR(45) NULL COMMENT '备注',
  `DEF01` VARCHAR(45) NULL COMMENT '预留字段',
  `def02` VARCHAR(45) NULL COMMENT '预留字段',
  `DEF03` VARCHAR(45) NULL COMMENT '预留字段',
  `DEF04` VARCHAR(45) NULL COMMENT '预留字段',
  `DEF05` VARCHAR(45) NULL COMMENT '预留字段',
  PRIMARY KEY (`ID`))
COMMENT = '图书类别信息表';