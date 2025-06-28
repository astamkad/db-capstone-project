DELIMITER //

CREATE PROCEDURE AddBooking (
    IN in_BookingID INT,
    IN in_CustomerID INT,
    IN in_BookingDate DATE,
    IN in_TableNumber INT,
    IN in_NumberOfGuests INT
)
BEGIN
    INSERT INTO Bookings (
        BookingID,
        CustomerID,
        BookingDate,
        TableNumber,
        NumberOfGuests
    )
    VALUES (
        in_BookingID,
        in_CustomerID,
        in_BookingDate,
        in_TableNumber,
        in_NumberOfGuests
    );
END //

DELIMITER ;