CREATE DATABASE mall_customers;
USE mall_customers;
CREATE TABLE customers (
    CustomerID INT PRIMARY KEY,
    Gender VARCHAR(10),
    Age INT,
    AnnualIncome INT,
    SpendingScore INT
);
SELECT * FROM customers LIMIT 10;
-- All male customers above 30
SELECT * FROM customers WHERE Gender = 'Male' AND Age > 30;

-- Sort customers by spending score
SELECT * FROM customers ORDER BY SpendingScore DESC;
-- Average spending score by gender
SELECT Gender, AVG(SpendingScore) AS AvgScore
FROM customers
GROUP BY Gender;

-- Average income by age group
SELECT Age, AVG(AnnualIncome) AS AvgIncome
FROM customers
GROUP BY Age;
-- Customers with above-average income
SELECT * FROM customers
WHERE AnnualIncome > (
  SELECT AVG(AnnualIncome) FROM customers
);
CREATE VIEW high_spenders AS
SELECT * FROM customers
WHERE SpendingScore > 80;
CREATE INDEX idx_income ON customers(AnnualIncome);
DESCRIBE customers;
SELECT * FROM customers LIMIT 10;
SELECT Gender, AVG(SpendingScore) FROM customers GROUP BY Gender;	
SELECT * FROM customers WHERE AnnualIncome > (SELECT AVG(AnnualIncome) FROM customers);	
SHOW INDEX FROM customers;	