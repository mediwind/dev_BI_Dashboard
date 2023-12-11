CREATE TABLE unemployment (
    `date` DATE,
    `value` FLOAT
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/unemployment.csv' 
INTO TABLE unemployment
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@var1, value)
SET date = STR_TO_DATE(@var1, '%m/%d/%Y');

SELECT * FROM unemployment;

SELECT i.*, u.`value`
FROM `index` AS i
LEFT JOIN unemployment AS u
ON i.`Date` = u.`date`;

CREATE TABLE new_index AS
SELECT i.*, u.value
FROM `index` AS i
LEFT JOIN unemployment AS u
ON i.Date = u.date;

SELECT * FROM new_index;

RENAME TABLE `index` TO old_index, new_index TO `index`;

SELECT * FROM `index`;
SELECT * FROM old_index;

DROP TABLE old_index;

ALTER TABLE `index`
CHANGE COLUMN `value` `unemployment` FLOAT;

SELECT * FROM `index`