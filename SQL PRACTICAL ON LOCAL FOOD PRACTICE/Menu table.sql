-- Create a new table called 'Menu' in schema 'SchemaName'
-- Drop the table if it already exists
IF OBJECT_ID('SchemaName.Menu', 'U') IS NOT NULL DROP TABLE SchemaName.Menu
GO -- Create the table in the specified schema
    CREATE TABLE SchemaName.Menu (
        MenuId INT NOT NULL PRIMARY KEY,
        -- primary key column
        ItemName VARCHAR(50) NOT NULL,
        CategoryId INT NOT NULL FOREIGN KEY,
        Price DECIMAL,
        Description VARCHAR(255),
        IsAvaliable BOOLEAN,
        CreatedDate DATE,
    );
GO