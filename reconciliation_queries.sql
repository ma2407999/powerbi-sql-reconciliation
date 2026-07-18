-- ================================================
-- Power BI vs SQL Server Reconciliation Queries
-- Project: Superstore Sales Performance Dashboard
-- ================================================

-- 1. TOTAL SALES RECONCILIATION
-- Validates Power BI card: 2.30M
SELECT 
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM Orders1;

-- 2. TOTAL PROFIT RECONCILIATION
-- Validates Power BI card: 286.40K
SELECT 
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM Orders1;

-- 3. PROFIT MARGIN % RECONCILIATION
-- Validates Power BI card: 12.47%
SELECT 
    ROUND((SUM(Profit) / SUM(Sales)) * 100, 2) AS Profit_Margin_Pct
FROM Orders1;

-- 4. TOTAL ORDERS RECONCILIATION
-- Validates Power BI card: 5K
SELECT 
    COUNT(DISTINCT Order_ID) AS Total_Orders
FROM Orders1;

-- 5. SALES BY CATEGORY RECONCILIATION
-- Validates bar chart
SELECT 
    Category,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM Orders1
GROUP BY Category
ORDER BY Total_Sales DESC;

-- 6. SALES BY YEAR RECONCILIATION
-- Validates line chart
SELECT 
    YEAR(Order_Date) AS Year,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM Orders1
GROUP BY YEAR(Order_Date)
ORDER BY Year ASC;

-- 7. SALES BY REGION RECONCILIATION
-- Validates map bubbles
SELECT 
    Region,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM Orders1
GROUP BY Region
ORDER BY Total_Sales DESC;

-- 8. SALES BY SEGMENT RECONCILIATION
-- Validates slicer segments
SELECT 
    Segment,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM Orders1
GROUP BY Segment
ORDER BY Total_Sales DESC;