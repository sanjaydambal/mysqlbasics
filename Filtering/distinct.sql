select distinct lastname from employees order by lastname;  

select distinct state from customers;

select distinct city,state from customers where state is not null order by city,state;

-- MySQL AND Operator
select customername, country from customers where country = "USA" and state = "CA";

--         TRUE	  FALSE	 NULL
-- TRUE	   TRUE	  FALSE	 NULL
-- FALSE   FALSE  FALSE	 FALSE
-- NULL	   NULL   FALSE	 NULL

-- MySQL OR operator

--         TRUE	  FALSE	 NULL
-- TRUE	   TRUE	  TRUE	 TRUE
-- FALSE   TRUE   FALSE	 NULL
-- NULL	   TRUE   NULL	 NULL
select customername, country from customers where country = "USA" or country = "France";

select customername, country,creditLimit from customers where (country = "USA" or country = "France")and creditLimit > 10000;

-- MySQL IN operator
select customername, country from customers where country in ("USA","France","UK");

select officeCode,city,phone from offices where country = "USA" or country = "France";

 select productCode,productName,buyPrice from products where buyPrice between 90 and 100;

 select orderNumber,requiredDate,status from orders where requireddate between cast('2003-01-01' as date) and cast('2003-01-31' as date);

 select employeeNumber,lastname,firstname from employees where firstname like "a%";

 SELECT 
    employeeNumber, 
    lastName, 
    firstName
FROM
    employees
WHERE
    lastName NOT LIKE 'B%';

-- MySQL LIKE operator with the ESCAPE clause
     select productCode,productName from products where productCode like '%\_19%';

-- this will give me 11th row.
     select customerNumber,creditLimit from customers order by creditLimit desc limit 10,1;
