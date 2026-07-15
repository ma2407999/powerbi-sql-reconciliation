# Power BI and SQL Server Data Reconciliation

## Overview
A data validation framework that cross-checks Power BI dashboard 
outputs against SQL Server source data to ensure accuracy and 
reliability of business reporting.

## Problem Statement
Business dashboards require continuous validation to ensure visuals 
accurately reflect underlying database values. Discrepancies between 
reported figures and source data can lead to incorrect business decisions.

## Tools Used
- Power BI (dashboard development and visualization)
- SQL Server (source data)
- SQL (complex joins and aggregation queries)

## Process
1. Identified key metrics displayed in Power BI dashboards
2. Wrote SQL queries replicating the same calculations independently
3. Compared dashboard outputs against SQL query results
4. Investigated and resolved discrepancies using multi-table joins
5. Documented reconciliation findings and corrective actions

## Key SQL Operations
- Multi-table JOIN queries (INNER, LEFT, multiple joins)
- Aggregations matching Power BI measure logic
- Subqueries for complex metric replication
- Row-level comparison queries for discrepancy identification

## Outcome
Achieved full reconciliation between Power BI dashboard visuals and 
SQL Server source data, ensuring data accuracy and stakeholder confidence 
in reported figures.
