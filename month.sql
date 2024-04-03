select date, 
monthname(date) as month
from walmartsalesdata;

alter table walmartsalesdata add column month varchar(20);

update walmartsalesdata set month = (monthname(date));

select * from walmartsalesdata;