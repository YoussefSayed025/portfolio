SELECT
    DATEFROMPARTS(
        YEAR(soh.OrderDate),
        MONTH(soh.OrderDate),
        1
    )                                   AS [Month],
    SUM(sod.LineTotal)                  AS [Total Sales],
    SUM(sod.LineTotal)
    - SUM(sod.OrderQty * p.StandardCost)
                                        AS [Profit]
FROM Sales.SalesOrderDetail sod
INNER JOIN Sales.SalesOrderHeader soh
    ON sod.SalesOrderID = soh.SalesOrderID
INNER JOIN Production.Product p
    ON sod.ProductID = p.ProductID
GROUP BY
    DATEFROMPARTS(
        YEAR(soh.OrderDate),
        MONTH(soh.OrderDate),
        1
    )
ORDER BY [Month];