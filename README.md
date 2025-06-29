# Little Lemon Database Capstone Project

This capstone project demonstrates the end-to-end development of a relational database system for **Little Lemon**, a fictitious restaurant. The project includes database modeling, implementation in MySQL, advanced querying, a Tableau dashboard, and a Python-based client application to interact with the database.

------------------------------------------------------------------------

## 🗂️ Project Structure

```         
db-capstone-project/
├── dbclient.py               # Python database client script
├── LittleLemonDB.xlsx        # Sample data used for populating the database
├── LittleLemonDM.png         # Entity Relationship Diagram (ERD)
├── Tableau dashboard.png     # Screenshot of the Tableau dashboard
├── README.md                 # Project documentation
└── venv/                     # Python virtual environment
```

------------------------------------------------------------------------

## 1️⃣ Database Design

The Little Lemon database includes the following key entities:

-   **Customers**
-   **CustomerAddresses**
-   **Bookings**
-   **MenuItems**
-   **Menus**
-   **Orders**
-   **OrderDetails**
-   **OrderDeliveryStatus**
-   **Staff**

It is normalized to **Third Normal Form (3NF)** and includes stored procedures, views, and transactions.

### 🗺️ Entity Relationship Diagram (ERD)

![ER Diagram](LittleLemonDM.png)

------------------------------------------------------------------------

## 2️⃣ MySQL Implementation

### ✅ Features

-   Created and inserted records into all normalized tables
-   Implemented:
    -   **Stored Procedures**
    -   **Views** (`ordersview`, `salesreportview`, `salessummaryreport`)
    -   **Transactions** for order management
-   Wrote advanced **JOIN** queries and used **virtual tables** for data insights

------------------------------------------------------------------------

## 3️⃣ Tableau Dashboard

An interactive Tableau dashboard was created to visualize:

-   Total sales trends
-   Geographic distribution
-   Menu performance
-   Order volumes over time

You can interact with the live dashboard here: <https://public.tableau.com/views/LittleLemon_capstone/CustomersDashboard>?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link

### 📊 Preview

![Tableau Dashboard](Tableau%20dashboard.png)

------------------------------------------------------------------------

## 4️⃣ Python Database Client (`dbclient.py`)

A lightweight CLI application written in Python that connects to the MySQL database using `mysql-connector-python`. It demonstrates how to automate data retrieval and display results programmatically.

### 🔧 Features

-   Connects to MySQL using credentials
-   Lists all available tables
-   Retrieves customers who placed orders over \$60
-   Displays their:
    -   Full Name
    -   Email
    -   Phone Number
    -   Order ID
    -   Total spent

### 💻 Sample Output

```         
Customers who placed orders over $60:
Customer: Christina Turner, Email: christina.turner@example.com, Phone: 263.349.7799x483, Order ID: 57, Total Spent: $1539
Customer: Todd Lewis, Email: todd.lewis@example.com, Phone: (026)064-7468x7234, Order ID: 85, Total Spent: $992
...
```

------------------------------------------------------------------------

## 🔁 Environment Setup

### Requirements

-   Python 3.10+
-   MySQL Server
-   MySQL Workbench
-   Tableau Public/Desktop
-   Jupyter Notebook or VS Code

### Setup Steps

``` bash
# Clone or download the project
cd db-capstone-project

# Create and activate virtual environment
python3 -m venv venv
source venv/bin/activate

# Install MySQL Connector
pip install mysql-connector-python

# Run the database client
python dbclient.py
```

Ensure your MySQL server is running and the connection parameters in `dbclient.py` are correctly set.

------------------------------------------------------------------------

## 🧠 Learning Objectives

By completing this project, you will gain hands-on experience in:

-   Advanced relational database modeling (3NF)
-   SQL queries, stored procedures, and transactions
-   Data visualization with Tableau
-   Python-to-MySQL client development
-   Using Git and version control for database projects

------------------------------------------------------------------------

## 📝 Acknowledgments

This capstone was developed as part of the [Meta Database Engineer Certificate Program on Coursera](https://www.coursera.org/). It synthesizes skills from database modeling, SQL programming, and data-driven client application development.

------------------------------------------------------------------------

## 📎 License

This project is for educational purposes and not intended for commercial use.
