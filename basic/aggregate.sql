
select max(temp_lo) from weather;

select city, temp_lo from weather where temp_lo = (select max(temp_lo) from weather);

select city, count(*), max(temp_lo) from weather group by city;

select city, count(*), max(temp_lo) from weather group by city having max(temp_lo) > -4;

select city, count(*), max(temp_lo) from weather where city like 'S%' group by city;

select city, count(*) filter (where temp_lo < -3), max(temp_lo) from weather group_by city;
