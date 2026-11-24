# Data dictionary - Bicycle shop sales

One table: `Sales Data` (700 rows, one row per product-customer-segment-date line). File: `data/Sales Data.xlsx` (the original dataset; no raw version exists).

| Column | Type | Meaning | Notes |
| --- | --- | --- | --- |
| Segment | Text | Customer segment | Government, Small Business, Enterprise, Midmarket, Channel Partners |
| Customer_ID | Text | Unique customer identifier | Format CUST_ID_###, 500 customers |
| Units Sold | Integer | Number of units sold in the row | 1.13M units in total |
| Sales | Number | Revenue for the row | Units Sold x unit price. In the xlsx this column is a formula (Units Sold x unit price). Total $118.73M |
| Profit | Number | Profit for the row | Total $16.89M (14.23% margin) |
| Date | Date | Transaction date | 2023-01-02 to 2024-12-31 |
| Year | Integer | Calendar year of the sale | In the xlsx derived with =YEAR(Date) |
| Product_Name | Text | Product | Paseo, VTT, Velo, Amarilla, Montana, Carretera |
| Country | Text | Market | USA, Canada, England, France, Germany, Italy, India, Japan |

Quality checks: no blank cells, no duplicate rows, dashboard totals recompute exactly from this data.
