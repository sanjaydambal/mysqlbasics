-- MySQL subquery with comparison operators

SELECT  customerNumber,  checkNumber,  amount FROM payments WHERE amount = (SELECT MAX(amount) FROM payments);

SELECT customerNumber, checkNumber, amount FROM payments WHERE amount > (SELECT  AVG(amount) FROM payments); 

-- subquery with IN and NOT IN operators
SELECT customerName FROM customers WHERE customerNumber NOT IN (SELECT DISTINCT customerNumber FROM orders);

-- subquery finds the maximum, minimum, and average number of items in sale orders:
select max(items),min(items),floor(avg(items)) from (select count(orderNumber) as items from orderDetails group by orderNumber);

-- correlated subquery
 select productName,buyPrice from products p1 where buyPrice > (select avg(buyPrice) from products where productLine = p1.productLine) order by buyPrice;

 SELECT   customerNumber, customerName FROM customers WHERE customerNumber IN (SELECT  customerNumber FROM  orders);