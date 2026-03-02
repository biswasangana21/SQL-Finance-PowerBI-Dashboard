select * from [dbo].[Monthlyincome];

create table MonthlyExpence(
Expenseid int identity(1,1) primary key,
Date DATE,
Category varchar(100),
Amount Decimal(10,2),
Notes Varchar(255));

insert into MonthlyExpence (Date,Category,Amount,Notes)
values
('2026/01/03','Groceries',500,'Monthly Groceries');

insert into MonthlyExpence (Date,Category,Amount,Notes)
values
('2026/01/05','Phone and Internet',100,'Monthly Recharge'),
('2026/01/10','Car oil',100,'oil'),
('2026/01/15','Medical',60,'Medical bill'),
('2026/01/18','Home rent',1100,'Monthly rent'),
('2026/01/25','Car emi',700,'car rent'),
('2026/01/29','Extra expense',120,'extra');


insert into MonthlyExpence (Date,Category,Amount,Notes)
values
('2026/02/03','Groceries',550,'Monthly Groceries');
insert into MonthlyExpence (Date,Category,Amount,Notes)
values
('2026/02/05','Phone and Internet',100,'Monthly Recharge');
insert into MonthlyExpence (Date,Category,Amount,Notes)
values
('2026/02/10','Car oil',110,'oil');
insert into MonthlyExpence (Date,Category,Amount,Notes)
values
('2026/02/15','Medical',30,'Medical bill');
insert into MonthlyExpence (Date,Category,Amount,Notes)
values
('2026/02/18','Home rent',1100,'Monthly rent');
insert into MonthlyExpence (Date,Category,Amount,Notes)
values

('2026/02/25','Car emi',700,'car rent');

insert into MonthlyExpence (Date,Category,Amount,Notes)
values ('2026/02/28','Extra expense',100,'extra');

insert into MonthlyExpence (Date,Category,Amount,Notes)
values
('2026/03/03','Groceries',560,'Monthly Groceries');

insert into MonthlyExpence (Date,Category,Amount,Notes)
values
('2026/03/05','Phone and Internet',100,'Monthly Recharge');
insert into MonthlyExpence (Date,Category,Amount,Notes)
values
('2026/03/10','Car oil',120,'oil');
insert into MonthlyExpence (Date,Category,Amount,Notes)
values
('2026/03/15','Medical',50,'Medical bill');
insert into MonthlyExpence (Date,Category,Amount,Notes)
values
('2026/03/18','Home rent',1100,'Monthly rent');
insert into MonthlyExpence (Date,Category,Amount,Notes)
values
('2026/03/25','Car emi',700,'car rent');
insert into MonthlyExpence (Date,Category,Amount,Notes)
values
('2026/03/29','Extra expense',110,'extra');


select * from MonthlyExpence;

create table baby_expenses(
babyexpenseid int identity(1,1) primary key,
category varchar(100),
amount decimal(10,2),
notes varchar(255));

alter table baby_expenses 
add date DATE;

select * from baby_expenses;

insert into baby_expenses(category,amount,notes,date) values
('Diapers',40,'karkland','2026/01/20');
insert into baby_expenses(category,amount,notes,date) values
('Medical',30,'bill','2026/01/22'),
('Toys',20,'toys','2026/01/24'),
('Diapers',40,'karkland','2026/02/20'),
('Medical',50,'bill','2026/02/22'),
('Dress',30,'toys','2026/02/24'),
('Medical',40,'bill','2026/03/22'),
('Toys',25,'toys','2026/03/24'),
('Diapers',40,'karkland','2026/02/20');

select * from baby_expenses;

alter table [dbo].[Savings]
add Date_of_Savings DATE;
Select *from [dbo].[Savings];

insert into [dbo].[Savings]([Date_of_Savings])
values
('2026/01/15'),
('2026/01/18'),
('2026/01/20'),
('2026/01/22'),

('2026/02/16'),
('2026/02/19'),
('2026/02/22'),
('2026/02/24'),

('2026/03/14'),
('2026/03/19'),
('2026/03/23'),
('2026/03/25');

select * from Savings;