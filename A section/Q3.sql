SELECT Product, SUM(Quantity) AS TotalQuantity
FROM sale
GROUP BY Product;