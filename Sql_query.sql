create database SQL_Project;
use SQL_Project;

select * from sales_data;

select count(*) from sales_data;

-- Data Filteration Step

select * from sales_data where 
transactions_id is null or 
sale_date is null or 
sale_time is null or 
customer_id is null or 
gender is null or 
age is null or 
category is null or 
quantiy is null or 
price_per_unit is null or 
cogs is null or 
total_sale is null;


delete from sales_data where 
transactions_id is null or 
sale_date is null or 
sale_time is null or 
customer_id is null or 
gender is null or 
age is null or 
category is null or 
quantiy is null or 
price_per_unit is null or 
cogs is null or 
total_sale is null;

set sql_safe_updates =0;

-- Data Exploration Step

select count(customer_id) from sales_data;

-- sales according to customer_id
select count(distinct(customer_id)) as total_unique_ids from sales_data;

-- categories
select distinct(category) as unique_categories from sales_data;

-- total sales
select sum(total_sale) from sales_data;

-- total sales by category
select category,sum(total_sale) from sales_data group by category;


-- Data Analysis & Findings

-- Write a SQL query to retrieve all columns for sales made on '2022-11-05:

select * from sales_data where sale_date = '2022-11-05';

/* Write a SQL query to retrieve all transactions where 
the category is 'Clothing' and the quantity sold is more than 4 in the month of Nov-2022: */

select transactions_id where category = 'Clothing' and quantiy > 4;

-- Write a SQL query to calculate the total sales (total_sale) for each category.:

select category, sum(total_sale) from sales_data group by category;


-- Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.:

select avg(age) from sales_data where category='beauty';

-- Write a SQL query to find all transactions where the total_sale is greater than 1000.:


select * from sales_data where total_sale > 1000;

-- Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.:

select gender, category, count(transactions_id) from sales_data group by gender,category order by 1;










