------------UC1-CreateDatabase Payroll_service----------
Create DataBase Payroll_Service
use Payroll_Service

----------UC2-Create Table Emplyee_Payroll-----------
Create table Employee_payroll(
Emp_Id int identity(1,1) not null primary key,
Emp_Name varchar(50),
Salary Bigint,
StartDate Date);

-------UC3-Create Employee PayRoll data as a part of the crud operation------
INSERT INTO Employee_payroll(Emp_Name,SALARY,StartDate) VALUES 
('Kohli',25000,'2022-04-18'),
('Ravi',30000,'2022-03-10'),
('rohit',40000,'2022-04-08'),
('abd',35000,'2022-02-15');

--UC4-Retrieving all data from table--
Select * from Employee_payroll;

--UC 5 Retrieve Data for particular employee as well as Emp joined in a particular datarange--
select * from Employee_payroll where Emp_Name='Ravi';
select *From Employee_Payroll where startdate between CAST('2022-02-1' as date) and getdate();

--UC6- Add gender to Employee Payroll table and update the rows to retrive the correct gender
Alter Table Employee_payroll add Gender varchar(1);
Update Employee_payroll set Gender='M' where Emp_Id In (1,2,3);
Update Employee_payroll set Gender='F' where Emp_Id In (4);

-------UC7-- find sum, average, min, max and number of male and female employees--------
select sum(Salary) as sumsalary,Gender from Employee_payroll group by Gender;
select avg(Salary) as avgsalary,Gender from Employee_payroll group by Gender; 
select max(Salary) as maxsalary,Gender from Employee_payroll group by Gender; 
select min(Salary) as minsalary,Gender from Employee_payroll group by Gender; 
select count(Emp_Name) as EmployeeCount,Gender from employee_payroll group by Gender;  

--------------UC8-- add employee phone, department(not null), Address (using default values)-------------------
select *from Employee_Payroll;
alter table employee_payroll add Phone bigint;
update employee_payroll set Phone = 143252652; 
update employee_payroll set Phone = 1432420201 where Emp_Id IN (2,4); 
alter table employee_payroll add Address varchar(100) not null default 'Bangkok';
alter table employee_payroll add Department varchar(250) not null default 'Fighting';
insert into Employee_Payroll (Emp_Name, salary, startdate, Gender, Phone) values('Sadvitha', 5000000.00, '2019-05-28', 'F', 14324201001);

-------------UC9-- Extend table to have Basic Pay, Deductions, Taxable Pay, Income Tax, Net Pay.-----------
alter table employee_payroll add Basic_Pay float not null default 0.00;
update employee_payroll set Basic_Pay=8000000.00 where Emp_Id=1; 
update employee_payroll set Basic_Pay=5000000.00 where Emp_Id=2;
update employee_payroll set Basic_Pay=3000000.00 where Emp_Id=3;
update employee_payroll set Basic_Pay=200000.00 where Emp_Id=4;
update employee_payroll set Basic_Pay=50000.00 where Emp_Id=5;

alter table employee_payroll add 
								 Deductions float not null default 0.00,
								 Taxable_Pay float not null default 0.00, 
								 Income_Tax float not null default 0.00,
								 Net_Pay float not null default 0.00;
update employee_payroll set Net_Pay = (Basic_Pay-Deductions-Taxable_Pay-Income_Tax);
select * from employee_payroll;

-UC10-- Two departments for same employee
insert into employee_payroll (Emp_Name, Salary, StartDate, Gender, Phone, Address, Department, Basic_Pay, Deductions, Taxable_Pay, Income_Tax)
					  values ('Dhoni', 8000000.00, '2005-07-25', 'M', 143252652, 'Bangkok', 'Dancing', 8000000.00, 1000.00, 2000.00, 1500.00);
update employee_payroll set Net_Pay = (Basic_Pay-Deductions-Taxable_Pay-Income_Tax);






