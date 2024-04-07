-- union combines two columns vertically removing the duplicates while inner join combines horizontally removing the duplicates
-- union only combines two result set and outputs only distinct values from the two tables whereas union all output all the values from the two tables

-- The following statement combines result sets returned from t1 and t2 tables:
SELECT id
FROM t1
UNION
SELECT id
FROM t2;

-- combine the first name and last name of employees and customers into a single result set here the col name will be taken as per 1st query
SELECT 
    firstName, 
    lastName
FROM
    employees 
UNION 
SELECT 
    contactFirstName, 
    contactLastName
FROM
    customers;

-- To differentiate between employees and customers, we can add a column as shown in the following query:
  select concat(firstname," ",lastname) fullname , "emp" as contactType from employees union select concat(contactfirstname," ",contactlastname),"customer" as contactType from customers order  by fullname;   

--   The EXCEPT operator returns the row 1 that appears in the first result set but does not appear in the second result set.
SELECT firstName
FROM employees
EXCEPT
SELECT contactFirstName
FROM customers
ORDER BY firstName;

-- intersect The INTERSECT operator is a set operator that returns the common rows of two or more queries.
select id from t1 intersect select id from t2;


-- CTE A common table expression is a named temporary result set that exists solely within the execution scope of a single SQL statement, such as SELECT, INSERT, UPDATE, or DELETE.
with customers_usa as (select customername,state,creditLimit from customers where country = "usa")select customername,creditLimit from customers_usa where state = "CA" order by customername;

with topSales2003 as ( select salesrepemployeenumber employeenumber,sum(priceEach * quantityOrdered) sales from orders inner join orderDetails using (orderNumber) inner join customers using (customerNumber) where Year(shippedDate) = 2003 and status = "shipped" group by employeenumber order by sales desc limit 5) select employeenumber,lastname,firstname,sales from employees join topSales2003 using (employeenumber);