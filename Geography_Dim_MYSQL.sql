USE dwh_orion;

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
