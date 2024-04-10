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


-- To select the customer name and order date from the "orders" table while joining it with the "customers" table using the "customer_id" column
select customerName,orderDate from orders inner join customers using (customer_id);

-- sql query to retrieve pdtName,category,supplierName from products,categories,suppliers using appropriate col
select pdtName,category,supplierName from suppliers inner join categories using (supplierNumber) inner join products using (pdtId);

-- get employeeName and department name from employees and departments table on basis of department id;
select employeeName,departmentName from employees inner join departments using(department_id);


select customerName,sum(qtyOrdered*priceEach) as order_amt from customers inner join orders using(customer_id) group by customerName having order_amt >1000;

select customer_id,count(*) as totalorders from orders order by customer_id;

self join
SELECT e1.employeeNumber AS employee_id,
       CONCAT(e1.firstname, ' ', e1.lastname) AS employee_name,
       e2.employeeNumber AS manager_id,
       CONCAT(e2.firstname, ' ', e2.lastname) AS manager_name
FROM employees e1
JOIN employees e2 ON e1.reportsTo = e2.employeeNumber;
