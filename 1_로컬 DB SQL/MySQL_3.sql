USE dev_project;

CREATE TABLE detail_sp (
    `Ticker` VARCHAR(50),
    `Company` VARCHAR(50),
    `GICS sector` VARCHAR(50),
    `GICS Sub-Industry` VARCHAR(100),
    `Headquarters Location` VARCHAR(100),
    `Date added` DATE,
    `CIK` BIGINT,
    `Market Cap` BIGINT
);

DROP TABLE detail_sp;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Details_sp500.csv' 
INTO TABLE detail_sp 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

SELECT * FROM detail_sp;
SELECT * FROM detail;