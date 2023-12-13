USE dev_project;

CREATE TABLE nasdaq_and_sp (
    `Date added` DATE,
    `NASDAQ` FLOAT,
    `SP500` FLOAT
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/merged_nasdaq_sp500_data.csv' 
INTO TABLE nasdaq_and_sp 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

SELECT * FROM nasdaq_and_sp;

CREATE TABLE OIL (
	`Date` DATE,
    `Prices` FLOAT
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/WTI.csv' 
INTO TABLE OIL
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT * FROM OIL;

DROP TABLE OIL;