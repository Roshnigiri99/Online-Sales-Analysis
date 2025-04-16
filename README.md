**TASK 6**
# Sales Data Analysis with SQL

This project contains SQL queries for analyzing the `online_sales` table from the `onlinesales_db` database. The goal is to generate insights such as monthly revenue, order volume, top-performing months, and country-wise sales performance.

## Dataset Columns

- `order_id`
- `order_date`
- `quantity`
- `unitprice`
- `discount`
- `country`
- Other fields like `category`, `saleschannel`, `returnstatus`, etc.

## Queries Included

1. **Monthly Revenue and Volume**  
   Calculates total revenue and unique order count for each month.

2. **Revenue and Volume for 2020**  
   Filters and analyzes data specifically for the year 2020.

3. **Top 5 Revenue Months**  
   Identifies the five months with the highest revenue.

4. **Revenue by Country (2020)**  
   Displays total revenue by country for the year 2020.

## SQL Concepts Used

- `EXTRACT(MONTH FROM order_date)`  
- `GROUP BY` year and month  
- `SUM()` for revenue  
- `COUNT(DISTINCT order_id)` for volume  
- `ORDER BY` for sorting  

- All queries use the `online_sales` table in the `onlinesales_db` database.
- Adjust column and table names if your schema is different.
- Make sure date formats match your SQL environment.
