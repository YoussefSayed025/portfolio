USE AdventureWorks2025;
GO

SELECT
    p.ProductID AS [Product ID],
    p.ProductSubcategoryID AS [Subcategory ID],
    p.Name AS [Product Name],
    p.ProductNumber AS [Product Number],
    p.MakeFlag AS [Is Manufactured],

    p.Class            AS [Product Class],
    p.Style            AS [Product Style],
    p.Color            AS [Product Color],

    pc.Name           AS [Category Name],
    psc.Name          AS [Subcategory Name],
    pm.Name           AS [Product Model],

    p.Size            AS [Product Size],
    um1.Name          AS [Size Unit Measure],
    um2.Name          AS [Weight Unit Measure],

    p.StandardCost AS [Standard Cost],
    p.ListPrice AS [List Price],
    p.DaysToManufacture AS [Days To Manufacture],

    ISNULL(p.ProductLine, 'Unknown') AS [Product Line],
    p.SellStartDate AS [Sell Start Date],
    p.SellEndDate AS [Sell End Date],

    CASE
        WHEN p.SellEndDate IS NULL THEN 'Active'
        ELSE 'Discontinued'
    END AS [Product Status]

FROM Production.Product p
LEFT JOIN Production.ProductSubcategory psc
    ON p.ProductSubcategoryID = psc.ProductSubcategoryID
LEFT JOIN Production.ProductCategory pc
    ON psc.ProductCategoryID = pc.ProductCategoryID
LEFT JOIN Production.ProductModel pm
    ON p.ProductModelID = pm.ProductModelID
LEFT JOIN Production.UnitMeasure um1
    ON p.SizeUnitMeasureCode = um1.UnitMeasureCode
LEFT JOIN Production.UnitMeasure um2
    ON p.WeightUnitMeasureCode = um2.UnitMeasureCode;
GO