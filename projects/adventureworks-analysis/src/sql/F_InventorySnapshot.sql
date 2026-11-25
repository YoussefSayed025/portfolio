USE AdventureWorks2025;
GO

SELECT
    pi.ProductID AS [Product ID],

    CAST(pi.LocationID AS VARCHAR(10)) + '-'
    + ISNULL(LTRIM(RTRIM(pi.Shelf)), 'N/A') + '-'
    + CAST(ISNULL(pi.Bin, 0) AS VARCHAR(10)) AS [Inventory Location Key],

    pi.Quantity AS [Inventory Quantity],

    CONVERT(INT, CONVERT(VARCHAR(8), pi.ModifiedDate, 112)) AS [Snapshot Date Key]

FROM Production.ProductInventory pi;
GO