CREATE TABLE Categories(
    -- Create a new table called 'Categories' in schema 'SchemaName'
    -- Drop the table if it already exists
    IF OBJECT_ID('SchemaName.Categories', 'U') IS NOT NULL
    DROP TABLE SchemaName.Categories
    GO
    -- Create the table in the specified schema
    CREATE TABLE SchemaName.Categories
    (
        CategoriesId INT NOT NULL PRIMARY KEY, -- primary key column
        CategoriesName VARCHAR(100) NOT NULL,
        Description VARCHAR(50) NOT NULL
        -- specify more columns here
    );
    GO
)