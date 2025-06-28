
-- Prepared Statement: GetOrderDetail

PREPARE GetOrderDetail 
FROM 'SELECT OrderID, Quantity, Price 
      FROM OrderDetails 
      WHERE OrderID IN 
        (SELECT OrderID FROM Orders WHERE CustomerID = ?)';

-- Set CustomerID parameter
SET @id = 1;

-- EXECUTE the prepared statement
EXECUTE GetOrderDetail USING @id;

-- (Optional) DEALLOCATE the prepared statement
DEALLOCATE PREPARE GetOrderDetail;