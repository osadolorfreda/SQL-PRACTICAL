IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = 'family_budget')
BEGIN
    CREATE DATABASE family_budget;
END
GO

USE family_budget;
GO

CREATE TABLE Family (
    family_id INT IDENTITY(1,1) PRIMARY KEY,
    family_name VARCHAR(200) NOT NULL,
    created_at DATETIME DEFAULT GETDATE()
);
GO

CREATE TABLE Member (
    member_id INT IDENTITY(1,1) PRIMARY KEY,
    family_id INT NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(255),
    phone VARCHAR(50),
    created_at DATETIME DEFAULT GETDATE(),

    FOREIGN KEY (family_id) REFERENCES Family(family_id) ON DELETE CASCADE
);
GO