USE AdventureWorks2025

SELECT TOP 5 * FROM Sales.SalesOrderHeader

SELECT
    YEAR(OrderDate) AS OrderYear,
    SUM(TotalDue) AS TotalSalesYear,
    COUNT(SalesOrderID) AS TotalOrderYear
FROM Sales.SalesOrderHeader
GROUP BY YEAR(OrderDate)
ORDER BY OrderYear

SELECT
    YEAR(OrderDate) AS OrderYear,
    SUM(TotalDue) AS TotalSalesYear,
    COUNT(SalesOrderID) AS TotalOrderYear
FROM Sales.SalesOrderHeader
GROUP BY YEAR(OrderDate)
ORDER BY TotalOrderYear DESC 

SELECT
    YEAR(OrderDate) AS OrderYear,
    SUM(TotalDue) AS TotalSalesYear,
    COUNT(SalesOrderID) AS TotalOrderYear
FROM Sales.SalesOrderHeader
GROUP BY YEAR(OrderDate)
ORDER BY TotalSalesYear DESC 