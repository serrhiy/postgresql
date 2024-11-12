
drop database if exists users;
drop user if exists pius;
create user pius with password '1111';
create database users owner pius;
