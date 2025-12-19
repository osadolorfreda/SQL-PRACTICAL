-- Create a new table called 'Inventory' in schema 'SchemaName'
-- Drop the table if it already exists
IF OBJECT_ID('SchemaName.Inventory', 'U') IS NOT NULL DROP TABLE SchemaName.Inventory
GO -- Create the table in the specified schema
    CREATE TABLE SchemaName.Inventory (
        InventoryId INT NOT NULL PRIMARY KEY,
        -- primary key column
        ItemName VARCHAR(50) NOT NULL,
        Quantity INT Unit VARCHAR(50) NOT NULL,
    );
GO