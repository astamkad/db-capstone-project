DELIMITER //

CREATE PROCEDURE CancelBooking (
    IN p_BookingID INT
)
BEGIN
    DELETE FROM Bookings
    WHERE BookingID = p_BookingID;

    SELECT CONCAT('Booking ID ', p_BookingID, ' has been cancelled.') AS Message;
END //

DELIMITER ;