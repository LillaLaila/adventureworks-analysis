USE AdventureWorks2025

SELECT * FROM Production.ProductSubcategory
SELECT TOP 5 * FROM Production.ProductCategory
SELECT TOP 5 * FROM Production.Product
SELECT TOP 5 * FROM Sales.SalesOrderDetail

SELECT
    TOP 10 pp.ProductID, pp.Name AS ProductName, SUM (sord.LineTotal) as Total
FROM Sales.SalesOrderDetail sord
INNER JOIN Production.Product pp
    ON sord.ProductID = pp.ProductID
GROUP BY pp.ProductID, pp.Name
ORDER BY Total DESC

