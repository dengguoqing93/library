-- Create table
create table DEPARTMENTINFO
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
  is 'ԺϵId';
comment on column DEPARTMENTINFO.DEPARTMENTNO
  is 'Ժϵ���';
comment on column DEPARTMENTINFO.DEPARTMENTNAME
  is 'Ժϵ����';
comment on column DEPARTMENTINFO.DEPARTMENTCOMM
  is '��ע��Ϣ';
comment on column DEPARTMENTINFO.DEF01
  is 'Ԥ���ֶ�';
comment on column DEPARTMENTINFO.DEF02
  is 'Ԥ���ֶ�';
comment on column DEPARTMENTINFO.DEF03
  is 'Ԥ���ֶ�';
comment on column DEPARTMENTINFO.DEF04
  is 'Ԥ���ֶ�';
comment on column DEPARTMENTINFO.DEF05
  is 'Ԥ���ֶ�';
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
