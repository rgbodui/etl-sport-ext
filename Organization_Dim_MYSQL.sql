USE dwh_orion;

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
