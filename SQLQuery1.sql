create database company;
use company;

create table Employees
(
Emp_ID int,
Emp_Name varchar(255),
Emp_Salary int,
Emp_City varchar(255)
)

insert into Employees (Emp_ID, Emp_Name, Emp_Salary, Emp_City) values (1, 'Asad', '5000', 'Karachi')
insert into Employees (Emp_ID, Emp_Name, Emp_Salary, Emp_City) values (2, 'Umar', '6000', 'Lahore')
insert into Employees (Emp_ID, Emp_Name, Emp_Salary, Emp_City) values (3, 'Asim', '8000', 'Islamabad')
insert into Employees (Emp_ID, Emp_Name, Emp_Salary, Emp_City) values (4, 'Saad', '6000', 'Karachi');

select * from Employees;

  create view emp_view 
  with schemabinding,
  encryption
  as

  select Emp_Name,Emp_Salary,Emp_City from dbo.Employees;

  sp_helptext emp_view;