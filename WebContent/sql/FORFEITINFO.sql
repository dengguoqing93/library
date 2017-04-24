-- Create table
create table FORFEITINFO
(
  FORFEITID     NUMBER(10) not null,
  BOOKID        NUMBER(10) not null,
  STUDENTNO     NUMBER(10) not null,
  FORFEITDATE   DATE not null,
  FORFEITMONERY NUMBER(10,2) default 0 not null,
  ACTUALMONEY   NUMBER(10,2),
  COMM          VARCHAR2(30),
  DEF01         VARCHAR2(30),
  DEF02         VARCHAR2(30),
  DEF03         VARCHAR2(30),
  DEF04         VARCHAR2(30),
  DEF05         VARCHAR2(30)
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255;
-- Add comments to the columns 
comment on column FORFEITINFO.FORFEITID
  is '������';
comment on column FORFEITINFO.BOOKID
  is 'ͼ��Id';
comment on column FORFEITINFO.STUDENTNO
  is 'ѧ��';
comment on column FORFEITINFO.FORFEITDATE
  is '��������';
comment on column FORFEITINFO.FORFEITMONERY
  is '������';
comment on column FORFEITINFO.ACTUALMONEY
  is 'ʵ�ս��';
comment on column FORFEITINFO.COMM
  is '��ע��Ϣ';
comment on column FORFEITINFO.DEF01
  is 'Ԥ���ֶ�';
comment on column FORFEITINFO.DEF02
  is 'Ԥ���ֶ�';
comment on column FORFEITINFO.DEF03
  is 'Ԥ���ֶ�';
comment on column FORFEITINFO.DEF04
  is 'Ԥ���ֶ�';
comment on column FORFEITINFO.DEF05
  is 'Ԥ���ֶ�';
-- Create/Recreate primary, unique and foreign key constraints 
alter table FORFEITINFO
  add constraint FORFEITPRIMARYKEY primary key (FORFEITID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table FORFEITINFO
  add constraint FK_FOREIT_BOOK_BOOKID foreign key (BOOKID)
  references BOOKINFO (BOOKID);
alter table FORFEITINFO
  add constraint FK_FOREIT_STUINFO_STUNO foreign key (STUDENTNO)
  references STUDENTINFO (STUDENTNO);
