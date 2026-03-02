# SQL-Finance-PowerBI-Dashboard
Personal Finance Analysis using SQL Server + PowerBI

📊 Personal Finance Analysis — SQL Server + Power BI Dashboard

A complete end‑to‑end data analysis project using SQL Server, Power BI, and DAX to track and visualize Income, Expenses, Baby Expenses, and Savings over three months.
This project demonstrates real-world data cleaning, modeling, analysis, and dashboard design skills used in data analyst roles.

⭐ Project Overview

This project analyzes personal financial data to understand:
1. Monthly income patterns
2. Spending behavior
3.  Baby-related expenses
4. Savings growth
5. Net balance (Income – Expenses – Baby Expenses - Savings)
6. Month-over-month changes

The final output is an interactive Power BI dashboard with advanced features like dynamic titles, tooltips, forecasting.

🗂️ Project Structure

SQL-Finance-PowerBI-Dashboard/
│
├── sql/
│ ├── create_tables.sql
│ ├── insert_data.sql
│ ├── cleaning_queries.sql
│ ├── analysis_queries.sql
│ ├── views.sql
│ └── stored_procedures.sql
│
├── dashboard/
│ └── Finance_Dashboard.pbix
│
├── screenshots/
│ ├── dashboard_full.png
│ ├── kpi_section.png
│ └── trends.png
│
└── README.md
🛠️ Tools & Technologies

 SQL Server — Data storage, cleaning, and analysis
 Power BI Desktop — Data modeling, DAX, and dashboard creation
 DAX — Measures for KPIs, MoM, YTD, dynamic titles
 Power Query — Data transformation
 GitHub — Version control and portfolio hosting

🧹 SQL Data Cleaning
Key cleaning steps performed in SQL:
• Standardized date formats
• Trimmed category text
• Removed null/blank rows
• Ensured consistent data types
• Created clean views for Power BI
Example:
UPDATE Income SET Date = CONVERT(date, Date);
DELETE FROM Expenses WHERE Amount IS NULL;

📈 SQL Analysis Queries
Created reusable analysis queries for:
• Monthly income
• Monthly expenses
• Baby expenses
• Savings
• Net balance
Example:
SELECT
FORMAT(Date, 'yyyy-MM') AS Month,
SUM(Amount) AS TotalExpenses
FROM Expenses
GROUP BY FORMAT(Date, 'yyyy-MM');

🧩 Data Model (Power BI)

The model includes:
• Calendar table (for time intelligence)
• Relationships:• Calendar → Income
• Calendar → Expenses
• Calendar → Baby_Expenses
• Calendar → Savings
This enables MoM, YTD, and trend analysis.

📊 Power BI Dashboard Features
KPIs
• Total Income
• Total Expenses
• Total Baby Expenses
• Total Savings
• Net Balance

Trend Visuals
• Income vs Expenses (Line chart)
• Baby Expenses Trend (Area chart)
• Savings Trend (Line chart)


Category Insights

• Expense category breakdown
• Savings distribution

Advanced Features
• Dynamic titles
• Month-over-month (MoM) change
• Year-to-date (YTD) metrics
• Forecasting (Power BI Analytics pane)
• Conditional formatting (green/red KPIs)
• Clean, modern layout

🧮 Key DAX Measures
Total Income = SUM(Income[Amount])
Total Expenses = SUM(Expenses[Amount])
Total Baby Expenses = SUM(Baby_Expenses[Amount])
Total Savings = SUM(Savings[Amount])
Net Balance = [Total Income] - [Total Expenses] - [Total Baby Expenses] - [Total Savings]

Month-over-Month (MoM)
Income MoM =
VAR PrevMonth =
CALCULATE([Total Income], DATEADD(Calendar[Date], -1, MONTH))
RETURN
[Total Income] - PrevMonth

🖼️ Dashboard Preview
![Finance_dashboard](https://github.com/user-attachments/assets/b5379175-223a-4654-bbaf-eed591a0de91)


Example:
screenshots/dashboard_full.png
screenshots1.png
screenshots2.png

🎯 Key Insights
• Income remained stable across the three months
• Baby expenses showed a rising trend
• Savings contributions were consistent
• Net balance fluctuated based on monthly spending
• Highest expense category identified dynamically

📥 How to Use This Project
1. Download the `.pbix` file from the `dashboard` folder
2. Open in Power BI Desktop
3. Explore the interactive visuals
4. Review SQL scripts in the `sql` folder
5. Use this project as a template for your own financial analysis
![Screenshot3_chart](https://github.com/user-attachments/assets/613e4373-a71f-464a-906c-326f2673b9dd)
![Screenshot2](https://github.com/user-attachments/assets/bcdd09a6-fd74-4c00-9e7a-1eb942d1fcda)
![Finance_dashboard](https://github.com/user-attachments/assets/c7d33270-8a9e-424d-96ce-dc6399470bbf)


📌 Purpose of This Project

This project was created to demonstrate:

• SQL data cleaning and analysis
• Power BI data modeling
• DAX calculations
• Dashboard design
• End-to-end analytics workflow
• Portfolio-ready documentation
