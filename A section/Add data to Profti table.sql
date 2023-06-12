INSERT INTO profit (Product, ProfitRatio)
VALUES
    ('P1', 0.05),
    ('P2', 0.25),
    ('P3', 0.10),
    ('P4', 0.20),
    ('P5', 0.10);

-- A 10% profit ratio applies to products that are not mentioned.
INSERT INTO profit (Product, ProfitRatio)
SELECT DISTINCT Product, 0.10
FROM sale
WHERE Product NOT IN ('P1', 'P2', 'P3', 'P4', 'P5');