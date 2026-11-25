USE AdventureWorks2025;


WITH AllTransactions AS (
    SELECT *
    FROM Production.TransactionHistoryArchive

    UNION ALL

    SELECT *
    FROM Production.TransactionHistory
)

SELECT
    ProductID AS [Product ID],
    CONVERT(INT, CONVERT(VARCHAR(8), TransactionDate, 112)) AS [Transaction Date Key],
    ReferenceOrderID AS [Reference Order ID],
    ReferenceOrderLineID AS [Reference Order Line ID],

    CASE TransactionType
        WHEN 'W' THEN 'Work Order'
        WHEN 'S' THEN 'Sales Order'
        WHEN 'P' THEN 'Purchase Order'
        ELSE 'Unknown'
    END AS [Transaction Type],
    Quantity AS [Transaction Quantity],
    ActualCost AS [Actual Cost]

FROM AllTransactions;
