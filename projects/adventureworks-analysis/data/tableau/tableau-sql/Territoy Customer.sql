SELECT
    st.Name                     AS [Source],
    CASE
        WHEN c.StoreID IS NULL
        THEN 'Individual'
        ELSE 'Store'
    END                         AS [Target],
    SUM(sod.LineTotal)          AS [Value]
FROM Sales.SalesOrderDetail sod
INNER JOIN Sales.SalesOrderHeader soh
    ON sod.SalesOrderID = soh.SalesOrderID
INNER JOIN Sales.SalesTerritory st
    ON soh.TerritoryID = st.TerritoryID
INNER JOIN Sales.Customer c
    ON soh.CustomerID = c.CustomerID
GROUP BY
    st.Name,
    CASE
        WHEN c.StoreID IS NULL
        THEN 'Individual'
        ELSE 'Store'
    END;