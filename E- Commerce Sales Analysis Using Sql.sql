create database Olist_Ecommerce;
use Olist_Ecommerce;
RENAME TABLE olist_customers_dataset TO customers;
rename table orders to Order_items;
# Primary Keays Identify 
alter table customers modify customer_id varchar(50);
alter table customers add primary key(Customer_id);	
alter table orders modify order_id varchar(50);	
alter table Orders add primary key(Order_id);
alter table product modify product_id varchar(50);
alter table product add primary key(product_id);
alter table sellers modify seller_id varchar(50);
alter table sellers add primary key(seller_id);
# Foreign Keays Idenfiy 
ALTER TABLE orders MODIFY customer_id VARCHAR(50);
ALTER TABLE customers MODIFY customer_id VARCHAR(50);
ALTER TABLE orders ADD FOREIGN KEY (customer_id) REFERENCES customers(customer_id);
ALTER TABLE order_items MODIFY order_id VARCHAR(50);
ALTER TABLE order_items MODIFY product_id VARCHAR(50);
ALTER TABLE order_items MODIFY seller_id VARCHAR(50);
ALTER TABLE order_payment MODIFY order_id VARCHAR(50);
ALTER TABLE order_items ADD FOREIGN KEY (order_id) REFERENCES orders(order_id);
ALTER TABLE order_items ADD FOREIGN KEY (seller_id) REFERENCES sellers(seller_id);
ALTER TABLE order_payment ADD FOREIGN KEY (order_id) REFERENCES orders(order_id);
SET FOREIGN_KEY_CHECKS = 0;
ALTER TABLE order_items ADD FOREIGN KEY (product_id) REFERENCES product(product_id);
SET FOREIGN_KEY_CHECKS = 1;
# Data Understanding 
 # Total Customer
 select count(distinct customer_id) as Total_customers from customers;
 # Total Orders
 select count(distinct order_id) as Total_orders from orders;
 # Total Product
 select count(distinct product_id)  as Total_product from product;
 # Total Sellers
 select count(distinct seller_id)  as Total_seller from sellers;
 # Customer Analysis
 # Top Customer by Order Count
 select c.customer_id,c.customer_city,c.customer_state,count(o.order_id) as order_count from orders o
 join customers c on o.customer_id =c.customer_id group by c.customer_id,c.customer_city,c.customer_state
 order by order_count desc limit 10;
 # Customer by State
 select customer_state,count(customer_id) as total_customer from customers group by customer_state 
 order by total_customer desc;
# Customer by City
select customer_city,count(customer_id) as Total_customer from customers group by customer_city 
order by total_customer desc;
# New Vs Repeat Customer the result show that total customer is 1 which means new customer and total customer is 2 whch mean repeat customer
select customer_id,count(order_id) as total_customer from orders group by customer_id 
order by total_customer desc; 
# Order Analysis
# Total Order
select count(order_id) as total_order from orders;
# Delevered Order
select count(order_id) as Delivered_orders from orders where order_status ='Delivered';
# Cancel Order
select count(order_id) as cancel_order from orders where order_status ='canceled';
# Pending Orders
select count(order_id) as pending_orde from orders where order_Status not in ('Delivered','Canceled');
# Order Distribution Status
select order_status,count(order_id) as Total_order from orders group by order_status 
order by Total_order asc;
# Revenue Anlysis
# Total Revenue
select round(sum(payment_value),2) as Total_Revenue from order_payment;
# Monthly Revenue
select date_format(o.order_purchase_timestamp,'%Y-%m') as Month,
round(sum(p.payment_value),2) as Monthly_Revenue from orders o join order_payment p 
on o.order_id =p.order_id group by Month order by Month asc;
# Yearly Revenue
select date_format(o.order_purchase_timestamp,'%Y')as Year, round(sum(p.payment_value),2) as
 Yearly_Revenue from orders o join order_payment p on o.order_id = p.order_id 
 group by year order by year asc;
 # Highest Revenue Month
 select date_format(o.order_purchase_timestamp,'%Y-%m') as Month, round(sum(p.payment_value),2) 
 as Highest_Revenue_Month from orders o join order_payment p on o.order_id = p.order_id group by
 Month order by Highest_Revenue_Month desc limit 1;
 # Lowest Revenue Month
 select date_format(o.order_purchase_timestamp,'%Y-%m') as Month , round(sum(p.payment_value),2) 
 as Lowest_Month from orders o join order_payment p on o.order_id = p.order_id group by Month 
 order by Lowest_Month asc limit 1;
 # Product Analysis-
 # tOP 10 Product 
 select product_id ,count(order_item_id) as Total_sold from order_items group by product_id 
 order by Total_sold desc limit 10;
 # top Category prouduct 
 select p. product_category_name,count(i.order_item_id) as total_sold from order_items i join product p 
 on i.product_id=p.product_id group by product_category_name order by total_sold desc limit 10;
 # Least Selling Category
 select p.product_category_name,count(i.order_item_id) as least_product from order_items i join product
 p on i.product_id = p.product_id group by product_category_name order by least_product asc limit 1;
 # Product Per Category
 select product_category_name, count(product_id) as total_product_in_stock from product  group by
 product_category_name order by total_product_in_stock desc;
 # Seller Analysis
 # Top Seller
select seller_id ,count(order_id) as Total_items_sold from order_items group by seller_id 
order by Total_items_sold desc limit 10;
# Seller Count By State
select seller_state, count(seller_id) as Total_seller from sellers group by seller_state order by
Total_seller desc;
# Revenue by Seller
select  seller_id, round(sum(price),2) as Total_Revenue from order_items group by seller_id 
order by Total_Revenue desc;
# Best Performing Seller
SELECT seller_id, COUNT(order_item_id) AS Total_Items_Sold, ROUND(SUM(price), 2) AS Total_Revenue FROM 
order_items GROUP BY seller_id ORDER BY Total_Items_Sold DESC LIMIT 10;
# Payment Analysis
# Most Used Payment Method
select payment_type,count(order_id) as total_uses from order_payment group by payment_type 
order by total_uses desc;
# Revenue By Payment Method
select payment_type,round(sum(payment_value),2) as Total_revenue from order_payment group by payment_type
order by Total_revenue desc;
# Average Payment values
select round(avg(payment_value),2) as average_payment_value from order_payment;
# Joins 
# Customer + Order joins
select c.customer_id,c.customer_city,o.order_id,o.order_Status from customers c
join orders o on o.customer_id = c.customer_id;
# Order + Payment Joins
select o.order_id,o.order_Status,p.payment_value,p.payment_type from order_payment p 
join orders o on o.order_id = p.order_id ;
# Order + Order_Item joins
select o.order_id,o.order_status,i.product_id,i.price from orders o join order_items i on
o.order_id = i.order_id; 
# Customer + Order + Payment join
select c.customer_id,c.customer_city,o.order_id,p.payment_value,p.payment_type from customers 
c join orders o on c.customer_id = o.customer_id join order_payment p on o.order_id = p.order_id;
# Order + Product + Seller join
select o.order_id,p.product_category_name,p.product_id,s.seller_id,s.seller_state from order_items 
o join product p on o.product_id = p._product_id join sellers s on s.seller_id = o.seller_id ;
