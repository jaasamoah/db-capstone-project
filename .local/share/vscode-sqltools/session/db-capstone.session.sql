-- Create the LittleLemonDB database
CREATE DATABASE LittleLemonDB;

-- Switch to the LittleLemonDB database
USE LittleLemonDB;

-- Create the Customers table to store customer information
CREATE TABLE Customers (
    customer_id INT(10) PRIMARY KEY NOT NULL,    -- Unique identifier for each customer, auto-increment not used
    customer_name VARCHAR(100) NOT NULL,         -- Customer's name, up to 100 characters
    customer_address VARCHAR(100) NOT NULL,      -- Customer's address, up to 100 characters
    contact INT(15) NOT NULL                    -- Customer's contact number (stored as integer)
);

-- Create the Bookings table to store booking details
CREATE TABLE Bookings (
    booking_id INT(10),                         -- Identifier for each booking (not explicitly a primary key)
    date DATE NOT NULL,                         -- Date of the booking
    time TIME NOT NULL                          -- Time of the booking
);

-- Create the Staff table to store staff information
CREATE TABLE Staff (
    staff_id INT(10) PRIMARY KEY AUTO_INCREMENT NOT NULL, -- Unique identifier for each staff, auto-incremented
    staff_name VARCHAR(100) NOT NULL,            -- Staff member's name, up to 100 characters
    staff_address VARCHAR(100) NOT NULL,         -- Staff member's address, up to 100 characters
    contact INT(15) NOT NULL                    -- Staff member's contact number (stored as integer)
);

-- Create the Orders table to store order details
CREATE TABLE Orders (
    order_id INT(10) PRIMARY KEY AUTO_INCREMENT NOT NULL, -- Unique identifier for each order, auto-incremented
    customer_id INT(10) NOT NULL,                        -- Foreign key referencing Customers(customer_id)
    item_id INT(10) NOT NULL,                           -- Identifier for the ordered item (likely references another table)
    quantity INT(100) NOT NULL,                         -- Quantity of items ordered
    order_date DATE NOT NULL,                           -- Date the order was placed
    status VARCHAR(20) DEFAULT 'NOT DELIVERED',         -- Order status with default value 'NOT DELIVERED'
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id) -- Foreign key constraint linking to Customers table
);

-- Create the Menu_Items table to store menu item details
CREATE TABLE Menu_Items (
    item_id INT(10) PRIMARY KEY AUTO_INCREMENT,  -- Unique identifier for each menu item, auto-incremented
    type VARCHAR(100) NOT NULL                  -- Type or name of the menu item, up to 100 characters
);