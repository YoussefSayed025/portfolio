SELECT
    st.Name                             AS [Territory],
    MONTH(soh.OrderDate)                AS [Month Number],
    DATENAME(MONTH, soh.OrderDate)      AS [Month Name],
    YEAR(soh.OrderDate)                 AS [Year],
    SUM(sod.LineTotal)                  AS [Total Sales]
FROM Sales.SalesOrderDetail sod
INNER JOIN Sales.SalesOrderHeader soh
    ON sod.SalesOrderID = soh.SalesOrderID
INNER JOIN Sales.SalesTerritory st
    ON soh.TerritoryID = st.TerritoryID
GROUP BY
    st.Name,
    MONTH(soh.OrderDate),
    DATENAME(MONTH, soh.OrderDate),
    YEAR(soh.OrderDate)
ORDER BY
    [Year],
    [Month Number];