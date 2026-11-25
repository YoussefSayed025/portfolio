SELECT [Status ID], [Status Name]
FROM (VALUES
    (1, 'Pending'),
    (2, 'Approved'),
    (3, 'Rejected'),
    (4, 'Completed')
) AS t([Status ID], [Status Name]);
GO