-- time_of_day
select 
time,
case when `time` between '00:00:00' and '12:00:00' then 'Morning'
     when `time` between '12:01:00' and '16:00:00' then 'Afternoon'
     else 'evening'
     end as Time_of_day
 from walmartsalesdata;
 
alter table walmartsalesdata add column Time_of_day varchar(30);

update walmartsalesdata set time_of_day = case when `time` between '00:00:00' and '12:00:00' then 'Morning'
     when `time` between '12:01:00' and '16:00:00' then 'Afternoon'
     else 'evening'
     end ;
     
     select * from walmartsalesdata
     -- ---------------------------------------------------------------------------------------------------------------
     
     