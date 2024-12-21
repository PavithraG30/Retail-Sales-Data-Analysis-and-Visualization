-- Retail Sales Database Queries
-- This file contains SQL queries to analyze retail sales data in Q1, including revenue by product category, customer demographics, and transactions.

-- Query to select the number of quantities sold in the month of January
SELECT T.Transaction_Date, T.Quantity, P.Product_Category
FROM Transactions T
INNER JOIN Products P ON T.Product_ID = P.Product_ID
WHERE T.Transaction_Date BETWEEN '2024-01-01' AND '2024-01-31';

-- Explanation:
-- This query retrieves the transaction date, quantity sold, and product category for all transactions occurring in January 2024.
-- The `INNER JOIN` links the `Transactions` and `Products` tables, and the `WHERE` clause filters the date range.

-- Query to select females who spent on beauty products
SELECT C.Gender, P.Product_Category, T.Total_Amount
FROM Customers C
INNER JOIN Transactions T ON C.Customer_ID = T.Customer_ID
INNER JOIN Products P ON T.Product_ID = P.Product_ID
WHERE C.Gender = 'Female' AND P.Product_Category = 'Beauty';

-- Explanation:
-- This query identifies female customers who purchased beauty products, displaying their gender, product category, and total amount spent.
-- The `INNER JOIN` combines data from `Customers`, `Transactions`, and `Products` tables.

-- Query to check how much amount was spent in Quarter 1 (Q1)
SELECT C.Customer_ID, P.Product_Category, T.Quantity, T.Total_Amount
FROM Customers C
INNER JOIN Transactions T ON C.Customer_ID = T.Customer_ID
INNER JOIN Products P ON T.Product_ID = P.Product_ID
WHERE T.Transaction_Date BETWEEN '2024-01-01' AND '2024-03-31';

-- Explanation:
-- This query calculates the total amount spent by customers in Q1, showing customer ID, product category, quantity, and total amount.
-- It uses `INNER JOIN` to merge data from three tables and filters by date range.

-- Query to Find Total Revenue by Product Category in Q1
SELECT P.Product_Category, SUM(T.Total_Amount) AS Total_Revenue
FROM Transactions T
INNER JOIN Products P ON T.Product_ID = P.Product_ID
WHERE T.Transaction_Date BETWEEN '2024-01-01' AND '2024-03-31'
GROUP BY P.Product_Category;

-- Explanation:
-- This query computes total revenue for each product category in Q1 using the `SUM` function and groups data by product category.

-- Query to find the top 5 product categories based on the total quantity sold in Q1
SELECT P.Product_Category, SUM(T.Quantity) AS Total_Quantity_Sold
FROM Transactions T
INNER JOIN Products P ON T.Product_ID = P.Product_ID
WHERE T.Transaction_Date BETWEEN '2024-01-01' AND '2024-03-31'
GROUP BY P.Product_Category
ORDER BY Total_Quantity_Sold DESC
LIMIT 5;

-- Explanation:
-- This query identifies the top 5 product categories by quantity sold in Q1, sorting the results in descending order.

-- Query to Find Average Transaction Value in Q1
SELECT AVG(T.Total_Amount) AS Average_Transaction_Value
FROM Transactions T
WHERE T.Transaction_Date BETWEEN '2024-01-01' AND '2024-03-31';

-- Explanation:
-- This query calculates the average transaction value in Q1 using the `AVG` function on total amount values.

-- Query to Find Total Spending by Gender in Q1
SELECT C.Gender, SUM(T.Total_Amount) AS Total_Spent
FROM Customers C
INNER JOIN Transactions T ON C.Customer_ID = T.Customer_ID
WHERE T.Transaction_Date BETWEEN '2024-01-01' AND '2024-03-31'
GROUP BY C.Gender;

-- Explanation:
-- This query calculates total spending by gender in Q1, grouping results by gender.

-- Query to Find Number of Transactions by Customer in Q1
SELECT C.Customer_ID, COUNT(T.Transaction_ID) AS Number_of_Transactions
FROM Customers C
INNER JOIN Transactions T ON C.Customer_ID = T.Customer_ID
WHERE T.Transaction_Date BETWEEN '2024-01-01' AND '2024-03-31'
GROUP BY C.Customer_ID;

-- Explanation:
-- This query counts the number of transactions for each customer in Q1, grouped by customer ID.

-- Query to Count How Many Products Have Been Sold in a Year
SELECT P.Product_Category, SUM(T.Quantity) AS Total_Sold
FROM Transactions T
INNER JOIN Products P ON T.Product_ID = P.Product_ID
GROUP BY P.Product_Category;

-- Explanation:
-- This query sums the quantities sold for each product category over an entire year.

-- Query to Select How Many Electronics Were Sold
SELECT P.Product_Category, SUM(T.Quantity) AS Total_Electronics_Sold
FROM Products P
INNER JOIN Transactions T ON P.Product_ID = T.Product_ID
WHERE P.Product_Category = 'Electronics'
GROUP BY P.Product_Category;

-- Explanation:
-- This query calculates the total quantity of electronic products sold.
-- The `WHERE` clause filters for the "Electronics" category, and `SUM` aggregates the quantities sold.