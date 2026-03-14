## ETL Decisions

# Decision 1 — Standardizing Date Formats
Problem: The raw dataset contains inconsistent date formats such as "29/08/2023", "12-12-2023", and "2023-02-05". This inconsistency can cause issues when performing time-based analysis.

Resolution: All dates were converted into a standardized ISO format (YYYY-MM-DD) before loading them into the dim_date table.

# Decision 2 — Handling Category Inconsistency
Problem: Product categories may appear in different cases such as "electronics", "Electronics", or "ELECTRONICS".

Resolution: All category values were standardized to a consistent title case format (e.g., "Electronics") during the transformation stage.

# Decision 3 — Calculating Revenue
Problem: The raw dataset stores units_sold and unit_price separately but does not contain total revenue.

Resolution: Revenue was calculated during the transformation process using the formula:
revenue = units_sold × unit_price
This value was then stored in the fact_sales table for easier analytical queries.
