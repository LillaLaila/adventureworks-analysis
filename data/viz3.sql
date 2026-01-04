USE AdventureWorks2025

SELECT TOP 5 * FROM Sales.SalesOrderHeader

SELECT
    FORMAT (OrderDate, 'yyyy-MM') AS OrderDates,
    SUM (TotalDue) AS TotalSalesSum
FROM Sales.SalesOrderHeader
GROUP BY FORMAT (OrderDate, 'yyyy-MM')
ORDER BY OrderDates


SELECT
    FORMAT (OrderDate, 'yyyy-MM') AS OrderDates,
    SUM (TotalDue) AS TotalSalesSum
FROM Sales.SalesOrderHeader
GROUP BY FORMAT (OrderDate, 'yyyy-MM')
ORDER BY TotalSalesSum DESC 
-- 5847164,693

SELECT
    FORMAT (OrderDate, 'yyyy-MM') AS OrderDates,
    SUM (TotalDue) AS TotalSalesSum
FROM Sales.SalesOrderHeader
GROUP BY FORMAT (OrderDate, 'yyyy-MM')
ORDER BY TotalSalesSum ASC
-- 52478,1872