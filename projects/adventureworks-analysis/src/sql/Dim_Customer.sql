USE AdventureWorks2025;
GO

SELECT
    c.CustomerID AS [Customer ID],
    c.TerritoryID AS [Territory ID],

    p.FirstName AS [First Name],
    p.MiddleName AS [Middle Name],
    p.LastName AS [Last Name],
    p.PersonType AS [Person Type],

    s.Name AS [Store Name]

FROM Sales.Customer c
LEFT JOIN Person.Person p
    ON c.PersonID = p.BusinessEntityID
LEFT JOIN Sales.Store s
    ON c.StoreID = s.BusinessEntityID;
GO