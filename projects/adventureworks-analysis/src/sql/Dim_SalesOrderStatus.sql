SELECT [Status ID], [Status Name]
FROM (VALUES
    (1, 'In Process'),
    (2, 'Approved'),
    (3, 'Backordered'),
    (4, 'Rejected'),
    (5, 'Shipped'),
    (6, 'Cancelled')
) AS t([Status ID], [Status Name]);
GO