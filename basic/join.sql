
select * from weather join cities on city = name;

select * from weather left outer join cities on city = name;

select * from weather w1 join weather w2 on w1.temp_lo < w2.temp_lo and w1.temp_hi > w2.temp_hi;
