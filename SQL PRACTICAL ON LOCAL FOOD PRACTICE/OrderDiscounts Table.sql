-- Create a new table called 'OrderDiscounts' in schema 'SchemaName'
-- Drop the table if it already exists
IF OBJECT_ID('SchemaName.OrderDiscounts', 'U') IS NOT NULL DROP TABLE SchemaName.OrderDiscounts
GO -- Create the table in the specified schema
    CREATE TABLE SchemaName.OrderDiscounts (
        OrderDiscountsId INT NOT NULL PRIMARY KEY,
        -- primary key column
        OrderID INT NOT NULL FOREIGN KEY,
        DiscountID INT NOT NULL FOREIGN KEY,
    );
GO