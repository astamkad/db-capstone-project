
-- Task 2: Customers with Orders > $150

USE LittleLemonDB;

SELECT 
    c.CustomerID,
    CONCAT(c.CustomerFirstName, ' ', c.CustomerLastName) AS FullName,
    o.OrderID,
    o.TotalCost,
    m.MenuName,
    mi.CourseType,
    mi.ItemName
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN OrderDetails od ON o.OrderID = od.OrderID
JOIN MenuItems mi ON od.ItemID = mi.ItemID
JOIN Menus m ON mi.MenuID = m.MenuID
WHERE o.TotalCost > 150
ORDER BY o.TotalCost ASC;
