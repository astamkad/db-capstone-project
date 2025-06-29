# dbclient.py

# Task 1: Import connector and connect to the Little Lemon database
import mysql.connector as connector
from getpass import getpass

# Prompt for credentials securely
db_user = input("Enter MySQL username: ")
db_password = getpass("Enter MySQL password: ")

# Connect to the database
connection = connector.connect(
    user=db_user,
    password=db_password,
    host="localhost",
    database="LittleLemonDB"
)

# Create a cursor to execute queries
cursor = connection.cursor()

# Task 2: Show all tables in the database
print("\nAvailable Tables in LittleLemonDB:")
show_tables_query = "SHOW TABLES"
cursor.execute(show_tables_query)
tables = cursor.fetchall()
for table in tables:
    print(f"- {table[0]}")

# Task 3: Query for customers who spent more than $60
print("\nCustomers who placed orders over $60:")

query = """
SELECT 
    CONCAT(c.CustomerFirstName, ' ', c.CustomerLastName) AS FullName,
    c.Email,
    c.ContactNumber,
    o.OrderID,
    ROUND(SUM(od.Price * od.Quantity), 2) AS TotalSpent
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN OrderDetails od ON o.OrderID = od.OrderID
GROUP BY o.OrderID
HAVING TotalSpent > 60
ORDER BY TotalSpent DESC;
"""

cursor.execute(query)
results = cursor.fetchall()

# Display the query results
for row in results:
    full_name, email, phone, order_id, total_spent = row
    print(f"Customer: {full_name}, Email: {email}, Phone: {phone}, "
          f"Order ID: {order_id}, Total Spent: ${total_spent}")

# Close cursor and connection
cursor.close()
connection.close()