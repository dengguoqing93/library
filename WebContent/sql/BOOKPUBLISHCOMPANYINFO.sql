-- Create table
create table BOOKPUBLISHCOMPANYINFO
(
  PUBLISHCOMPANYID   NUMBER(10) not null,
  PUBLISHCOMPANYABBR VARCHAR2(4) not null,
  PUBLISHCOMPANYNAME VARCHAR2(25) not null,
  PUBLISHCOMPANYCOMM VARCHAR2(50),
  DEF01              VARCHAR2(50),
  DEF02              VARCHAR2(50),
  DEF03              VARCHAR2(50),
  DEF04              VARCHAR2(50),
  DEF05              VARCHAR2(50)
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
comment on column BOOKPUBLISHCOMPANYINFO.PUBLISHCOMPANYID
  is '³ö°æÉç±àºÅ';
comment on column BOOKPUBLISHCOMPANYINFO.PUBLISHCOMPANYABBR
  is '³ö°æÉçËõÐ´';
comment on column BOOKPUBLISHCOMPANYINFO.PUBLISHCOMPANYNAME
  is '³ö°æÉçÃû×Ö';
comment on column BOOKPUBLISHCOMPANYINFO.PUBLISHCOMPANYCOMM
  is '±¸×¢ÐÅÏ¢';
comment on column BOOKPUBLISHCOMPANYINFO.DEF01
  is 'Ô¤Áô×Ö¶Î';
comment on column BOOKPUBLISHCOMPANYINFO.DEF02
  is 'Ô¤Áô×Ö¶Î';
comment on column BOOKPUBLISHCOMPANYINFO.DEF03
  is 'Ô¤Áô×Ö¶Î';
comment on column BOOKPUBLISHCOMPANYINFO.DEF04
  is 'Ô¤Áô×Ö¶Î';
comment on column BOOKPUBLISHCOMPANYINFO.DEF05
  is 'Ô¤Áô×Ö¶Î';
-- Create/Recreate primary, unique and foreign key constraints 
alter table BOOKPUBLISHCOMPANYINFO
  add constraint COMPANYPUBLISH_KEY primary key (PUBLISHCOMPANYID)
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
alter table BOOKPUBLISHCOMPANYINFO
  add constraint COMPANYPUBLISH_ABBR unique (PUBLISHCOMPANYABBR)
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
alter table BOOKPUBLISHCOMPANYINFO
  add constraint COMPANYPUBLISH_NAME unique (PUBLISHCOMPANYNAME)
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
