USE `LittleLemonDB`;
DROP PROCEDURE IF EXISTS SalesSummaryByDate;

DELIMITER $$

CREATE PROCEDURE SalesSummaryByDate(IN StartDate DATE, IN EndDate DATE)
BEGIN
    DECLARE EffectiveStart DATE DEFAULT '2000-01-01';
    DECLARE EffectiveEnd DATE DEFAULT CURRENT_DATE();

    SET EffectiveStart = IFNULL(StartDate, EffectiveStart);
    SET EffectiveEnd = IFNULL(EndDate, EffectiveEnd);

    -- Simulate a print statement
    SELECT CONCAT('Generating Sales Report from ', EffectiveStart, ' to ', EffectiveEnd) AS ReportPeriod;

    -- Return summary data
    SELECT
        COUNT(DISTINCT o.OrderID) AS TotalOrders,
        COUNT(DISTINCT o.CustomerID) AS UniqueCustomers,
        SUM(od.Quantity) AS TotalItemsSold,
        ROUND(SUM(od.Price * od.Quantity), 2) AS TotalRevenue,
        ROUND(AVG(od.Price * od.Quantity), 2) AS AverageOrderValue,
        ROUND(MAX(od.Price * od.Quantity), 2) AS MaxOrderValue,
        ROUND(MIN(od.Price * od.Quantity), 2) AS MinOrderValue
    FROM Orders o
    JOIN OrderDetails od ON o.OrderID = od.OrderID
    WHERE o.OrderDate BETWEEN EffectiveStart AND EffectiveEnd;
END $$

DELIMITER ;