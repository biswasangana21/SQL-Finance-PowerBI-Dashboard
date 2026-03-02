Standardize Data


UPDATE Income SET Date = CONVERT(date, Date);
UPDATE Expenses SET Date = CONVERT(date, Date);
UPDATE baby_expenses SET Date = CONVERT(date, Date);
UPDATE Savings SET Date = CONVERT(date, Date);


Trim Category Name:
UPDATE Income SET Category = LTRIM(RTRIM(Category));
UPDATE Expenses SET Category = LTRIM(RTRIM(Category));
UPDATE baby_expenses SET Category = LTRIM(RTRIM(Category));
UPDATE Savings SET Category = LTRIM(RTRIM(Category));

Remove Blank Rows:

DELETE FROM Income WHERE Amount IS NULL;
DELETE FROM Expenses WHERE Amount IS NULL;
DELETE FROM baby_expenses WHERE Amount IS NULL;
DELETE FROM Savings WHERE Amount IS NULL;



