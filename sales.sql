 -- number of sales made im each time of the day per weekday
 
 select Time_of_day,
 count(*)as total_sales 
 from walmartsalesdata 
 where date_name = 'sunday'
 group by Time_of_day 
 order by total_sales desc;
 
 --