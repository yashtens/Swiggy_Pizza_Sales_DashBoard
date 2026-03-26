SELECT * FROM pizza_db.pizza_sales;
select cast(count(distinct(order_id))as decimal(10,2)) 
from pizza_sales;

 select cast(cast(sum(quantity) as decimal(10,2)) / cast(count(distinct(order_id)) as decimal(10,2)) as decimal(10,2))as avg_pizza_per_order
 from pizza_sales;
 
 select * from pizza_sales;
 
SELECT date(order_date)
from pizza_sales;

select pizza_category,round((sum(total_price)/(select sum(total_price) from pizza_sales))*100,2) as 'Percent_of_Sales'
from pizza_sales
group by pizza_category;

### percentage of sales by pizza size;
select pizza_size,round((sum(total_price)/(select sum(total_price) from pizza_sales))*100,2) as 'Percent_of_Sales'
from pizza_sales
group by pizza_size;

#total piza sold by the pizza category
select pizza_category,sum(quantity) as "total_sold"
from pizza_sales
group by pizza_category;
# top best seller by the pizza sold


select  pizza_name,sum(quantity) as "total_sold"
from pizza_sales
group by pizza_name
order by `total_sold` desc limit 5

 

