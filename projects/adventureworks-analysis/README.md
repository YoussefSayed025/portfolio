# AdventureWorks 2025 analysis (DEPI graduation project)

End-to-end analysis of AdventureWorks sales operations and supply chain: 12 dimension tables and 4 fact tables cleaned with SQL and Python, modeled in Power BI, with a Tableau companion analysis. Team Insightfy graduation project (DEPI): Youssef Sayed Tolba, Mariam Abd El Baki Mohamed, Mostafa Mohamed Shaban, Mostafa Hossam Ismail and team.

## Business questions
- How have operating costs impacted profit, and are sales and procurement balanced?
- Which product categories and models drive revenue and profit?
- How do sales trend over time, and what does the forecast show?

## Tools & methodology
SQL and Python for cleaning and modeling (star schema with F_Sales, F_Transaction_History, F_Purchasing and F_Inventory_Snapshot fact tables), Power BI for the dashboard, Tableau for companion views. Full methodology in `docs/Documentation.pdf` and the question set in `docs/Project-Description.pdf`.

## Key findings
- $9M net profit on $100M sales (9% margin): high costs absorb 91% of revenue.
- Bikes dominate revenue ($94.65M, 86.17%); Mountain-200 models are the profit engine while Road-250 models lose money.
- Sales grew 2022-2024 but dipped in 2025.

## Contents
- `AdventureWorks Dashboard.pbix` - the Power BI report
- `docs/presentation.pdf` / `docs/DEPI-Final-Project.pptx` - the 77-slide graduation deck
- `docs/Documentation.pdf`, `docs/Project-Description.pdf`, `docs/DEPI-team.xlsx`
- `data/csv/` - 12 dimension + 4 fact tables
- `data/excel/FinalProject.xlsx` - the analysis workbook
- `data/tableau/` - Tableau extracts and queries
- `src/sql/` - 12 table-creation/cleaning scripts
- `src/python/` - 15 cleaning and transformation notebooks
- `pages/` - dashboard screenshots

## How to open
Open `AdventureWorks Dashboard.pbix` in Power BI Desktop (free), or read `docs/presentation.pdf`.

Part of [Youssef Sayed Hawass's data portfolio](https://youssefsayed025.github.io/portfolio/).
