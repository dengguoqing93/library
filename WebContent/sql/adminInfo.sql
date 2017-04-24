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
  is '����Ա��Ϣ��';
-- Add comments to the columns 
comment on column ADMININFO.ADMINID
  is '����Ա���';
comment on column ADMININFO.USERNAME
  is '��¼�û���';
comment on column ADMININFO.PWD
  is '��¼����';
comment on column ADMININFO.ADMINNAME
  is '����Ա����';
comment on column ADMININFO.ADMINSEX
  is '����Ա�Ա�ȡֵ0��1��ʾ��0��ʾ�У�1��ʾŮ��';
comment on column ADMININFO.ADMINPHONE
  is '����Ա�绰';
comment on column ADMININFO.COMM
  is '��ע��Ϣ';
comment on column ADMININFO.DEF01
  is 'Ԥ���ֶ�һ';
comment on column ADMININFO.DEF02
  is 'Ԥ���ֶζ�';
comment on column ADMININFO.DEF03
  is 'Ԥ���ֶ���';
comment on column ADMININFO.DEF04
  is 'Ԥ���ֶ���';
comment on column ADMININFO.DEF05
  is 'Ԥ���ֶ���';
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
