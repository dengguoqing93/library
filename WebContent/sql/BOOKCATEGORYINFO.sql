-- Create table
create table BOOKCATEGORYINFO
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
  is 'ͼ�������д';
comment on column BOOKCATEGORYINFO.BOOKCATEGORYID
  is 'ͼ�����ID';
comment on column BOOKCATEGORYINFO.BOOKCATEGORYNAME
  is 'ͼ���������';
comment on column BOOKCATEGORYINFO.BOOKCATEGORYCOMM
  is '��ע��Ϣ';
comment on column BOOKCATEGORYINFO.DEF01
  is 'Ԥ���ֶ�';
comment on column BOOKCATEGORYINFO.DEF02
  is 'Ԥ���ֶ�';
comment on column BOOKCATEGORYINFO.DEF03
  is 'Ԥ���ֶ�';
comment on column BOOKCATEGORYINFO.DEF04
  is 'Ԥ���ֶ�';
comment on column BOOKCATEGORYINFO.DEF05
  is 'Ԥ���ֶ�';
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
