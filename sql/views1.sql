view:

CREATE VIEW MonthlyIncome AS
SELECT FORMAT(Date, 'yyyy-MM') AS Month, SUM(Amount) AS TotalIncome
FROM Income
GROUP BY FORMAT(Date, 'yyyy-MM');


CREATE VIEW MonthlyExpenses AS
SELECT FORMAT(Date, 'yyyy-MM') AS Month, SUM(Amount) AS TotalExpenses
FROM Expenses
GROUP BY FORMAT(Date, 'yyyy-MM');


CREATE VIEW MonthlyBabyExpenses AS
SELECT FORMAT(Date, 'yyyy-MM') AS Month, SUM(Amount) AS TotalBabyExpenses
FROM baby_expenses
GROUP BY FORMAT(Date, 'yyyy-MM');

CREATE VIEW MonthlySavings AS
SELECT FORMAT(Date, 'yyyy-MM') AS Month, SUM(Amount) AS TotalSavings
FROM Savings
GROUP BY FORMAT(Date, 'yyyy-MM');


CREATE VIEW MonthlyNetBalance AS
SELECT
i.Month,
i.TotalIncome,
e.TotalExpenses,
b.TotalBabyExpenses,
s.TotalSavings,
(i.TotalIncome - e.TotalExpenses - b.TotalBabyExpenses + s.TotalSavings) AS NetBalance
FROM MonthlyIncome i
JOIN MonthlyExpenses e ON i.Month = e.Month
JOIN MonthlyBabyExpenses b ON i.Month = b.Month
JOIN MonthlySavings s ON i.Month = s.Month;

CREATE VIEW MonthlyBalance AS
SELECT
i.Month,
i.TotalIncome,
e.TotalExpenses,
b.TotalBabyExpenses,
s.TotalSavings,
(i.TotalIncome - e.TotalExpenses - b.TotalBabyExpenses - s.TotalSavings) AS NetBalance
FROM MonthlyIncome i
JOIN MonthlyExpenses e ON i.Month = e.Month
JOIN MonthlyBabyExpenses b ON i.Month = b.Month
JOIN MonthlySavings s ON i.Month = s.Month;


