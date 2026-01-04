USE AdventureWorks2025

SELECT TOP 5* FROM Sales.SalesTerritory
SELECT TOP 5 * FROM Sales.SalesOrderHeader
SELECT TOP 5 * FROM Sales.Customer


SELECT
    st.Name AS Region, SUM (sordh.TotalDue) AS TotalSale,
    COUNT(DISTINCT sordh.CustomerID) AS CustomerID
FROM Sales.SalesOrderHeader sordh
INNER JOIN Sales.SalesTerritory st
    ON sordh.TerritoryID = st.TerritoryID
GROUP BY st.Name
ORDER BY TotalSale DESC