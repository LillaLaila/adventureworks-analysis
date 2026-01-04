USE AdventureWorks2025

SELECT TOP 5* FROM Sales.SalesTerritory
SELECT TOP 5 * FROM Sales.SalesOrderHeader
SELECT * FROM Sales.Customer
SELECT  * FROM Sales.Store


SELECT
    Region, CustomerType,
    SUM (TotalDue) / COUNT (SalesOrderID) AS AvgOrderValue
FROM (
    SELECT
        sst.Name AS Region, sordh.SalesOrderID, sordh.TotalDue,
        CASE
            WHEN sc.StoreID IS NULL THEN 'Individual'
            ELSE 'Store'
        END AS CustomerType
    FROM Sales.SalesOrderHeader sordh
    JOIN Sales.SalesTerritory sst
        ON sordh.TerritoryID = sst.TerritoryID
    JOIN Sales.Customer sc
        ON sordh.CustomerID = sc.CustomerID
) data
GROUP BY Region, CustomerType
ORDER BY AvgOrderValue DESC
