-- Using MySQL GROUP BY with aggregate functions
SELECT 
  status, 
  COUNT(*) 
FROM 
  orders 
GROUP BY 
  status;

  select status,sum(quantityOrdered*priceEach) as amount from orders inner join orderDetails using (orderNumber) group by status;

--   MySQL GROUP BY with expression

select year(orderDate) as year,sum(quantityOrdered*priceEach) as total from orders inner join orderDetails using (orderNumber) group by year;

--  Using MySQL GROUP BY with HAVING clause
select year(orderDate) as year,sum(quantityOrdered*priceEach) as total from orders inner join orderDetails using (orderNumber)where status = "shipped" group by year having year <= 2003;


select year(orderDate) as year,status,sum(quantityordered*priceeach)as total from orders inner join orderDetails using (orderNumber) group by year,status order by year;