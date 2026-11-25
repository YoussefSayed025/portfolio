# Data dictionary - Profit and return analysis

Source files in `data/`. Schemas verified against the actual files (headers + row counts) and the cleaning in `src/grad-project.ipynb`.

## Sales - `Sales 1997.csv` (86,837 rows), `Sales 1998.csv` (182,883 rows), `Sales 1999.csv` (86,837 rows)
One row per product-customer-store-date sale. The 1999 file has 5 trailing empty columns (the notebook drops `Unnamed` columns).
| Column | Type | Meaning |
| --- | --- | --- |
| transaction_date | date | Date of the sale (parsed from text) |
| stock_date | date | Stock/reorder date for the sold item |
| product_id | int | FK to Products |
| customer_id | int | FK to Customers |
| store_id | int | FK to Stores |
| quantity | int | Units sold |

## Customers - `Customers.csv` (10,281 rows)
| Column | Type | Meaning |
| --- | --- | --- |
| customer_id | int | Primary key |
| customer_acct_num | int | Account number |
| first_name / last_name | text | Customer name (rows with missing last_name dropped in cleaning) |
| customer_address / customer_city / customer_state_province / customer_postal_code / customer_country | text / int | Address fields |
| birthdate | date | Date of birth (parsed from text) |
| marital_status | text | Married / single |
| yearly_income | text | Income band |
| gender | text | Gender |
| total_children / num_children_at_home | int | Children counts |
| education | text | Education level |
| acct_open_date | date | Account opening date (parsed from text) |
| member_card | text | Loyalty card tier |
| occupation | text | Job category |
| homeowner | text | Owns home (Y/N) |

## Stores - `Stores.csv` (24 rows)
| Column | Type | Meaning |
| --- | --- | --- |
| store_id | int | Primary key |
| region_id | int | FK to Region |
| store_type / store_name | text | Type (Supermarket, Deluxe Supermarket, Small Grocery, Gourmet Supermarket) and name |
| store_street_address / store_city / store_state / store_country | text | Location |
| store_phone | text | Phone |
| first_opened_date / last_remodel_date | date | Store history (parsed from text) |
| total_sqft / grocery_sqft | int | Store size |

## Products - `Products.csv` (1,560 rows)
| Column | Type | Meaning |
| --- | --- | --- |
| product_id | int | Primary key |
| product_brand / product_name | text | Brand and product |
| product_sku | int | SKU |
| product_retail_price | float | Selling price |
| product_cost | float | Cost price (margin = retail - cost) |
| product_weight | float | Weight |
| recyclable / low_fat | bool | Flags (dropped from the analysis table) |

## Region - `Region.csv` (109 rows)
| Column | Type | Meaning |
| --- | --- | --- |
| region_id | int | Primary key |
| sales_district / sales_region | text | District and region names |

## Returns - `Returns.csv` (7,087 rows; converted from the sent Returns.xlsx, same data)
| Column | Type | Meaning |
| --- | --- | --- |
| return_date | date | Date of the return |
| product_id | int | FK to Products |
| store_id | int | FK to Stores |
| quantity | int | Units returned |

## Cleaning applied (notebook)
Appended the yearly Sales files, dropped empty `Unnamed` columns, parsed date columns, dropped rows with missing key names, removed full-row duplicates across all tables, merged into one denormalized analysis table, renamed quantity columns to quantity_sold / quantity_returned, dropped high-correlation columns, treated IQR outliers, then label-encoded and min-max scaled for the analysis section.
