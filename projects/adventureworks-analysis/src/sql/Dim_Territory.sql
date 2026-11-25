USE AdventureWorks2025;
GO

SELECT
    t.TerritoryID AS [Territory ID],
    t.Name AS [Territory Name],
    t.CountryRegionCode AS [Country Region Code],
    t.[Group] AS [Territory Group],
    t.SalesYTD AS [Sales YTD],
    t.SalesLastYear AS [Sales Last Year]

FROM Sales.SalesTerritory t;
GO