-- ======================================================
-- SQL PROJECT QUESTIONS
-- Dataset: PC Sales
-- ======================================================



-- ADVANCED QUESTIONS
SELECT * FROM pc_sales_data


-- 21. Calculate profit per Shop Name.

SELECT Shop_name,
    SUM(Sale_Price - Cost_Price) AS Profit
FROM pc_sales_data
GROUP BY Shop_Name;



-- 22. Calculate profit margin per sale ((Sale Price - Cost Price) / Sale Price).




SELECT
    Pc_Make,
    SUM(Sale_Price) AS Revenue,
    SUM(Sale_Price) * 100.0
    / SUM(SUM(Sale_Price))
    OVER () AS Revenue_Percentage
FROM  pc_sales_data
GROUP BY Pc_Make
ORDER BY Revenue

-- 23. Determine which Continent has the highest total revenue.

SELECT TOP 1 Continent, SUM(Sale_Price ) AS Total_Revenue
FROM pc_sales_data
GROUP BY Continent
ORDER BY Total_Revenue DESC ;


-- 24. Calculate average Sale Price per RAM size.

SELECT RAM,AVG(Sale_Price) AS Average_Price_Per_RAM_Size
FROM pc_sales_data
GROUP BY RAM ;


-- 25. Find the PC Model with the highest Sale Price.

SELECT  TOP 1 PC_Model, (Sale_Price) AS Highest_Price
FROM pc_sales_data
ORDER BY Sale_Price DESC


-- 26. Calculate the average number of days between Purchase Date and Ship Date.

 
 select avg(datediff(day,try_convert(date,purchase_date),try_convert(date,ship_date))) as avgshipdays
 from pc_sales_data


-- 27. Determine which Sales Person Department generates the highest revenue.
 
 SELECT Sales_Person_Department,
 SUM (CAST(Sale_Price -Discount_Amount AS BIGINT)) as Total_Revenue
 FROM  pc_sales_data
 GROUP BY  Sales_Person_Department
 ORDER BY Total_Revenue;
                               
-- 28. Calculate total revenue per Storage Capacity.
 SELECT Storage_Capacity,
 SUM (CAST(Sale_Price -Discount_Amount AS BIGINT)) as Total_Revenue
 FROM  pc_sales_data
 GROUP BY  Storage_Capacity
 ORDER BY Total_Revenue;


-- 29. Identify sales where Sale Price is lower than PC Market Price.
Select Sale_Price, PC_Market_Price
	From pc_sales_data
	Where Sale_Price < PC_Market_Price
-- 30. Rank Sales Person Name by Total Sales per Employee using a window function.


SELECT Sales_Person_Name,
       Total_Sales_per_Employee,
       RANK() OVER (ORDER BY Total_Sales_Per_Employee DESC) AS Sales_Rank
FROM  pc_sales_data;