USE AdventureWorks2025;
GO

SELECT
    sm.ShipMethodID AS [Ship Method ID],
    sm.Name AS [Ship Method Name],
    sm.ShipBase AS [Ship Base Cost],
    sm.ShipRate AS [Ship Rate]

FROM Purchasing.ShipMethod sm;
GO