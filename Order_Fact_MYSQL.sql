USE dwh_orion;

DROP TABLE if exists Order_Fact;


CREATE TABLE Order_Fact (
    Customer_ID INTEGER,
    Employee_ID INTEGER,
    Street_ID BIGINT,
    Product_ID BIGINT,
    Order_Date DATE,
    Order_ID INTEGER,
    Order_Type SMALLINT,
    Delivery_Date DATE,
    Quantity SMALLINT,
    Total_Retail_Price DECIMAL(13,2),
    Costprice_Per_Unit DECIMAL(13,2),
    Discount DECIMAL(5,2),
    PRIMARY KEY (Customer_ID, Employee_ID, Street_ID, Product_ID, Order_Date, Order_ID)
);
