CREATE OR REPLACE VIEW SalesReportView AS
SELECT 
    o.OrderID,
    c.CustomerFirstName,
    c.CustomerLastName,
    o.OrderDate,
    od.Quantity,
    od.Price,
    (od.Quantity * od.Price) AS TotalItemCost
FROM Orders o
JOIN OrderDetails od ON o.OrderID = od.OrderID
JOIN Customers c ON o.CustomerID = c.CustomerID;