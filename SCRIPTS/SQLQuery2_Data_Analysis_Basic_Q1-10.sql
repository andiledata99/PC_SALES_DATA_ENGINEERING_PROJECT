-- ======================================================
-- SQL PROJECT QUESTIONS
-- Dataset: PC Sales
-- ======================================================

-- BASIC QUESTIONS

-- 1. Count the total number of sales records.
 
 SELECT COUNT(*) AS number_of_sales
 FROM pc_sales_data;

-- 2. Count the number of sales per Continent.
 
 SELECT Continent,COUNT(*) AS Number_of_sales
  FROM pc_sales_data
GROUP BY Continent ;

-- 3. Count the number of sales per Country or State.

SELECT Country_or_State, COUNT(*) AS  Number_of_sales
  FROM pc_sales_data
  GROUP BY  Country_or_State;

-- 4. List all distinct Shop Name values.
 
 SELECT DISTINCT Shop_Name
 FROM pc_sales_data;

-- 5. Find the average Sale Price.

SELECT AVG(Sale_Price) AS Average_Sales_Price
 FROM pc_sales_data;


-- 6. Find the highest and lowest Sale Price.

SELECT MAX (Sale_Price) AS Highest_Sale_Price ,
       MIN(Sale_Price ) AS Lowest_Sale_Price 
FROM  pc_sales_data;


-- 7. Count the number of sales by Payment Method.
SELECT Payment_Method, cOUNT (*)AS Number_Of_Sales
FROM  pc_sales_data
GROUP BY Payment_Method;

-- 8. Count the number of sales by Channel (Online vs Offline).
 
 SELECT Channel, cOUNT (*)AS Number_Of_Sales
FROM  pc_sales_data
GROUP BY Channel ;
                                                                                                                        
-- 9. Count the number of sales by Priority level.

SELECT Priority, cOUNT (*)AS Number_Of_Sales
FROM  pc_sales_data
GROUP BY Priority;

-- 10. Count the number of distinct PC Make values.

     SELECT COUNT (DISTINCT Pc_Make) AS Distinct_Pc_make_makes 
     FROM  pc_sales_data


-- ADVANCED QUESTIONS

-- 21. Calculate profit per Shop Name.
-- 22. Calculate profit margin per sale ((Sale Price - Cost Price) / Sale Price).
-- 23. Determine which Continent has the highest total revenue.
-- 24. Calculate average Sale Price per RAM size.
-- 25. Find the PC Model with the highest Sale Price.
-- 26. Calculate the average number of days between Purchase Date and Ship Date.
-- 27. Determine which Sales Person Department generates the highest revenue.
-- 28. Calculate total revenue per Storage Capacity.
-- 29. Identify sales where Sale Price is lower than PC Market Price.
-- 30. Rank Sales Person Name by Total Sales per Employee using a window function.

