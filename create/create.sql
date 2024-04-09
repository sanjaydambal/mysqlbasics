create table employeeDetails(id int auto_increment primary key,name varchar(100));
insert into employeeDetails(name) values("sanjay"),("vinay");
select * from employeeDetails;
alter table employeeDetails add designation varchar(100);
update employeeDetails set designation = "front end developer" where id = 1;
update  employeeDetails set designation = "back end developer" where id = 2;
select * from employeeDetails;
alter table employeeDetails drop column designation;


-- creating a temporary table
create a temporary table teams(name varchar(255));

-- adding a id as first col
alter table employees add id INT AUTO_INCREMENT primary key first;

-- creating a table with foreign key 
CREATE TABLE products(productId INT AUTO_INCREMENT PRIMARY KEY, productName VARCHAR(100) NOT NULL, categoryId INT, FOREIGN KEY (categoryId) REFERENCES categories(categoryId) ON UPDATE SET NULL ON DELETE SET NULL);

-- setting date time 
alter table working_calendar add column time datetime default current_timestamp;

-- uploading images into sql
CREATE TABLE Images (
    ImageID INT PRIMARY KEY,
    ImageData LONGBLOB
);

INSERT INTO Images (ImageID, ImageData)
VALUES (1, LOAD_FILE('C:\27-1-24\5th_month'));



