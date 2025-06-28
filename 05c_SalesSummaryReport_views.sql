CREATE OR REPLACE VIEW SalesSummaryReport AS
SELECT
    COUNT(DISTINCT o.OrderID) AS TotalOrders,
    COUNT(DISTINCT o.CustomerID) AS UniqueCustomers,
    SUM(od.Quantity) AS TotalItemsSold,
    SUM(od.Price * od.Quantity) AS TotalRevenue,
    AVG(od.Price * od.Quantity) AS AverageOrderValue,
    MAX(od.Price * od.Quantity) AS MaxSingleOrderValue,
    MIN(od.Price * od.Quantity) AS MinSingleOrderValue
FROM Orders o
JOIN OrderDetails od ON o.OrderID = od.OrderID;