SELECT
    SUM(s.UnitPrice * s.Quantity * p.ProfitRatio) AS ProfitAmount,
    SUM(s.UnitPrice * s.Quantity) AS TotalSalesAmount,
    (SUM(s.UnitPrice * s.Quantity * p.ProfitRatio) / SUM(s.UnitPrice * s.Quantity)) * 100 AS ProfitPercentage
FROM sale s
JOIN profit p ON s.Product = p.Product;
