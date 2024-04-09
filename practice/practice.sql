-- query to insert new record into employees table
insert into employees(name) values("sanjay"),("vinay");

-- update qty  col  of pdt table  to 10 where order_id is 5
update products set qty = 10 where order_qty = 5;

-- delete all records from orders table where status is cancelled
delete from orders where status = "cancelled";

-- This query will retrieve all columns (*) from the "products" table where the "category" column is equal to 'electronics' and the "price" column is less than 1000.
select * from products where category = "Electronics" and price < 1000;


-- This query selects the "name" column from the "customers" table and orders the results alphabetically by the "name" column.
select names from customers order by names;


-- This query will return the count of all rows (orders) in the "orders" table,
select count(*) as total_orders from orders;
