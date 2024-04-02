-- Using the WHERE clause with equality operator example
select lastname,firstname,jobtitle from employees where jobtitle = 'Sales Rep';

-- Using the WHERE clause with the AND operator
select lastname,firstname,jobtitle from employees where jobtitle = 'Sales Rep' and officeCode = '1';

-- Using the WHERE clause with the OR operator
select lastname,firstname,jobtitle from employees where jobtitle = 'Sales Rep' or officeCode = 1 order by jobtitle,officeCode;

--  Using the WHERE clause with the LIKE operator example
select firstname,lastname from employees where lastname like "%son" order by firstname;

-- Using the WHERE clause with the BETWEEN operator example

select firstname,lastname from employees where officeCode between 1 and 3 order by officeCode;

-- Using the WHERE clause with the IN operator example
select firstname,lastname from employees where officeCode in (1,2,3) order by officeCode;

-- Using MySQL WHERE clause with the IS NULL operator
select firstname,lastname from employees where reportsTo is null;

-- Using MySQL WHERE clause with comparison operators
SELECT lastname, firstname, jobtitle FROM employees WHERE jobtitle <> 'Sales Rep';