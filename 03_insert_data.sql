USE LittleLemonDB;

-- Customers
INSERT INTO Customers (CustomerID, CustomerFirstName, CustomerLastName, Email, ContactNumber)
VALUES
(1, 'John', 'Doe', 'john@example.com', '1234567890'),
(2, 'Jane', 'Smith', 'jane@example.com', '0987654321'),
(3, 'Ali', 'Hassan', 'ali@example.com', '5551234567'),
(4, 'Maria', 'Garcia', 'maria@example.com', '4445556666'),
(5, 'Ling', 'Chen', 'ling@example.com', '7778889999');

-- Staff
INSERT INTO Staff (StaffID, StaffFirstName, StaffLastName, StaffRole, StaffSalary)
VALUES
(1, 'Mario', 'Chef', 'Chef', 50000.00),
(2, 'Luigi', 'Waiter', 'Waiter', 30000.00),
(3, 'Sofia', 'Manager', 'Manager', 60000.00);

-- Bookings
INSERT INTO Bookings (BookingID, BookingDate, TableNumber, NumberOfGuests, CustomerID, StaffID)
VALUES
(101, '2025-06-01 19:00:00', '5', '2', 1, 2),
(102, '2025-06-02 20:00:00', '3', '4', 2, 2),
(103, '2025-06-03 18:30:00', '1', '3', 3, 1),
(104, '2025-06-04 18:00:00', '6', '2', 4, 2),
(105, '2025-06-05 19:45:00', '2', '1', 5, 1);

-- Menus
INSERT INTO Menus (MenuID, MenuName, Cuisine)
VALUES
(1, 'Summer Specials', 'Italian'),
(2, 'Vegan Delight', 'Mediterranean'),
(3, 'Chef Picks', 'Fusion');

-- MenuItems
INSERT INTO MenuItems (ItemID, MenuID, ItemName, CourseType, Price)
VALUES
(201, 1, 'Spaghetti Carbonara', 'Main', 22.50),
(202, 1, 'Tiramisu', 'Dessert', 8.00),
(203, 2, 'Falafel Wrap', 'Main', 15.00),
(204, 2, 'Hummus Plate', 'Starter', 6.50),
(205, 3, 'Chicken Tagine', 'Main', 18.75),
(206, 3, 'Mango Sorbet', 'Dessert', 7.25);

-- Orders
INSERT INTO Orders (OrderID, BookingID, CustomerID, OrderDate, TotalCost)
VALUES
(301, 101, 1, '2025-06-01', 60.00),
(302, 102, 2, '2025-06-02', 160.00),
(303, 103, 3, '2025-06-03', 75.00),
(304, 104, 4, '2025-06-04', 155.00),
(305, 105, 5, '2025-06-05', 80.00);

-- OrderDetails
INSERT INTO OrderDetails (OrderDetailsID, OrderID, ItemID, Quantity, Price)
VALUES
(401, 301, 201, 1, 22.50),
(402, 301, 202, 1, 8.00),
(403, 302, 203, 3, 45.00),
(404, 302, 204, 3, 19.50),
(405, 303, 201, 2, 45.00),
(406, 304, 205, 2, 37.50),
(407, 304, 206, 3, 21.75),
(408, 305, 204, 1, 6.50),
(409, 305, 202, 2, 16.00),
(410, 305, 206, 3, 21.75);

-- CustomerAddresses
INSERT INTO CustomerAddresses (AddressID, Street, City, PostalCode, State, Country, CustomerID)
VALUES
(1, '123 Main St', 'Boston', '02118', 'MA', 'USA', 1),
(2, '456 Maple Ave', 'Cambridge', '02139', 'MA', 'USA', 2),
(3, '789 Oak Ln', 'Somerville', '02144', 'MA', 'USA', 3),
(4, '101 First Rd', 'Medford', '02155', 'MA', 'USA', 4),
(5, '202 Second St', 'Quincy', '02169', 'MA', 'USA', 5);

-- OrderDeliveryStatus
INSERT INTO OrderDeliveryStatus (DeliveryID, OrderID, AddressID, DeliveryDate, DeliveryStatus)
VALUES
(501, 301, 1, '2025-06-02', 'Delivered'),
(502, 302, 2, '2025-06-03', 'Delivered'),
(503, 303, 3, '2025-06-04', 'Pending'),
(504, 304, 4, '2025-06-05', 'Delivered'),
(505, 305, 5, '2025-06-06', 'Out for Delivery');