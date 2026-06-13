create database super_store;
use super_store;
CREATE TABLE SalesData (
    Row_ID VARCHAR(50),
    Order_ID VARCHAR(100),
    Order_Date VARCHAR(100),
    Ship_Date VARCHAR(100),
    Ship_Mode VARCHAR(100),
    Customer_ID VARCHAR(100),
    Customer_Name VARCHAR(255),
    Segment VARCHAR(100),
    Country VARCHAR(100),
    City VARCHAR(100),
    State VARCHAR(100),
    Postal_Code VARCHAR(50),
    Region VARCHAR(100),
    Product_ID VARCHAR(100),
    Category VARCHAR(100),
    Sub_Category VARCHAR(100),
    Product_Name TEXT,
    Sales VARCHAR(100),
    Quantity VARCHAR(50),
    Discount VARCHAR(50),
    Profit VARCHAR(100)
);
# Data understanding Total Record
 select count(*) as Total_Record from salesdata;
 select * from salesdata;
 # check missing values
 select * from salesdata where Order_Id is null;
 # check dupicate value record
 select Row_Id,count(*) from salesdata group by Row_Id having count(*) >1;
 # KPI Analysis 
 # Total sales
 select sum(sales) as Total_sales from salesdata;
 # Total Profit
 select sum(profit) as Total_Profit from salesdata;
 # average sales
 select avg(sales) as Average_Sales from salesdata;
 # Total Order
select count(distinct order_id) from salesdata;
# Product Analysis
# top 10 products by sales
select product_name ,sum(sales) as product_sale from salesdata group by product_name 
order by Product_sale desc limit 10; 
# Top 10 Product by profit 
select product_name, sum(profit) as Product_profit from salesdata group by product_name order by
Product_profit desc limit 10;
# Lowest Performing Products
select product_name, sum(sales) as Lowest_Product from salesdata group by product_name 
order by Lowest_Product asc limit 10 ;
# Most sold product 
select product_name,count(quantity) as Most_Sold from salesdata group by product_name 
order by Most_Sold desc limit 10 ;
# Category Analysis
# sales by category
select category,sum(sales) from salesdata group by category;
# Profit by category
select category,sum(profit) from salesdata group by category;
# Best category
select category,sum(sales) as best_category from salesdata group by category 
order by best_category desc; 
# worst category
select category ,sum(sales) as worst_category from salesdata group by category 
order by worst_category asc;
# Customer Analysis
# Top 10 cusmtoer by sales
select customer_name,sum(sales) as Top_Customer from salesdata group by customer_name 
order by Top_Customer desc;
# Customer count
select count(customer_name) from salesdata ;
# Regional Analysis
# sales by region
select region,sum(sales) as Region_sale from salesdata group by region order by Region_sale desc limit 10;
# profit by region
select region,sum(sales) as region_profit from salesdata group by region order by region_profit desc
 limit 10;
 # sales by state
 select state, sum(sales) as state_sale from salesdata group by state order by state_sale desc limit 10;
 # top 10 cities sale
 select city,sum(sales) as city_sale from salesdata group by city order by city_sale desc limit 10;
 # Times Series Analysis
 # monthly sales trend
 set sql_safe_updates =0;
 update salesdata # open the safety lock 
 set Order_Date =str_to_date(Order_Date,'%m/%d/%y'); #convert the text date into date format 
 alter table salesdata 
 modify column Order_Date Date;
 set sql_safe_updates =1; #close the safety lock
 # Month sale trend
 SELECT MONTHNAME(STR_TO_DATE(Order_Date, '%m/%d/%Y')) AS Month_Name,
SUM(Sales) AS Total_Sales 
FROM salesdata 
GROUP BY Month_Name 
ORDER BY Total_Sales;
# Monthly profit trend
select monthname(str_to_date(Order_Date,'%m/%d/%y')) as Month,sum(profit) as Total_profit from salesdata 
group by Month order by Total_profit;
# yearly sale trend
select year(str_to_date(Order_Date,'%m/%d/%Y')) as year,sum(sales) as Total_sale from salesdata 
group by year order by year asc; # we use captal y in date format
# Advanced Sql Analysis
