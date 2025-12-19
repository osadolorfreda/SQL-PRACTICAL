-- Create a new table called 'Orders' in schema 'SchemaName'
-- Drop the table if it already exists
IF OBJECT_ID('SchemaName.Orders', 'U') IS NOT NULL DROP TABLE SchemaName.Orders
GO -- Create the table in the specified schema
    CREATE TABLE SchemaName.Orders (
        OrdersID INT NOT NULL PRIMARY KEY,
        -- primary key column
        Customer ID INT Primary NOT NULL,
        Employee ID INT FOREIGN KEY,
        OrderDate DATE NOT NULL,
        OrderTime TIME,
        OrderStatus VARCHAR(50),
        TotalAmount DECIMAL,
    );
GO