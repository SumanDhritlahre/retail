# 🛍️ Retail Sales Data Analysis

## 📌 Project Overview

This project analyzes retail transaction data to extract actionable business insights using SQL. The dataset includes sales records from a retail store with details such as customer demographics, transaction values, product categories, and timing. As a retail owner, understanding these patterns is essential for optimizing performance, customer retention, and inventory strategy.

---

## 🧾 Dataset Columns
- `transactions_id`: Unique transaction identifier  
- `sale_date`: Date of transaction  
- `sale_time`: Time of transaction  
- `customer_id`: Customer ID  
- `gender`: Gender of the customer  
- `age`: Customer's age  
- `category`: Product category  
- `quantity`: Number of items purchased  
- `price_per_unit`: Price per item  
- `cogs`: Cost of goods sold  
- `total_sale`: Final billed amount per transaction  

---

## 🎯 Business Questions Answered

| #  | Question |
|----|----------|
| 1  | What are the total sales and profit per day? |
| 2  | Which product category has the highest total sales? |
| 3  | What is the average purchase amount per customer? |
| 4  | Which time of day sees the highest sales? |
| 5  | What are the gender-wise spending patterns? |
| 6  | Who are the repeat customers (made multiple purchases)? |
| 7  | Which age group spends the most money? |
| 8  | What is the ROI (Return on Investment) per product category? |
| 9  | What is the average quantity bought per category? |
| 10 | Which weekday generates the highest total sales? |

---

## 🛠️ Tools Used

- **SQL** (MySQL 8+)
- **DB Browser for SQLite** / MySQL Workbench
- *(Optional: Excel/Python for visualizations)*

---

## 📊 Sample Insights

- 📅 **Wednesdays** showed the highest total sales.
- 👩 **Female** customers outspent male customers by 12%.
- 💼 The **"Fashion"** category delivered the highest ROI.
- 🔁 Over **30%** of customers were repeat buyers.
- 👵 Customers aged **51–70** spent more on average than teens or young adults.

---

## 📁 File Structure

```bash
retail-sales-analysis/
├── README.md
├── retail_sales_analysis.sql      # SQL queries
└── retail_sales_sample.csv        # (Optional) Sample data
