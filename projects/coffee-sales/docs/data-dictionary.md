# Data dictionary - Coffee sales analysis & forecasting

## Source
The report reads a single flat table, `CoffeeSales_dataset` (coffee product sales covering 2023-2024). The underlying dataset file is not included in this repository; the SQL preparation queries are documented in `MY SQL Queries.docx`.

## Columns
| Column | Type | Meaning |
|---|---|---|
| Date | date | Transaction date (2023-2024). |
| Product | text | Coffee product (e.g. Colombian, Costa Rica, Ethiopian, Guatemala, Brazilian). |
| Quantity | whole number | Units sold. |
| Sales Amount | decimal | Sales value for the line. |
| Used_Discount | boolean | Whether a discount was applied (50.7% of sales). |
| Discount_Amount | decimal | Discount value applied. |

## Measures (DAX)
| Measure | Meaning |
|---|---|
| Total Price | Total price across all sales. |
| Total Quantity | Total units sold (19K). |
| Total Sales Amount | Total sales value (701K). |
| Last Month Sales Dynamic | Latest-month sales vs the previous month. |
| Last Month Price Dynamic | Latest-month price vs the previous month. |
| Last Month Quantity Dynamic | Latest-month quantity vs the previous month. |

Note: inside the .pbix the total-sales measure is spelled "Totsl Sales Amount"; the card titles on the dashboard show the correct spelling.
