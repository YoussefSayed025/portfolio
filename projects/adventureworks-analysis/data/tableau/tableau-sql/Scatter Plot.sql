SELECT
    p.Name                              AS [Product Name],
    pc.Name                             AS [Category],
    AVG(sod.UnitPrice)                  AS [Avg Unit Price],
    SUM(sod.LineTotal)
    - SUM(sod.OrderQty * p.StandardCost) AS [Profit],
    SUM(sod.OrderQty)                   AS [Total Quantity]
FROM Sales.SalesOrderDetail sod
INNER JOIN Production.Product p
    ON sod.ProductID = p.ProductID
INNER JOIN Production.ProductSubcategory psc
    ON p.ProductSubcategoryID = psc.ProductSubcategoryID
INNER JOIN Production.ProductCategory pc
    ON psc.ProductCategoryID = pc.ProductCategoryID
INNER JOIN Sales.SalesOrderHeader soh
    ON sod.SalesOrderID = soh.SalesOrderID
GROUP BY
    p.Name,
    pc.Name
ORDER BY
    [Profit] DESC;