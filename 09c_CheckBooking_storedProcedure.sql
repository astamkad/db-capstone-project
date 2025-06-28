DELIMITER //

CREATE PROCEDURE CheckBooking(
    IN booking_date DATE,
    IN table_no INT
)
BEGIN
    DECLARE booking_count INT;

    SELECT COUNT(*) INTO booking_count
    FROM Bookings
    WHERE BookingDate = booking_date AND TableNumber = table_no;

    IF booking_count > 0 THEN
        SELECT CONCAT('Table ', table_no, ' is already booked on ', booking_date) AS Status;
    ELSE
        SELECT CONCAT('Table ', table_no, ' is available on ', booking_date) AS Status;
    END IF;
END //

DELIMITER ;