--  tables creation
CREATE TABLE Products(
    Product_Id VARCHAR2(20) CONSTRAINT PK_product PRIMARY KEY(),
    Product_Name VARCHAR2(20) CONSTRAINT NOT NULL,
    Price NUMBER CONSTRAINT CHK_product CHECK (Price > 0),
)


CREATE TABLE Customers(
    Customer_Id VARCHAR2(20) CONSTRAINT PK_product PRIMARY KEY(),
    Customer_Name VARCHAR2(20) CONSTRAINT NOT NULL,
    Customer_Tel NUMBER,
)

CREATE TABLE Orders(
    Quantity NUMBER,
    Total_amount NUMBER,
    CONSTRAINT FK_customer FOREIGN KEY (Customer_Id) REFERENCES Customer(Customer_Id),
    CONSTRAINT FK_product FOREIGN KEY (Product_Id) REFERENCES Product(Product_Id)
)

/*Add a column Category (VARCHAR2(20)) to the PRODUCT table. */

ALTER TABLE Products ADD Category VARCHAR2(20);

/*Add a column OrderDate (DATE)  to the ORDERS table which have SYSDATE as a default value.*/

ALTER TABLE Orders ADD OrderDate DATA DEFAULT SYSDATE;