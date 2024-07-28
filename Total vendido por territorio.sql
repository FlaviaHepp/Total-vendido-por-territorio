USE AdventureWorks2019
GO

--Se desea conocer el total vendido por territorio

SELECT st.Name AS Territorio, SUM(so.OrderQty * so.UnitPrice) as Total_Vendido
FROM Sales.SalesOrderHeader sh
INNER JOIN Sales.SalesOrderDetail so
ON sh.SalesOrderID = so.SalesOrderID
INNER JOIN Sales.SalesTerritory st
ON st.TerritoryID = sh.TerritoryID
GROUP BY st.TerritoryID, st.Name