-- Create table
/*create table DEPARTMENTINFO
(
  DEPARTMENTID   NUMBER(10) not null,
  DEPARTMENTNO   NUMBER(2) not null,
  DEPARTMENTNAME VARCHAR2(20) not null,
  DEPARTMENTCOMM VARCHAR2(50),
  DEF01          VARCHAR2(50),
  DEF02          VARCHAR2(50),
  DEF03          VARCHAR2(50),
  DEF04          VARCHAR2(50),
  DEF05          VARCHAR2(50)
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
comment on column DEPARTMENTINFO.DEPARTMENTID
  is '院系Id';
comment on column DEPARTMENTINFO.DEPARTMENTNO
  is '院系编号';
comment on column DEPARTMENTINFO.DEPARTMENTNAME
  is '院系名称';
comment on column DEPARTMENTINFO.DEPARTMENTCOMM
  is '备注信息';
comment on column DEPARTMENTINFO.DEF01
  is '预留字段';
comment on column DEPARTMENTINFO.DEF02
  is '预留字段';
comment on column DEPARTMENTINFO.DEF03
  is '预留字段';
comment on column DEPARTMENTINFO.DEF04
  is '预留字段';
comment on column DEPARTMENTINFO.DEF05
  is '预留字段';
-- Create/Recreate primary, unique and foreign key constraints 
alter table DEPARTMENTINFO
  add constraint DEPARTMENTKEY primary key (DEPARTMENTID)
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
alter table DEPARTMENTINFO
  add constraint DEPARTMENTNOUNIQUE unique (DEPARTMENTNO)
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
--MYSQL创建语句
	CREATE TABLE `departmentinfo` (
  `DEPARTMENTID` int(11) NOT NULL AUTO_INCREMENT COMMENT '院系ID',
  `DEPARTMENTNO` int(11) NOT NULL COMMENT '院系编号',
  `DEPARTMENTNAME` varchar(45) NOT NULL COMMENT '院系名称',
  `COMM` varchar(45) DEFAULT NULL COMMENT '备注信息',
  `DEF01` varchar(45) DEFAULT NULL COMMENT '预留字段',
  `DFE02` varchar(45) DEFAULT NULL COMMENT '预留字段',
  `DEF03` varchar(45) DEFAULT NULL COMMENT '预留字段',
  `DEF04` varchar(45) DEFAULT NULL COMMENT '预留字段',
  `DEF05` varchar(45) DEFAULT NULL COMMENT '预留字段',
  PRIMARY KEY (`DEPARTMENTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='院系信息表';