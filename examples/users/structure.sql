
create table systemUser (
  id       serial,
  login    varchar(64) not null,
  password varchar(64) not null,
  fullName varchar(255)
);

alter table systemUser add constraint pkSystemUser primary key (id);
create unique index akSystemUserLogin on systemUser (login);

create table systemGroup (
  id   serial,
  name varchar(64) not null
);

alter table systemGroup add constraint pkSystemGroup primary key (id);
create unique index akSystemGroupName on systemGroup (name);

create table groupUser (
  userId  integer not null,
  groupId integer not null
);

alter table groupUser add constraint pkGroupUser primary key (userId, groupId);

alter table groupUser add constraint fkGroupUserUserId 
foreign key (userId) references systemUser (id) on delete cascade;

alter table groupUser add constraint fkGroupUserGroupId 
foreign key (groupId) references systemGroup (id) on delete cascade;

create table session (
  id     serial,
  userId integer not null,
  token  varchar(128) not null,
  ip     varchar(45) not null,
  data   text
);

alter table session add constraint pkSession primary key (id);
create unique index akSession on session (token);

alter table session add constraint fkSessionUser 
foreign key (userId) references systemUser (id) on delete cascade;
