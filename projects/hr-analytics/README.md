# HR analytics dashboard

Nine-page Power BI report on employee attrition, performance, satisfaction, salaries and distribution, built on an HR dataset of 1,470 employees and 6,710 performance reviews. Built as a team project.

## Business questions
- Which roles, departments and age groups have the highest attrition?
- How do salaries vary by department, education and role?
- What drives employee satisfaction and performance?

## Tools & methodology
Power BI (data model with fPerformanceRating as the fact table, DAX measures, drill-through tooltips) with data preparation documented in `docs/guide-book.pdf`. The full question set is in `docs/analysis-questions.docx`.

## Key findings
- Attrition is highest among sales representatives and recruiters, in the 25-34 age group, and for employees with under 2 years of experience.
- Tech consumes 64% of the salary budget; salary growth is not always tied to tenure.
- Overall satisfaction score is 3.53; HR business partners are most satisfied, tech has the most dissatisfied employees.

## Contents
- `HR Analytics Dashboard.pbix` - the Power BI report (9 pages: Home, Overview, Attrition, Performance vs Training, Satisfaction, Salaries, Employees States, Tooltip, Q&A)
- `data/` - the HR dataset (Employee, PerformanceRating and lookup tables)
- `docs/presentation.pdf` - the project deck
- `docs/analysis-questions.docx` - the analysis question set
- `docs/guide-book.pdf` - the methodology guide

## How to open
Open `HR Analytics Dashboard.pbix` in Power BI Desktop (free), or read `docs/presentation.pdf` for the walkthrough.

Part of [Youssef Sayed Hawass's data portfolio](https://youssefsayed025.github.io/portfolio/).
