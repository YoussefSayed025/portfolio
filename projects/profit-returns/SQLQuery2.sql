SELECT p.product_name, SUM(s.quantity) AS total_sold
FROM Sales s
JOIN Products p ON s.product_id = p.product_id
GROUP BY p.product_name;

SELECT TOP 5 p.product_name, SUM(s.quantity) AS total_sold
FROM Sales s
JOIN Products p ON s.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC;

SELECT st.store_name, SUM(s.quantity) AS total_sales
FROM Sales s
JOIN Stores st ON s.store_id = st.store_id
GROUP BY st.store_name;

SELECT c.first_name, c.last_name, SUM(s.quantity) AS total_bought
FROM Sales s
JOIN Customers c ON s.customer_id = c.customer_id
GROUP BY c.first_name, c.last_name
ORDER BY total_bought DESC;

SELECT p.product_name, SUM(r.quantity) AS total_returns
FROM Returns r
JOIN Products p ON r.product_id = p.product_id
GROUP BY p.product_name;

SELECT product_name,
       (product_retail_price - product_cost) AS profit
FROM Products
ORDER BY profit DESC;

SELECT customer_country, COUNT(*) AS total_customers
FROM Customers
GROUP BY customer_country;

SELECT r.sales_region, SUM(s.quantity) AS total_sales
FROM Sales s
JOIN Stores st ON s.store_id = st.store_id
JOIN Region r ON st.region_id = r.region_id
GROUP BY r.sales_region;

SELECT transaction_date, SUM(quantity) AS total_sales
FROM Sales
GROUP BY transaction_date
ORDER BY transaction_date;