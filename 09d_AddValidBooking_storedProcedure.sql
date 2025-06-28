DELIMITER //

CREATE PROCEDURE AddValidBooking(
    IN booking_date DATE,
    IN table_no INT,
    IN customer_id INT
)
BEGIN
    DECLARE booking_count INT;

    START TRANSACTION;

    -- Check if the table is already booked on that date
    SELECT COUNT(*) INTO booking_count
    FROM Bookings
    WHERE BookingDate = booking_date AND TableNumber = table_no;

    IF booking_count > 0 THEN
        -- Table is already booked, cancel the transaction
        ROLLBACK;
        SELECT CONCAT('Booking failed: Table ', table_no, ' is already booked on ', booking_date) AS Status;
    ELSE
        -- Proceed with booking
        INSERT INTO Bookings (BookingDate, TableNumber, CustomerID)
        VALUES (booking_date, table_no, customer_id);

        COMMIT;
        SELECT CONCAT('Booking successful for Table ', table_no, ' on ', booking_date) AS Status;
    END IF;
END //

DELIMITER ;