USE LittleLemonDB;

-- Customers (consistent with Booking CustomerIDs)
INSERT INTO Customers (CustomerID, CustomerFirstName, CustomerLastName, Email, ContactNumber)
VALUES
(1, 'John', 'Doe', 'john@example.com', '1234567890'),
(2, 'Jane', 'Smith', 'jane@example.com', '0987654321'),
(3, 'Ali', 'Hassan', 'ali@example.com', '5551234567');

-- Staff
INSERT INTO Staff (StaffID, StaffFirstName, StaffLastName, StaffRole, StaffSalary)
VALUES
(1, 'Mario', 'Chef', 'Chef', 50000.00),
(2, 'Luigi', 'Waiter', 'Waiter', 30000.00);

-- Bookings (task-specific data)
INSERT INTO Bookings (BookingID, BookingDate, TableNumber, NumberOfGuests, CustomerID, StaffID)
VALUES
(1, '2022-10-10', 5, 2, 1, 2),
(2, '2022-11-12', 3, 4, 3, 1),
(3, '2022-10-11', 2, 2, 2, 1),
(4, '2022-10-13', 2, 2, 1, 2);

-- Menus
INSERT INTO Menus (MenuID, MenuName, Cuisine)
VALUES
(1, 'Summer Specials', 'Italian'),
(2, 'Vegan Delight', 'Mediterranean');

-- MenuItems
INSERT INTO MenuItems (ItemID, MenuID, ItemName, CourseType, Price)
VALUES
(201, 1, 'Spaghetti Carbonara', 'Main', 22.50),
(202, 1, 'Tiramisu', 'Dessert', 8.00),
(203, 2, 'Falafel Wrap', 'Main', 15.00),
(204, 2, 'Hummus Plate', 'Starter', 6.50);

-- Orders
INSERT INTO Orders (OrderID, BookingID, CustomerID, OrderDate, TotalCost)
VALUES
(301, 1, 1, '2022-10-10', 30.50),
(302, 2, 3, '2022-11-12', 35.00),
(303, 3, 2, '2022-10-11', 45.00),
(304, 4, 1, '2022-10-13', 50.00);

-- OrderDetails
INSERT INTO OrderDetails (OrderDetailsID, OrderID, ItemID, Quantity, Price)
VALUES
(401, 301, 201, 1, 22.50),
(402, 301, 202, 1, 8.00),
(403, 302, 203, 2, 30.00),
(404, 302, 204, 1, 5.00),
(405, 303, 203, 3, 45.00),
(406, 304, 201, 2, 45.00),
(407, 304, 202, 1, 5.00);

-- CustomerAddresses
INSERT INTO CustomerAddresses (AddressID, Street, City, PostalCode, State, Country, CustomerID)
VALUES
(1, '123 Main St', 'Boston', '02118', 'MA', 'USA', 1),
(2, '456 Maple Ave', 'Cambridge', '02139', 'MA', 'USA', 2),
(3, '789 Oak Ln', 'Somerville', '02144', 'MA', 'USA', 3);

-- OrderDeliveryStatus
INSERT INTO OrderDeliveryStatus (DeliveryID, OrderID, AddressID, DeliveryDate, DeliveryStatus)
VALUES
(501, 301, 1, '2022-10-11', 'Delivered'),
(502, 302, 3, '2022-11-13', 'Delivered'),
(503, 303, 2, '2022-10-12', 'Pending'),
(504, 304, 1, '2022-10-14', 'Out for Delivery');