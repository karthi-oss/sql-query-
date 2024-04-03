select date,
dayname(date) as date_name
 from walmartsalesdata;
 
 alter table walmartsalesdata add column date_name varchar(40);
 
 update walmartsalesdata set date_name = (dayname(date));
 
 select * from walmartsalesdata