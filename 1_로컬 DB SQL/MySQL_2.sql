USE dev_project;

CREATE TABLE `index` (
	`Date` date,
	`CPI` float,
    `M2` float,
    `FEDFUNDS` float,
    `HIGHYIELD` float
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/fredgraph.csv' 
INTO TABLE `index` 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(@var1, @var2, @var3, @var4, @var5)
SET 
  `Date` = NULLIF(@var1, '.'),  CPI = NULLIF(@var2, '.'), M2 = NULLIF(@var3, '.'), FEDFUNDS = NULLIF(@var4, '.'), HIGHYIELD = NULLIF(@var5, '.');
  
SELECT * FROM `index`;
SELECT * FROM prices LIMIT 5;

SELECT p.`Date`, p.AAPL, i.CPI
FROM prices p, `index` i
WHERE p.`Date` = i.`Date`;