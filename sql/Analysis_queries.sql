Monthly Incone:

SELECT
FORMAT(Date, 'yyyy-MM') AS Month,
SUM(Amount) AS TotalIncome
FROM Income
GROUP BY FORMAT(Date, 'yyyy-MM')
ORDER BY Month;

Monthly Exppenses:

SELECT
FORMAT(Date, 'yyyy-MM') AS Month,
SUM(Amount) AS TotalExpenses
FROM Expenses
GROUP BY FORMAT(Date, 'yyyy-MM')
ORDER BY Month;

select
format(Date,'yyyy-MM') as Month,
sum(Amount) as TotalExpenses
from Expenses
group by format(Date,'yyyy-MM')
order by Month;

Monthly Baby Expenses:
select
format(Date,'yyyy-MM') as Month,
sum(Amount) as TotalBabyExpenses
from baby_expenses
group by format(Date,'yyyy-MM')
order by Month;

Monthly Savings:

select 
format(Date,'yyyy-MM') as Month,
sum(Amount) as TotalSaving
from Savings
group by format(Date,'yyyy-MM')
order by Month;

Net Savings (Income – Expenses – Baby – Other)

SELECT
i.Month,
i.TotalIncome,
e.TotalExpenses,
b.TotalBabyExpenses,
s.TotalSavings,
(i.TotalIncome - e.TotalExpenses - b.TotalBabyExpenses + s.TotalSavings) AS NetBalance
FROM
(SELECT FORMAT(Date, 'yyyy-MM') AS Month, SUM(Amount) AS TotalIncome FROM Income GROUP BY FORMAT(Date, 'yyyy-MM')) i
JOIN
(SELECT FORMAT(Date, 'yyyy-MM') AS Month, SUM(Amount) AS TotalExpenses FROM Expenses GROUP BY FORMAT(Date, 'yyyy-MM')) e
ON i.Month = e.Month
JOIN
(SELECT FORMAT(Date, 'yyyy-MM') AS Month, SUM(Amount) AS TotalBabyExpenses FROM baby_expenses GROUP BY FORMAT(Date, 'yyyy-MM')) b
ON i.Month = b.Month
JOIN
(SELECT FORMAT(Date, 'yyyy-MM') AS Month, SUM(Amount) AS TotalSavings FROM Savings GROUP BY FORMAT(Date, 'yyyy-MM')) s
ON i.Month = s.Month;


Net Balance:

select
i.Month,
i.TotalIncome,
e.TotalExpenses,
b.TotalBabyExpenses,
s.TotalSavings,
(i.TotalIncome-e.TotalExpenses-b.TotalBabyExpenses-S.TotalSavings) as Balance
from
(select format(Date,'yyyy-MM') as Month, sum(Amount) as TotalIncome from Income group by format(Date,'yyyy-MM')) i
join
(select format(Date,'yyyy-MM') as Month,sum(Amount) as TotalExpenses from Expenses group by format(Date,'yyyy-MM')) e
on i.Month=e.Month
join
(select format(Date,'yyyy-MM') as Month,sum(Amount) as TotalBabyExpenses from baby_expenses group by format(Date,'yyyy-MM')) b
on i.Month=b.Month
join
(select format(Date,'yyyy-MM') as Month,sum(Amount) as TotalSavings from Savings group by format(Date,'yyyy-MM')) s
on i.Month=s.Month;

