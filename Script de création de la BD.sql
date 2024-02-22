CREATE DATABASE dwh_orion;

USE dwh_orion;

CREATE USER 'talend_exam'@'localhost' IDENTIFIED BY 'Passer@1';
GRANT ALL PRIVILEGES ON dwh_orion.* TO 'talend_exam'@'localhost';
FLUSH PRIVILEGES;

DROP TABLE if exists Product_Dim;

CREATE TABLE Product_Dim(
	Product_ID bigint NOT NULL,
	Product_Line nvarchar(20) NULL,
	Product_Category nvarchar(25) NULL,
	Product_Group nvarchar(25) NULL,
	Product_Name nvarchar(45) NULL,
	Supplier_Country nvarchar(2) NULL,
	Supplier_Name nvarchar (30) NULL,
	Supplier_ID int NULL
);

-- Supprimer la table si elle existe déjà
DROP TABLE IF EXISTS Organization_Dim;

-- Créer la table Organization_Dim
CREATE TABLE Organization_Dim (
    Employee_ID INT AUTO_INCREMENT NOT NULL,
    PRIMARY KEY (Employee_ID),
    Employee_Country CHAR(2) NULL,
    Company VARCHAR(30) NULL,
    Department VARCHAR(40) NULL,
    Section VARCHAR(40) NULL,
    Org_Group VARCHAR(40) NULL,
    Job_title VARCHAR(25) NULL,
    Employee_Name VARCHAR(40) NULL,
    Employee_Gender CHAR(1) NULL,
    Salary DECIMAL(13, 0) NULL,
    Employee_Birth_Date DATE NULL,
    Employee_Hire_Date DATE NULL,
    Employee_Term_Date DATE NULL
);

DROP TABLE if exists Customer_Dim;


CREATE TABLE Customer_Dim(
	Customer_ID int NULL,
	Customer_Country nvarchar(2) NULL,
	Customer_Group nvarchar(40) NULL,
	Customer_Type nvarchar(40) NULL,
	Customer_Gender nvarchar(1) NULL,
	Customer_Age_Group nvarchar(12) NULL,
	Customer_Age smallint NULL,
	Customer_Name nvarchar(40) NULL,
	Customer_Fisrtname nvarchar(20) NULL,
	Customer_Lastname nvarchar(30) NULL,
	Customer_Birth_Date date NULL
);

-- Création de la table Geography_Dim
DROP TABLE if exists Geography_Dim;


CREATE TABLE Geography_Dim (
    Street_ID BIGINT PRIMARY KEY,
    Continent VARCHAR(32),
    Country CHARACTER(4),
    State_Code CHARACTER(4),
    State VARCHAR(27),
    Region VARCHAR(32),
    Province VARCHAR(32),
    County VARCHAR(62),
    City VARCHAR(32),
    Postal_Code CHARACTER(12),
    Street_Name VARCHAR(47)
);


-- Création de la table Order_Fact
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
