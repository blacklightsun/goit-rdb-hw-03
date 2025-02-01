use mydb;
-- ---------------

-- task 1.1
select * from products;

-- task 1.2
select name, phone 
from shippers;

-- task 2
select 
	avg(price) as avg_price, 
	max(price) as max_price, 
    min(price) as min_price 
from products;

-- task 3
select 
	distinct category_id, 
    price
from products
order by price desc
limit 10;

-- task 4
select count(id)
from products
where price between 20 and 100;

-- task 5
select 
	supplier_id, 
    count(id) as id_count, 
    avg(price) as price_avg
from products
group by supplier_id;
