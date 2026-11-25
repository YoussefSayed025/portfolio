USE AdventureWorks2025;
GO

SELECT
    so.SpecialOfferID AS [Special Offer ID],
    so.Description AS [Offer Description],
    so.Type AS [Offer Type],
    so.Category AS [Offer Category],
    so.StartDate AS [Offer Start Date],
    so.EndDate AS [Offer End Date],
    so.DiscountPct AS [Discount Percentage],
    so.MinQty AS [Minimum Quantity],
    so.MaxQty AS [Maximum Quantity]

FROM Sales.SpecialOffer so;
GO