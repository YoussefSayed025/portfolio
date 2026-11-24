CREATE TABLE Sales (
    transaction_date DATE,
    stock_date DATE,
    product_id INT,
    customer_id INT,
    store_id INT,
    quantity INT
);
SELECT DB_NAME();

INSERT INTO dbo.Sales (
    transaction_date,
    stock_date,
    product_id,
    customer_id,
    store_id,
    quantity
)
SELECT 
    transaction_date,
    stock_date,
    product_id,
    customer_id,
    store_id,
    quantity
FROM dbo.[Sales 1997]

UNION ALL

SELECT 
    transaction_date,
    stock_date,
    product_id,
    customer_id,
    store_id,
    quantity
FROM dbo.[Sales 1998]

UNION ALL

SELECT 
    transaction_date,
    stock_date,
    product_id,
    customer_id,
    store_id,
    quantity
FROM dbo.[Sales 1999];


SELECT COUNT(*) FROM dbo.Sales;




SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Sales';




