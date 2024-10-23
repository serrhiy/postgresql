
sudo su - postgres
createdb mydb

psql mydb

select version();
select current_date;
select 2 + 2;

\h
\?
\q

dropdb mydb