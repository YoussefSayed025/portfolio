USE AdventureWorks2025;
GO

SELECT DISTINCT
    CAST(pi.LocationID AS VARCHAR(10)) + '-'
        + ISNULL(LTRIM(RTRIM(pi.Shelf)), 'N/A') + '-'
        + CAST(ISNULL(pi.Bin, 0) AS VARCHAR(10)) AS [Inventory Location Key],

    pi.LocationID AS [Location ID],
    LTRIM(RTRIM(pi.Shelf)) AS [Shelf],
    pi.Bin AS [Bin]

FROM Production.ProductInventory pi;
GO