-- complex condition in the HAVING clause using logical operators such as OR and AND

select orderNumber,sum(quantityOrdered) as itemsCount,sum(priceEach*quantityOrdered) as total from orderDetails group by orderNumber having total > 1000 and itemsCount>600;

-- MySQL HAVING with INNER JOIN example
select orderNumber,status,sum(quantityOrdered*priceEach) as total from orderDetails inner join orders using (orderNumber) group by orderNumber,status having status = "shipped" and total >1500;