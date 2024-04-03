// when we want to determine number of cutomers who havent placed the order;

select customerNumber,customerName,orderNumber,status from customers left join orders using (customerNumber) where orderNumber is null limit 20;