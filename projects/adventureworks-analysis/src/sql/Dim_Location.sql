USE AdventureWorks2025;
GO

SELECT
    l.LocationID AS [Location ID],
    l.Name AS [Location Name],
    l.CostRate AS [Cost Rate],
    l.Availability AS [Availability]

FROM Production.Location l;
GO