-- USE the LittleLemonDB schema
USE `LittleLemonDB`;

-- Drop the procedure if it already exists
DROP PROCEDURE IF EXISTS CancelOrder;

-- Change the delimiter to allow multi-line statement
DELIMITER $$

-- Create the CancelOrder procedure with input parameter
CREATE PROCEDURE CancelOrder(IN order_id INT)
BEGIN
    DELETE FROM Orders WHERE OrderID = order_id;
END$$

-- Reset the delimiter to default
DELIMITER ;

-- (Optional) Example: To cancel order with ID 301
-- CALL CancelOrder(301);