# Profit and return analysis (NTI graduation project)

Profitability and product-return analysis for a retail chain, combining Python, Power Query and Power BI. Strong sales figures hid a real profitability problem; the project diagnoses where profit leaks and quantifies the damage from returns.

## The 3 business questions
1. Is there a profitability problem?
2. If so, what are the root causes?
3. What is the total financial impact of product returns on profit?

## Architecture
Python (cleaning, merging, EDA) -> Power Query (shaping) -> Power BI (calendar-table model, 8-page report: Home, Overview, Profit Trend, Profit Drivers, Customers, Returns Impact, Net Profit, Q&A).

## Key findings
- Profitability is a real problem: profit rose from 1997 to 1998, then dropped sharply. It is uneven by region: North West makes most profit (over $60K) while Central West is near zero (about $2K). Some high-selling products run on very low margins.
- The business leans heavily on one market: most profit comes from customers in the United States ($105K). Profit is similar across gender and marital status. Supermarket and Deluxe Supermarket are the most profitable store types.
- Returns cut profit by about $17.4K a year at a 7.82% return rate. Store 17 and Store 13 have the most returns.

## Recommendations (with estimated impact)
- Optimize the product portfolio: review pricing and supplier costs for high-revenue, low-margin "danger zone" products (+$5K-$8K potential annual profit); promote high-margin "workhorse" products.
- Region- and store-specific improvement plan, starting with Central West (+$10K+ potential) and the return hotspots Store 17 and Store 13.
- Track return reasons at the point of sale and tighten return policy in the worst categories to bring down the $17.42K annual loss.

## Contents
- `grad-project.pbix` - the Power BI report (8 pages)
- `src/grad-project.ipynb` - the Python cleaning and analysis notebook
- `docs/presentation.pdf` - the 54-slide project deck
- `docs/data-dictionary.md` - the source tables, column by column
- `data/` - the source data: Sales 1997.csv, Sales 1998.csv, Sales 1999.csv, Customers.csv, Products.csv, Stores.csv, Region.csv, Returns.csv
- `pages/` - dashboard page screenshots

## How to run
1. Keep the CSVs in `data/` and update the paths at the top of `src/grad-project.ipynb`.
2. Run the notebook (pandas, numpy, seaborn, matplotlib, scikit-learn).
3. Open `grad-project.pbix` in Power BI Desktop. No Power BI? Browse `pages/` or `docs/presentation.pdf`.

Team AdventureWorks analysis repo: https://github.com/mostafahossam-21/DEPI-Graduation-Project_AdventureWorks_Analysis

Part of [Youssef Sayed Hawass's data portfolio](https://youssefsayed025.github.io/portfolio/).
