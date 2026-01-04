USE AdventureWorks2025

SELECT * FROM Production.ProductCategory
SELECT * FROM Production.ProductSubcategory
SELECT * FROM Production.Product
SELECT TOP 10 * FROM Sales.SalesOrderDetail


SELECT
    ppc.Name AS CategoryName,
    SUM(sord.LineTotal) AS TotalSales
FROM Sales.SalesOrderDetail sord
INNER JOIN Production.Product pp
    ON sord.ProductID = pp.ProductID
INNER JOIN Production.ProductSubcategory pps
    ON pp.ProductSubcategoryID = pps.ProductSubcategoryID
INNER JOIN Production.ProductCategory ppc
    ON pps.ProductCategoryID = ppc.ProductCategoryID
GROUP BY ppc.Name
ORDER BY  TotalSales DESC