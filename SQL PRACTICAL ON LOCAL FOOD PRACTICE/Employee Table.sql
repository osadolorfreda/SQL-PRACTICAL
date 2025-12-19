-- Create a new table called 'Employee ' in schema 'SchemaName'
-- Drop the table if it already exists
IF OBJECT_ID('SchemaName.Employee ', 'U') IS NOT NULL DROP TABLE SchemaName.Employee
GO -- Create the table in the specified schema
    CREATE TABLE SchemaName.Employee (
        Employee Id INT NOT NULL PRIMARY KEY,
        -- primary key column
        Full Name VARCHAR(100),
        Role NVARCHAR(50),
        Phone VARCHAR(20),
        HireDate DATE,
        Salary INT,
        -- specify more columns here
    );
GO