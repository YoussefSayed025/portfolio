USE AdventureWorks2025;
GO

WITH OrderTotals AS (
    SELECT
        sd.SalesOrderDetailID,
        sd.SalesOrderID,
        sh.CustomerID,
        sh.SalesPersonID,
        sh.TerritoryID,
        sh.ShipMethodID,
        sh.CreditCardID,
        sh.Status,
        sh.OrderDate,
        sh.DueDate,
        sh.ShipDate,
        sd.ProductID,
        sd.SpecialOfferID,
        sd.OrderQty,
        sd.UnitPrice,
        sd.UnitPriceDiscount,
        sd.LineTotal,
        sh.TaxAmt,
        sh.Freight,
        SUM(sd.LineTotal) OVER (PARTITION BY sd.SalesOrderID) AS OrderTotal
    FROM Sales.SalesOrderDetail sd
    INNER JOIN Sales.SalesOrderHeader sh
        ON sd.SalesOrderID = sh.SalesOrderID
)

SELECT
    SalesOrderDetailID AS [Sales Order Detail ID],
    SalesOrderID AS [Sales Order ID],
    CustomerID AS [Customer ID],
    SalesPersonID AS [Sales Person ID],
    TerritoryID AS [Territory ID],
    ShipMethodID AS [Ship Method ID],
    CreditCardID AS [Credit Card ID],
    Status AS [Status ID],

    CONVERT(INT, CONVERT(VARCHAR(8), OrderDate, 112)) AS [Order Date Key],
    CONVERT(INT, CONVERT(VARCHAR(8), DueDate, 112)) AS [Due Date Key],
    CONVERT(INT, CONVERT(VARCHAR(8), ShipDate, 112)) AS [Ship Date Key],

    ProductID AS [Product ID],
    SpecialOfferID AS [Special Offer ID],

    OrderQty AS [Order Quantity],
    UnitPrice AS [Unit Price],
    UnitPriceDiscount AS [Unit Price Discount],
    LineTotal AS [Line Total],

    ROUND(TaxAmt * (LineTotal / NULLIF(OrderTotal, 0)), 3) AS [Allocated Tax],
    ROUND(Freight * (LineTotal / NULLIF(OrderTotal, 0)), 3) AS [Allocated Freight]

FROM OrderTotals;
GO