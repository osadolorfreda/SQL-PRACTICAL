CREATE TABLE Payment(
    PaymentID INT(Primary Key),
    OrderID INT(Foreign Key),
    AmountPaid DECIMAL,
    PaymentMethod VARCHAR(50),
    PaymentStatus VARCHAR(50),
    PaymentDate DATE,
)