-- USE the LittleLemonDB schema
USE `LittleLemonDB`;

-- Drop the procedure if it already exists
DROP PROCEDURE IF EXISTS GetMaxQuantity;

-- Change delimiter to allow for multi-line procedure definition
DELIMITER $$

-- Create stored procedure to return the maximum order quantity
CREATE PROCEDURE GetMaxQuantity ()
BEGIN
    SELECT MAX(Quantity) AS MaxOrderQuantity FROM OrderDetails;
END$$

-- Reset delimiter to default
DELIMITER ;

-- (Optional) Call the procedure to test it
-- CALL GetMaxQuantity();