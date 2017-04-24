-- Create table
create table BOOKINFO
(
  BOOKID           NUMBER(10) not null,
  BOOKNO           VARCHAR2(15) not null,
  BOOKNAME         VARCHAR2(50) not null,
  AUTHOR           VARCHAR2(50) not null,
  BOOKCATEGORYID   NUMBER(10) not null,
  PUBLISHCOMPANYID NUMBER(10) not null,
  PUBLICATIONYEAR  NUMBER(4) not null,
  BORROWINGSTATUS  NUMBER(2) not null,
  COMM             VARCHAR2(100),
  DEF01            VARCHAR2(50),
  DEF02            VARCHAR2(50),
  DEF03            VARCHAR2(50),
  DEF04            VARCHAR2(50),
  DEF05            VARCHAR2(50),
  PRICE            NUMBER(6,2) not null
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
comment on table BOOKINFO
  is 'ͼ����Ϣ��';
-- Add comments to the columns 
comment on column BOOKINFO.BOOKID
  is 'ͼ��ID';
comment on column BOOKINFO.BOOKNO
  is 'ͼ����';
comment on column BOOKINFO.BOOKNAME
  is 'ͼ������';
comment on column BOOKINFO.AUTHOR
  is 'ͼ������';
comment on column BOOKINFO.BOOKCATEGORYID
  is 'ͼ�����ID';
comment on column BOOKINFO.PUBLISHCOMPANYID
  is 'ͼ�������ID';
comment on column BOOKINFO.PUBLICATIONYEAR
  is '�������';
comment on column BOOKINFO.BORROWINGSTATUS
  is '����״̬��0��1��ʾ��0��ʾδ�����1��ʾ�ѽ����';
comment on column BOOKINFO.COMM
  is '��ע��Ϣ';
comment on column BOOKINFO.DEF01
  is 'Ԥ���ֶ�';
comment on column BOOKINFO.DEF02
  is 'Ԥ���ֶ�';
comment on column BOOKINFO.DEF03
  is 'Ԥ���ֶ�';
comment on column BOOKINFO.DEF04
  is 'Ԥ���ֶ�';
comment on column BOOKINFO.DEF05
  is 'Ԥ���ֶ�';
comment on column BOOKINFO.PRICE
  is '�۸�';
-- Create/Recreate primary, unique and foreign key constraints 
alter table BOOKINFO
  add constraint PRIKEY primary key (BOOKID)
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
alter table BOOKINFO
  add constraint BOOKNO_UNIQUE unique (BOOKNO)
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
alter table BOOKINFO
  add constraint BOOKINFO_CATEGORY_CATEID_FK foreign key (BOOKCATEGORYID)
  references BOOKCATEGORYINFO (BOOKCATEGORYID) on delete cascade;
alter table BOOKINFO
  add constraint BOOKINFO_PBCINFO_PBCID_FK foreign key (PUBLISHCOMPANYID)
  references BOOKPUBLISHCOMPANYINFO (PUBLISHCOMPANYID) on delete cascade;
