-- Create table
create table ADMININFO
(
  ADMINID    NUMBER(10) not null,
  USERNAME   VARCHAR2(15) not null,
  PWD        VARCHAR2(15) not null,
  ADMINNAME  VARCHAR2(20) not null,
  ADMINSEX   NUMBER(2) not null,
  ADMINPHONE NUMBER(11) not null,
  COMM       VARCHAR2(30),
  DEF01      VARCHAR2(30),
  DEF02      VARCHAR2(30),
  DEF03      VARCHAR2(30),
  DEF04      VARCHAR2(30),
  DEF05      VARCHAR2(30)
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
comment on table ADMININFO
  is '管理员信息表';
-- Add comments to the columns 
comment on column ADMININFO.ADMINID
  is '管理员编号';
comment on column ADMININFO.USERNAME
  is '登录用户名';
comment on column ADMININFO.PWD
  is '登录密码';
comment on column ADMININFO.ADMINNAME
  is '管理员姓名';
comment on column ADMININFO.ADMINSEX
  is '管理员性别（取值0或1表示，0表示男，1表示女）';
comment on column ADMININFO.ADMINPHONE
  is '管理员电话';
comment on column ADMININFO.COMM
  is '备注信息';
comment on column ADMININFO.DEF01
  is '预留字段一';
comment on column ADMININFO.DEF02
  is '预留字段二';
comment on column ADMININFO.DEF03
  is '预留字段三';
comment on column ADMININFO.DEF04
  is '预留字段四';
comment on column ADMININFO.DEF05
  is '预留字段五';
-- Create/Recreate primary, unique and foreign key constraints 
alter table ADMININFO
  add constraint PRIMARYKEY primary key (ADMINID)
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
alter table ADMININFO
  add constraint UNIQUEKEY unique (USERNAME)
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
