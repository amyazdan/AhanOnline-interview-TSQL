SELECT Customer,
       SUM(UnitPrice * Quantity) AS TotalPurchase,
       COUNT(DISTINCT OrderID) AS NumberOfTransactions,
       SUM(Quantity) AS NumberOfPurchasedItems
FROM sale
GROUP BY Customer
HAVING SUM(UnitPrice * Quantity) > 1500;