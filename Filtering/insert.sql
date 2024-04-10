-- inserting values from other tables 
 insert into stats(totalProduct,totalCustomer,totalOrder) values((select count(*) from products),(select count(*) from customers),(select count(*) from orders));

 DELETE FROM suppliers
WHERE supplierNumber NOT IN (
    SELECT MIN(supplierNumber)
    FROM suppliers
    GROUP BY supplierName, phoneNumber, addressLine1, addressLine2, city, state, customerNumber
);

-- deleting duplicate rows from a table
create temporary table suppliersNew as select s1.supplierNumber from suppiers s1 inner join suppliers s2 on s1.customerNumber = s2.customerNumber where s1.supplierNumber > s2.supplierNumber;
delete from suppliers where supplierNumber in (select supplierNumber from suppliersNew);


-- insert the values and overcoming duplicates
insert into retailers (id,name,product) values(1,"Vinay","Mobiles") as new on duplicate key update id = new.id, name = new.name, product = new.product;

-- inserting datetime
create table events(id int auto_increment primary key,event_name varchar(50) not null,event_time datetime not null);
insert into events(event_name,event_time) values("birthday",now());