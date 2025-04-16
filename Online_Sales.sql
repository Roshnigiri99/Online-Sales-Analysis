CREATE database onlinesales_db;
USE onlinesales_db;
-- Monthly revenue and order volume

SELECT 
    EXTRACT(YEAR FROM InvoiceDate) AS order_year,
    EXTRACT(MONTH FROM InvoiceDate) AS order_month,
    COUNT(DISTINCT InvoiceNo) AS order_volume,
    SUM((Quantity * UnitPrice) - Discount) AS total_revenue
FROM 
    onlinesales_db.online_sales
GROUP BY 
    EXTRACT(YEAR FROM InvoiceDate), 
    EXTRACT(MONTH FROM InvoiceDate)
ORDER BY 
    order_year, order_month;
 
 -- Revenue and volume for 2020
SELECT 
    EXTRACT(YEAR FROM InvoiceDate) AS order_year,
    EXTRACT(MONTH FROM InvoiceDate) AS order_month,
    COUNT(DISTINCT InvoiceNo) AS order_volume,
    SUM((Quantity * UnitPrice) - Discount) AS total_revenue
FROM 
    onlinesales_db.online_sales
WHERE 
    EXTRACT(YEAR FROM InvoiceDate) = 2020
GROUP BY 
    EXTRACT(YEAR FROM InvoiceDate), 
    EXTRACT(MONTH FROM InvoiceDate)
ORDER BY 
    order_month;
    
-- Top 5 revenue months
SELECT 
    EXTRACT(YEAR FROM InvoiceDate) AS order_year,
    EXTRACT(MONTH FROM InvoiceDate) AS order_month,
    SUM((Quantity * UnitPrice) - Discount) AS total_revenue
FROM 
    onlinesales_db.online_sales
GROUP BY 
    EXTRACT(YEAR FROM InvoiceDate), 
    EXTRACT(MONTH FROM InvoiceDate)
ORDER BY 
    total_revenue DESC
LIMIT 5;

-- Revenue by country for 2020
SELECT 
    Country,
    SUM((Quantity * UnitPrice) - Discount) AS revenue
FROM 
    onlinesales_db.online_sales
WHERE 
    InvoiceDate BETWEEN '2020-01-01' AND '2020-12-31'
GROUP BY 
    Country
ORDER BY 
    revenue DESC;


    
