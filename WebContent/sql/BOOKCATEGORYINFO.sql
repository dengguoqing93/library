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
  is 'Í¼ÊéÀà±ðËõÐ´';
comment on column BOOKCATEGORYINFO.BOOKCATEGORYID
  is 'Í¼ÊéÀà±ðID';
comment on column BOOKCATEGORYINFO.BOOKCATEGORYNAME
  is 'Í¼ÊéÀà±ðÃû×Ö';
comment on column BOOKCATEGORYINFO.BOOKCATEGORYCOMM
  is '±¸×¢ÐÅÏ¢';
comment on column BOOKCATEGORYINFO.DEF01
  is 'Ô¤Áô×Ö¶Î';
comment on column BOOKCATEGORYINFO.DEF02
  is 'Ô¤Áô×Ö¶Î';
comment on column BOOKCATEGORYINFO.DEF03
  is 'Ô¤Áô×Ö¶Î';
comment on column BOOKCATEGORYINFO.DEF04
  is 'Ô¤Áô×Ö¶Î';
comment on column BOOKCATEGORYINFO.DEF05
  is 'Ô¤Áô×Ö¶Î';
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
