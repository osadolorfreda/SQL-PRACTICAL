-- Create a new table called 'OrderItem' in schema 'SchemaName'
-- Drop the table if it already exists
IF OBJECT_ID('SchemaName.OrderItem', 'U') IS NOT NULL DROP TABLE SchemaName.TableName
GO -- Create the table in the specified schema
    CREATE TABLE SchemaName.OrderItem (
        TableNameId INT NOT NULL PRIMARY KEY,
        -- primary key column
        OrderID INT NOT NULL FOREIGN KEY,
        MenuID INT NOT NULL FOREIGN KEY,
        Quantity INT,
        UnitPrice DECIMAL,
        Subtotal DECIMAL,
    );
GO