USE AdventureWorks2025;
GO

WITH PurchaseTotals AS (
    SELECT
        pod.PurchaseOrderDetailID,
        pod.PurchaseOrderID,
        poh.VendorID,
        poh.ShipMethodID,
        poh.Status,
        poh.OrderDate,
        poh.ShipDate,
        pod.DueDate,
        pod.ProductID,
        pod.OrderQty,
        pod.ReceivedQty,
        pod.RejectedQty,
        pod.StockedQty,
        pod.UnitPrice,
        pod.LineTotal,
        poh.TaxAmt,
        poh.Freight,
        SUM(pod.LineTotal) OVER (PARTITION BY pod.PurchaseOrderID) AS OrderTotal
    FROM Purchasing.PurchaseOrderDetail pod
    INNER JOIN Purchasing.PurchaseOrderHeader poh
        ON pod.PurchaseOrderID = poh.PurchaseOrderID
)

SELECT
    PurchaseOrderDetailID AS [Purchase Order Detail ID],
    PurchaseOrderID AS [Purchase Order ID],
    VendorID AS [Vendor ID],
    ShipMethodID AS [Ship Method ID],
    Status AS [Status ID],

    CONVERT(INT, CONVERT(VARCHAR(8), OrderDate, 112)) AS [Order Date Key],
    CONVERT(INT, CONVERT(VARCHAR(8), ShipDate, 112)) AS [Ship Date Key],
    CONVERT(INT, CONVERT(VARCHAR(8), DueDate, 112)) AS [Due Date Key],

    ProductID AS [Product ID],

    OrderQty AS [Quantity Ordered],
    ReceivedQty AS [Quantity Received],
    RejectedQty AS [Quantity Rejected],
    StockedQty AS [Quantity Stocked],

    UnitPrice AS [Unit Price],
    LineTotal AS [Line Total],

    ROUND(TaxAmt * (LineTotal * 1.0 / NULLIF(OrderTotal, 0)), 3) AS [Allocated Tax],
    ROUND(Freight * (LineTotal * 1.0 / NULLIF(OrderTotal, 0)), 3) AS [Allocated Freight]

FROM PurchaseTotals;
GO