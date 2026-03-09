-- ======================================================
-- SQL PROJECT QUESTIONS
-- Dataset: PC Sales
-- ======================================================



-- ADVANCED QUESTIONS
SELECT * FROM pc_sales_data


-- 21. Calculate profit per Shop Name.

SELECT Shop_name,
    SUM(Sale_Price - (Discount_Amount + Cost_Price)) AS Profit
FROM pc_sales_data
GROUP BY Shop_Name;


-- 22. Calculate profit margin per sale ((Sale Price - Cost Price) / Sale Price).

SELECT *,Sale_Price -  Cost_Price AS Profit_Margin
FROM pc_sales_data;

-- 23. Determine which Continent has the highest total revenue.

SELECT Continent, SUM(Sale_Price) AS Total_Revenue
FROM pc_sales_data
GROUP BY Continent
ORDER BY Total_Revenue DESC;

-- 24. Calculate average Sale Price per RAM size.

SELECT RAM,AVG(Sale_Price) AS Average_Price_Per_RAM_Size
FROM pc_sales_data
GROUP BY RAM;


-- 25. Find the PC Model with the highest Sale Price.

SELECT  TOP 1 PC_Model, MAX(Sale_Price) AS Highest_Price
FROM pc_sales_data
GROUP BY PC_Model ;


-- 26. Calculate the average number of days between Purchase Date and Ship Date.

SELECT 
    AVG(DATEDIFF(day, Purchase_Date, Ship_Date)) AS Average_Days_To_Ship
FROM pc_sales_data;



-- 27. Determine which Sales Person Department generates the highest revenue.


-- 28. Calculate total revenue per Storage Capacity.
-- 29. Identify sales where Sale Price is lower than PC Market Price.
-- 30. Rank Sales Person Name by Total Sales per Employee using a window function.