CREATE TABLE sale (
  SalesID INT PRIMARY KEY,
  OrderID INT,
  Customer VARCHAR(100),
  Product VARCHAR(100),
  Date DATE,
  Quantity INT,
  UnitPrice DECIMAL(10, 2)
);

CREATE TABLE profit (
  Product VARCHAR(100),
  ProfitRatio DECIMAL(5, 2)
);

