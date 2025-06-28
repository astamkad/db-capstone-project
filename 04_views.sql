USE LittleLemonDB;

CREATE OR REPLACE VIEW OrdersView AS
SELECT 
    od.OrderID,
    od.Quantity,
    od.Price
FROM OrderDetails od
WHERE od.Quantity > 2;