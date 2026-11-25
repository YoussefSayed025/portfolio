USE AdventureWorks2025;
GO

SELECT
    sp.BusinessEntityID AS [Sales Person ID],
    p.FirstName AS [First Name],
    p.MiddleName AS [Middle Name],
    p.LastName AS [Last Name],
    sp.TerritoryID AS [Territory ID],
    sp.SalesQuota AS [Sales Quota],
    sp.Bonus AS [Bonus],
    sp.CommissionPct AS [Commission Pct],
    sp.SalesYTD AS [Sales YTD],
    sp.SalesLastYear AS [Sales Last Year]
FROM Sales.SalesPerson sp
LEFT JOIN Person.Person p
    ON sp.BusinessEntityID = p.BusinessEntityID;
GO