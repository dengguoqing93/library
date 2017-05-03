-- Create table
/*create table PROFESSIONINFO
(
  PROFESSIONID   NUMBER(10) not null,
  PROFESSIONNO   NUMBER(10) not null,
  PROFESSIONNAME VARCHAR2(50) not null,
  DEPARTMENTID   NUMBER(10) not null,
  PROFESSIONCOMM VARCHAR2(50),
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
comment on column PROFESSIONINFO.PROFESSIONID
  is '专业ID';
comment on column PROFESSIONINFO.PROFESSIONNO
  is '专业编号';
comment on column PROFESSIONINFO.PROFESSIONNAME
  is '专业名称';
comment on column PROFESSIONINFO.DEPARTMENTID
  is '院系ID';
comment on column PROFESSIONINFO.PROFESSIONCOMM
  is '备注信息';
comment on column PROFESSIONINFO.DEF01
  is '预留字段';
comment on column PROFESSIONINFO.DEF02
  is '预留字段';
comment on column PROFESSIONINFO.DEF03
  is '预留字段';
comment on column PROFESSIONINFO.DEF04
  is '预留字段';
comment on column PROFESSIONINFO.DEF05
  is '预留字段';
-- Create/Recreate primary, unique and foreign key constraints 
alter table PROFESSIONINFO
  add constraint PROFESSIONKEY primary key (PROFESSIONID)
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
alter table PROFESSIONINFO
  add constraint PROF_DEPT_DEPTID_FK foreign key (DEPARTMENTID)
  references DEPARTMENTINFO (DEPARTMENTID) on delete cascade;
  */
--mysql创建语句
  CREATE TABLE `professioninfo` (
  `PROFESSIONID` int(11) NOT NULL AUTO_INCREMENT,
  `PROFESSIONNO` int(11) NOT NULL COMMENT '专业编号',
  `PROFESSIONNAME` varchar(45) NOT NULL COMMENT '专业名字',
  `DEPARTMENTID` int(11) NOT NULL COMMENT '部门ID',
  `PROFESSIONCOMM` varchar(45) DEFAULT NULL COMMENT '备注信息',
  `DEF01` varchar(45) DEFAULT NULL COMMENT '预留字段',
  `DEF02` varchar(45) DEFAULT NULL COMMENT '预留字段',
  `DEF03` varchar(45) DEFAULT NULL COMMENT '预留字段',
  `DEF04` varchar(45) DEFAULT NULL COMMENT '预留字段',
  `DEF05` varchar(45) DEFAULT NULL COMMENT '预留字段',
  PRIMARY KEY (`PROFESSIONID`),
  KEY `fk_departmentid_prof_idx` (`DEPARTMENTID`),
  CONSTRAINT `fk_departmentid_prof` FOREIGN KEY (`DEPARTMENTID`) REFERENCES `departmentinfo` (`DEPARTMENTID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='专业信息表';