-- Create table
create table STUDENTINFO
(
  STUDENTNO          NUMBER(10) not null,
  PWD                VARCHAR2(15) not null,
  STUDENTSEX         NUMBER(1) not null,
  GRADE              NUMBER(4) not null,
  DEPARTMENTID       NUMBER(10) not null,
  CLASSES            NUMBER(10) not null,
  STUDENTPHONE       NUMBER(11) not null,
  BORROWQUANTITIES   NUMBER(2) not null,
  BORROWEDQUANTITIES NUMBER(2) not null,
  BORROWPRIVILEGE    NUMBER(1) not null,
  COMM               VARCHAR2(50),
  DEF01              VARCHAR2(50),
  DEF02              VARCHAR2(50),
  DEF03              VARCHAR2(50),
  DEF04              VARCHAR2(50),
  DEF05              VARCHAR2(50),
  PROFESSIONID       NUMBER(10) not null,
  STUDENTNAME        VARCHAR2(20) not null
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
comment on table STUDENTINFO
  is 'ѧ����Ϣ��';
-- Add comments to the columns 
comment on column STUDENTINFO.STUDENTNO
  is 'ѧ��';
comment on column STUDENTINFO.PWD
  is '����';
comment on column STUDENTINFO.STUDENTSEX
  is 'ѧ���Ա�';
comment on column STUDENTINFO.GRADE
  is '��ѧ���';
comment on column STUDENTINFO.DEPARTMENTID
  is 'ԺϵID';
comment on column STUDENTINFO.CLASSES
  is '�༶';
comment on column STUDENTINFO.STUDENTPHONE
  is '��ϵ��ʽ';
comment on column STUDENTINFO.BORROWQUANTITIES
  is '�ɽ�����';
comment on column STUDENTINFO.BORROWEDQUANTITIES
  is '�ѽ�����';
comment on column STUDENTINFO.BORROWPRIVILEGE
  is '����Ȩ��(0��ʾ�ɽ裬1��ʾ���ɽ�)';
comment on column STUDENTINFO.COMM
  is '��ע';
comment on column STUDENTINFO.DEF01
  is 'Ԥ���ֶ�';
comment on column STUDENTINFO.DEF02
  is 'Ԥ���ֶ�';
comment on column STUDENTINFO.DEF03
  is 'Ԥ���ֶ�';
comment on column STUDENTINFO.DEF04
  is 'Ԥ���ֶ�';
comment on column STUDENTINFO.DEF05
  is 'Ԥ���ֶ�';
comment on column STUDENTINFO.PROFESSIONID
  is 'רҵID';
comment on column STUDENTINFO.STUDENTNAME
  is 'ѧ������';
-- Create/Recreate primary, unique and foreign key constraints 
alter table STUDENTINFO
  add constraint STUDENT_PRIMARY primary key (STUDENTNO)
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
alter table STUDENTINFO
  add constraint STU_DEPT_DEPTID_FK foreign key (DEPARTMENTID)
  references DEPARTMENTINFO (DEPARTMENTID) on delete cascade;
alter table STUDENTINFO
  add constraint STU_PROF_PROFID_FK foreign key (PROFESSIONID)
  references PROFESSIONINFO (PROFESSIONID) on delete cascade;
