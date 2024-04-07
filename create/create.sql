create table employeeDetails(id int auto_increment primary key,name varchar(100));
insert into employeeDetails(name) values("sanjay"),("vinay");
select * from employeeDetails;
alter table employeeDetails add designation varchar(100);
update employeeDetails set designation = "front end developer" where id = 1;
update  employeeDetails set designation = "back end developer" where id = 2;
select * from employeeDetails;
alter table employeeDetails drop column designation;