-- Retail Sales Analysis SQL Report

-- 1. Total Sales and Profit per Day
SELECT sale_date, 
       SUM(total_sale) AS total_sales, 
       SUM(total_sale - cogs) AS profit_per_day
FROM retail_sales
GROUP BY sale_date;

-- 2. Product Category with Highest Sales Overall
SELECT category, SUM(total_sale) AS total_sales
FROM retail_sales
GROUP BY category
ORDER BY total_sales DESC
LIMIT 1;

-- 3. Average Purchase Amount per Customer
SELECT customer_id, ROUND(AVG(total_sale), 2) AS avg_sales
FROM retail_sales
GROUP BY customer_id;

-- 4. Time of Day with Highest Number of Sales (by revenue)
SELECT sale_time, SUM(total_sale) AS total_sales
FROM retail_sales
GROUP BY sale_time
ORDER BY total_sales DESC
LIMIT 1;

-- 5. Gender-wise Spending Pattern
SELECT gender, 
       SUM(total_sale) AS total_sales, 
       COUNT(DISTINCT customer_id) AS gender_count
FROM retail_sales
GROUP BY gender;

-- 6. Repeating Customers (more than one transaction)
SELECT customer_id, 
       SUM(total_sale) AS total_sales, 
       COUNT(*) AS transaction_count
FROM retail_sales
GROUP BY customer_id
HAVING transaction_count > 1;

-- 7. Age Group Spending Analysis
SELECT 
  CASE 
    WHEN age BETWEEN 12 AND 19 THEN 'TEEN'
    WHEN age BETWEEN 20 AND 50 THEN 'ADULT'
    WHEN age BETWEEN 51 AND 70 THEN 'ELDERLY'
    ELSE 'SUPER SENIOR'
  END AS age_description,
  SUM(total_sale) AS total_sales
FROM retail_sales
GROUP BY age_description
ORDER BY total_sales DESC
LIMIT 1;

-- 8. Return on Investment (ROI) per Category
SELECT category, 
       SUM(total_sale - cogs) / SUM(cogs) AS roi
FROM retail_sales
GROUP BY category
ORDER BY roi DESC;

-- 9. Average Quantity Purchased per Transaction by Category
SELECT category, ROUND(AVG(quantity), 0) AS avg_quantity
FROM retail_sales
GROUP BY category;

-- 10. Day of the Week with Highest Total Sales
SELECT DAYNAME(sale_date) AS weekday, 
       SUM(total_sale) AS total_sales
FROM retail_sales
GROUP BY weekday
ORDER BY total_sales DESC;
