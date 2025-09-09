select * from  
`amazon_sales_data 2025`;

-- Total Revenue

SELECT SUM(`Total Sales`) AS Total_Revenue
FROM `amazon_sales_data 2025`
WHERE Status = 'Completed';

-- Average Order Value

SELECT AVG(`Total Sales`) AS Avg_Order_Value
FROM `amazon_sales_data 2025`
WHERE Status = 'Completed';

-- Top 10 best-selling products by quantity
SELECT
    Product,
    SUM(quantity) AS total_quantity_sold
FROM
    `amazon_sales_data 2025`
GROUP BY
    Product
ORDER BY
    total_quantity_sold DESC
LIMIT 10;

-- Top 5 best-selling categories by quantity
SELECT
    Category,
    SUM(quantity) AS total_quantity_sold
FROM
    `amazon_sales_data 2025`
GROUP BY
    Category
ORDER BY
    total_quantity_sold DESC
LIMIT 5;

-- Top 10 Customers by Revenue

SELECT `Customer Name`, SUM(`Total Sales`) AS Revenue
FROM `amazon_sales_data 2025`
GROUP BY `Customer Name`
ORDER BY Revenue DESC
LIMIT 10;

-- Top 10 Locations by Revenue

SELECT `Customer Location`, SUM(`Total Sales`) AS Revenue
FROM `amazon_sales_data 2025`
GROUP BY `Customer Location`
ORDER BY Revenue DESC
LIMIT 10;

-- Payment Method Usage

SELECT `Payment Method`, COUNT(`Order ID`) AS Order_Count
FROM `amazon_sales_data 2025`
GROUP BY `Payment Method`
ORDER BY Order_Count DESC;

-- Daily Revenue Trend

SELECT Date, SUM(`Total Sales`) AS Daily_Revenue
FROM `amazon_sales_data 2025`
WHERE Status = 'Completed'
GROUP BY Date
ORDER BY STR_TO_DATE(Date, '%d-%m-%y');

-- Order Status Distribution

SELECT Status, COUNT(`Order ID`) AS Order_Count
FROM `amazon_sales_data 2025`
GROUP BY Status;

-- Revenue by Category Over Time

SELECT Date, Category, SUM(`Total Sales`) AS Category_Revenue
FROM `amazon_sales_data 2025`
WHERE Status = 'Completed'
GROUP BY Date, Category
ORDER BY STR_TO_DATE(Date, '%d-%m-%y'), Category;

















