-- unique city in data have 

select distinct city from walmartsalesdata;

-- in which city is each branch

select distinct city , branch from walmartsalesdata;

-- how many unique product lines does the data have
select distinct product_line from walmartsalesdata;

-- what is the most coommon payment method

select count(payment) as Total_payment, payment from walmartsalesdata group by Payment order by Total_payment desc;
-- what is most selling product_line

select product_line,
count(product_line) as prod 
from walmartsalesdata
group by Product_line
order by prod desc;

-- what is the total revenue by month

select sum(total) as total_revenue_by_month ,
month from walmartsalesdata
 group by month 
 order by total_revenue_by_month desc;
 
 -- what month had the largest COGS
 
 select sum(cogs) as cogs,
 month from walmartsalesdata
 group by month
 order by cogs desc;
 
 -- what product_line had largest revenue
 
 select sum(total) as total_revenue,
 Product_line from walmartsalesdata 
 group by Product_line 
 order by total_revenue desc;
 
 -- what is the city with largest revenue
 select city,
 sum(total) as total_revenue 
 from walmartsalesdata 
 group by city 
 order by total_revenue desc;
 
 -- what product_line had largest VAT
 Select Product_line,avg(tax) as avg_tax from walmartsalesdata group by Product_line order by avg_tax desc;
 
 -- fetch each product line and add colunm to those product line showing "good",'bad',good if its greater then average sales
 
 select avg(quantity) from walmartsalesdata ;
 select product_line,
 case when avg(quantity) > 5.5 then "Good"
 else "Bad"
 end as mark from walmartsalesdata group by product_line;
 
 -- which brench sold more product  then average product sold
 select branch,sum(quantity) as qty from walmartsalesdata group by Branch 
 having sum(quantity) > (select avg(Quantity) from walmartsalesdata);
 
 -- what is most product_line by gender
 
 select Gender,Product_line,count(gender) as most_product_line_by_gender from walmartsalesdata   group by Product_line,gender 
 order by count(gender) desc;
 
 -- what is the average rating of each product line
 
 select Product_line,round(avg(rating),2) as avg_rating_of_eact_product 
 from walmartsalesdata group by Product_line order by avg_rating_of_eact_product desc
 