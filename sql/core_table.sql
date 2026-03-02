create database Finance_Report;

create table Income (
incomeid int identity(1,1) primary key,
date date,
category varchar(100),
amount decimal(10,2),
notes varchar(255));

insert into Income(date,category,amount,notes)
values
('2026/01/01','Salary',2600,'Monthly Salary credited'),
('2026/01/15','Freelance Diet Plan',20,'Online Clint'),
('2026/01/16','Salary',2600,'Monthly Salary Credited'),

('2026/02/01','Salary',2600,'Monthly Salary credited'),
('2026/02/15','Freelance Diet Plan',10,'Online Clint'),
('2026/02/16','Salary',2600,'Monthly Salary Credited'),

('2026/03/01','Salary',2600,'Monthly Salary credited'),
('2026/03/15','Freelance Diet Plan',22,'Online Clint'),
('2026/03/16','Salary',2600,'Monthly Salary Credited');

create table Expenses(
Expenseid int identity(1,1) primary key,
Date DATE,
Category varchar(100),
Amount Decimal(10,2),
Notes Varchar(255));


insert into Expenses (Date,Category,Amount,Notes)
values
('2026/01/03','Groceries',500,'Monthly Groceries'),
('2026/01/05','Phone and Internet',100,'Monthly Recharge'),
('2026/01/10','Car oil',100,'oil'),
('2026/01/15','Medical',60,'Medical bill'),
('2026/01/18','Home rent',1100,'Monthly rent'),
('2026/01/25','Car emi',700,'car rent'),
('2026/01/29','Extra expense',120,'extra');


insert into Expenses (Date,Category,Amount,Notes)
values
('2026/02/03','Groceries',550,'Monthly Groceries'),
('2026/02/05','Phone and Internet',100,'Monthly Recharge'),
('2026/02/10','Car oil',110,'oil'),
('2026/02/15','Medical',30,'Medical bill'),
('2026/02/18','Home rent',1100,'Monthly rent'),
('2026/02/25','Car emi',700,'car rent'),
('2026/02/28','Extra expense',100,'extra'),
('2026/03/03','Groceries',560,'Monthly Groceries');

insert into Expenses (Date,Category,Amount,Notes)
values
('2026/03/05','Phone and Internet',100,'Monthly Recharge'),
('2026/03/10','Car oil',120,'oil'),
('2026/03/15','Medical',50,'Medical bill'),
('2026/03/18','Home rent',1100,'Monthly rent'),
('2026/03/25','Car emi',700,'car rent'),
('2026/03/29','Extra expense',110,'extra');

create table baby_expenses(
babyexpenseid int identity(1,1) primary key,
date DATE,
category varchar(100),
amount decimal(10,2),
notes varchar(255));

insert into baby_expenses(category,amount,notes,date) values
('Diapers',40,'karkland','2026/01/20'),
('Medical',30,'bill','2026/01/22'),
('Toys',20,'toys','2026/01/24'),
('Diapers',40,'karkland','2026/02/20'),
('Medical',50,'bill','2026/02/22'),
('Dress',30,'toys','2026/02/24'),
('Medical',40,'bill','2026/03/22'),
('Toys',25,'toys','2026/03/24'),
('Diapers',40,'karkland','2026/02/20');

create table Savings(
SavingID int identity(1,1) primary key,
Date DATE,
Category varchar(100),
Amount Decimal(10,2),
Notes varchar(255));

insert into Savings(Date,Category,Amount,Notes)
values
('2026/01/18','IndianSavings',1400,'India'),
('2026/01/20','USASavings',300,'Fedility'),
('2026/01/22','401k',200,'Daughter'),
('2026/02/18','IndianSavings',1400,'India'),
('2026/02/22','USASavings',300,'Fedility'),
('2026/02/24','401k',200,'Daughter'),
('2026/03/19','IndianSavings',1400,'India'),
('2026/03/21','USASavings',300,'Fedility'),
('2026/03/25','401k',200,'Daughter');

select* from Income;
select * from Expenses;
select* from baby_expenses;
select * from Savings;



      
  