-- Create a new table called 'Discounts' in schema 'SchemaName'
-- Drop the table if it already exists
IF OBJECT_ID('SchemaName.Discounts', 'U') IS NOT NULL DROP TABLE SchemaName.Discounts
GO -- Create the table in the specified schema
    CREATE TABLE SchemaName.Discounts (
        DiscountsId INT NOT NULL PRIMARY KEY,
        -- primary key column
        DiscountName VARCHAR(100) NOT NULL,
        Percentage INT,
        StartDate DATE,
        EndDate DATE,
    );
GO