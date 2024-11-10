
select * from weather;

select city, (temp_lo + temp_hi) / 2 as temp_avg, prcp, date from weather;

select * from weather where city = 'Kiyv' and temp_hi > 13;

select * from weather order by city, prcp;

select distinct * from weather order by city, prcp;

select distinct city from weather;
