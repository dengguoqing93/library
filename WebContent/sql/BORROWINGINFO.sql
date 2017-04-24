-- Create table
create table BORROWINGINFO
(
  BORROWINGID      NUMBER(10) not null,
  BOOKID           NUMBER(10) not null,
  STUDENTNO        NUMBER(10) not null,
  BORROWEDDATE     DATE default sysdate not null,
  SHOULDRETURNDATE DATE default sysdate+30 not null,
  ACTUALRETURNDATE DATE,
  OVERDUE          NUMBER(2) default 0,
  COMM             VARCHAR2(100),
  DEF01            VARCHAR2(100),
  DEF02            VARCHAR2(100),
  DEF03            VARCHAR2(100),
  DEF04            VARCHAR2(100),
  DEF05            VARCHAR2(100)
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
comment on table BORROWINGINFO
  is 'ѧ���Ľ�����Ϣ';
-- Add comments to the columns 
comment on column BORROWINGINFO.BORROWINGID
  is '������Ϣ���';
comment on column BORROWINGINFO.BOOKID
  is 'ͼ����';
comment on column BORROWINGINFO.STUDENTNO
  is 'ѧ��';
comment on column BORROWINGINFO.BORROWEDDATE
  is '�������';
comment on column BORROWINGINFO.SHOULDRETURNDATE
  is 'Ӧ������';
comment on column BORROWINGINFO.ACTUALRETURNDATE
  is 'ʵ�ʹ黹����';
comment on column BORROWINGINFO.OVERDUE
  is '�Ƿ����ڣ�0��ʾδ���ڣ�1��ʾ���ڣ�';
comment on column BORROWINGINFO.COMM
  is '��ע';
comment on column BORROWINGINFO.DEF01
  is 'Ԥ���ֶ�';
comment on column BORROWINGINFO.DEF02
  is 'Ԥ���ֶ�';
comment on column BORROWINGINFO.DEF03
  is 'Ԥ���ֶ�';
comment on column BORROWINGINFO.DEF04
  is 'Ԥ���ֶ�';
comment on column BORROWINGINFO.DEF05
  is 'Ԥ���ֶ�';
-- Create/Recreate primary, unique and foreign key constraints 
alter table BORROWINGINFO
  add constraint BORROWINGPRIMARYKEY primary key (BORROWINGID)
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
alter table BORROWINGINFO
  add constraint FK_BOROWING_STUINFO_STUNO foreign key (STUDENTNO)
  references STUDENTINFO (STUDENTNO);
alter table BORROWINGINFO
  add constraint FK_BORREWING_BOOKINFO_BOOKID foreign key (BOOKID)
  references BOOKINFO (BOOKID);
