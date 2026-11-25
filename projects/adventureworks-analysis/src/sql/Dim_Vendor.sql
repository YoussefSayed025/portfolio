USE AdventureWorks2025;
GO

SELECT
    v.BusinessEntityID AS [Vendor ID],
    v.Name AS [Vendor Name],
    v.CreditRating AS [Credit Rating],
    v.ActiveFlag AS [Is Active],
    v.PreferredVendorStatus AS [Preferred Vendor Status]

FROM Purchasing.Vendor v;
GO