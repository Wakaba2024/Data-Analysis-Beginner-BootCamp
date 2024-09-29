--  Finds the total sales for each product.
SELECT ProductID, SUM(Amount) 
FROM Sales
GROUP BY ProductID;



--  Calculates the total sales for each month.
SELECT 
    DATE_FORMAT(SaleDate, '%Y-%m') AS SaleMonth, 
    SUM(Amount) AS TotalSales
FROM Sales
GROUP BY SaleMonth
ORDER BY SaleMonth;


--  Identifys customers who made more than 5 purchases.
SELECT CustomerID, COUNT(SaleID) AS PurchaseCount
FROM Sales
GROUP BY CustomerID
HAVING COUNT(SaleID) > 5;


