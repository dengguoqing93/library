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
  is '学生信息表';
-- Add comments to the columns 
comment on column STUDENTINFO.STUDENTNO
  is '学号';
comment on column STUDENTINFO.PWD
  is '密码';
comment on column STUDENTINFO.STUDENTSEX
  is '学生性别';
comment on column STUDENTINFO.GRADE
  is '入学年份';
comment on column STUDENTINFO.DEPARTMENTID
  is '院系ID';
comment on column STUDENTINFO.CLASSES
  is '班级';
comment on column STUDENTINFO.STUDENTPHONE
  is '联系方式';
comment on column STUDENTINFO.BORROWQUANTITIES
  is '可借数量';
comment on column STUDENTINFO.BORROWEDQUANTITIES
  is '已借数量';
comment on column STUDENTINFO.BORROWPRIVILEGE
  is '借阅权限(0表示可借，1表示不可解)';
comment on column STUDENTINFO.COMM
  is '备注';
comment on column STUDENTINFO.DEF01
  is '预留字段';
comment on column STUDENTINFO.DEF02
  is '预留字段';
comment on column STUDENTINFO.DEF03
  is '预留字段';
comment on column STUDENTINFO.DEF04
  is '预留字段';
comment on column STUDENTINFO.DEF05
  is '预留字段';
comment on column STUDENTINFO.PROFESSIONID
  is '专业ID';
comment on column STUDENTINFO.STUDENTNAME
  is '学生名字';
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
