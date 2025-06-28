-- Task 3: Find menu names for items with more than 2 orders

USE LittleLemonDB;

SELECT DISTINCT m.MenuName
FROM Menus m
WHERE m.MenuID = ANY (
    SELECT mi.MenuID
    FROM MenuItems mi
    JOIN OrderDetails od ON mi.ItemID = od.ItemID
    WHERE od.Quantity > 2
);