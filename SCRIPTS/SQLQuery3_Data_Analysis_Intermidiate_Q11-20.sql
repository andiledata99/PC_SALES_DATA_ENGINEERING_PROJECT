-- ======================================================
-- SQL PROJECT QUESTIONS
-- Dataset: PC Sales
-- ======================================================


-- INTERMEDIATE QUESTIONS

select * from [pc_sales_data]

-- 11. Calculate total revenue (SUM of Sale Price).

SELECT SUM( Sale_Price) AS Total_Revenue
FROM pc_sales_data;

-- 12. Calculate total profit (SUM of Sale Price - Cost Price).

SELECT SUM(Sale_Price - Cost_Price) AS total_profit
FROM pc_sales_data;



-- 13. Find the average Discount Amount.

SELECT AVG(Discount_Amount) AS Average_Discount_Amount
FROM pc_sales_data;

-- 14. Calculate total Finance Amount issued.

SELECT SUM (CAST(Finance_amount AS INT )) AS Total_Finance_Amount_Issued
FROM pc_sales_data;

-- 15. Find total revenue per PC Make.
SELECT Pc_Make,SUM(Sale_Price ) AS Total_Revenue
FROM pc_sales_data
GROUP BY Pc_Make ;


-- 16. Find average Sale Price per Storage Type.

SELECT Storage_Type ,AVG(Sale_Price) AS Average_Sale_Price 
FROM pc_sales_data
GROUP BY Storage_Type;

-- 17. Calculate total revenue per Shop Name.

SELECT Shop_Name, SUM(Sale_Price) AS Total_Revenue
FROM pc_sales_data
GROUP BY Shop_Name;

-- 18. Calculate total revenue per Sales Person Name.

SELECT Sales_Person_Name, SUM(Sale_Price) AS Total_Revenue
FROM pc_sales_data
GROUP BY Sales_Person_Name;



-- 19. Find average Credit Score per Payment Method.

SELECT Payment_Method ,AVG(Credit_Score) AS Average_Credit_Score
FROM pc_sales_data
GROUP BY Payment_Method;

-- 20. Calculate total Cost of Repairs per Sales Person Department.

SELECT Sales_Person_Department, SUM(CAST(Cost_Of_Repairs AS INT)) AS Total_Cost_Of_Repairs
FROM pc_sales_data
GROUP BY Sales_Person_Department;
