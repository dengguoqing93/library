-- Create table
create table PROFESSIONINFO
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
  is 'רҵID';
comment on column PROFESSIONINFO.PROFESSIONNO
  is 'רҵ���';
comment on column PROFESSIONINFO.PROFESSIONNAME
  is 'רҵ����';
comment on column PROFESSIONINFO.DEPARTMENTID
  is 'ԺϵID';
comment on column PROFESSIONINFO.PROFESSIONCOMM
  is '��ע��Ϣ';
comment on column PROFESSIONINFO.DEF01
  is 'Ԥ���ֶ�';
comment on column PROFESSIONINFO.DEF02
  is 'Ԥ���ֶ�';
comment on column PROFESSIONINFO.DEF03
  is 'Ԥ���ֶ�';
comment on column PROFESSIONINFO.DEF04
  is 'Ԥ���ֶ�';
comment on column PROFESSIONINFO.DEF05
  is 'Ԥ���ֶ�';
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
