SELECT 
    orderNumber, 
    productName, 
    productCode,
    msrp, 
    priceEach
FROM
    products p
INNER JOIN orderdetails o USING (productcode)
WHERE
    p.productcode = 'S10_1678'
    AND p.msrp > o.priceEach;

    //when we want 

    select customerNumber,customerName,orderNumber,status from customers left join orders using (customerNumber) where orderNumber is null limit 20;
