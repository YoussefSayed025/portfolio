SELECT
    YEAR(SOH.OrderDate) AS SalesYear,
    PC.Name AS Category,
    SUM(SOD.LineTotal) AS TotalSales,
    RANK() OVER
    (
        PARTITION BY YEAR(SOH.OrderDate)
        ORDER BY SUM(SOD.LineTotal) DESC
    ) AS CategoryRank
FROM Sales.SalesOrderHeader SOH
JOIN Sales.SalesOrderDetail SOD
    ON SOH.SalesOrderID = SOD.SalesOrderID
JOIN Production.Product P
    ON SOD.ProductID = P.ProductID
JOIN Production.ProductSubcategory PSC
    ON P.ProductSubcategoryID = PSC.ProductSubcategoryID
JOIN Production.ProductCategory PC
    ON PSC.ProductCategoryID = PC.ProductCategoryID
GROUP BY
    YEAR(SOH.OrderDate),
    PC.Name
ORDER BY
    SalesYear,
    CategoryRank;