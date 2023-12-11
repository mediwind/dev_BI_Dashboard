CREATE DATABASE dev_project;

USE dev_project; 

CREATE TABLE detail (
    `Company` VARCHAR(50),
    `Ticker` VARCHAR(50),
    `GICS sector` VARCHAR(50),
    `GICS Sub-Industry` VARCHAR(100),
    `Market Cap` BIGINT
);

CREATE TABLE prices (
    `Date` DATE,
    `AAPL` FLOAT,
    `ABNB` FLOAT,
    `ADBE` FLOAT,
    `ADI` FLOAT,
    `ADP` FLOAT,
    `ADSK` FLOAT,
    `AEP` FLOAT,
    `ALGN` FLOAT,
    `AMAT` FLOAT,
    `AMD` FLOAT,
    `AMGN` FLOAT,
    `AMZN` FLOAT,
    `ANSS` FLOAT,
    `ASML` FLOAT,
    `AVGO` FLOAT,
    `AZN` FLOAT,
    `BIIB` FLOAT,
    `BKNG` FLOAT,
    `BKR` FLOAT,
    `CDNS` FLOAT,
    `CEG` FLOAT,
    `CHTR` FLOAT,
    `CMCSA` FLOAT,
    `COST` FLOAT,
    `CPRT` FLOAT,
    `CRWD` FLOAT,
    `CSCO` FLOAT,
    `CSGP` FLOAT,
    `CSX` FLOAT,
    `CTAS` FLOAT,
    `CTSH` FLOAT,
    `DDOG` FLOAT,
    `DLTR` FLOAT,
    `DXCM` FLOAT,
    `EA` FLOAT,
    `EBAY` FLOAT,
    `ENPH` FLOAT,
    `EXC` FLOAT,
    `FANG` FLOAT,
    `FAST` FLOAT,
    `FTNT` FLOAT,
    `GEHC` FLOAT,
    `GFS` FLOAT,
    `GILD` FLOAT,
    `GOOG` FLOAT,
    `GOOGL` FLOAT,
    `HON` FLOAT,
    `IDXX` FLOAT,
    `ILMN` FLOAT,
    `INTC` FLOAT,
    `INTU` FLOAT,
    `ISRG` FLOAT,
    `JD` FLOAT,
    `KDP` FLOAT,
    `KHC` FLOAT,
    `KLAC` FLOAT,
    `LCID` FLOAT,
    `LRCX` FLOAT,
    `LULU` FLOAT,
    `MAR` FLOAT,
    `MCHP` FLOAT,
    `MDLZ` FLOAT,
    `MELI` FLOAT,
    `META` FLOAT,
    `MNST` FLOAT,
    `MRNA` FLOAT,
    `MRVL` FLOAT,
    `MSFT` FLOAT,
    `MU` FLOAT,
    `NFLX` FLOAT,
    `NVDA` FLOAT,
    `NXPI` FLOAT,
    `ODFL` FLOAT,
    `ON` FLOAT,
    `ORLY` FLOAT,
    `PANW` FLOAT,
    `PAYX` FLOAT,
    `PCAR` FLOAT,
    `PDD` FLOAT,
    `PEP` FLOAT,
    `PYPL` FLOAT,
    `QCOM` FLOAT,
    `REGN` FLOAT,
    `ROST` FLOAT,
    `SBUX` FLOAT,
    `SGEN` FLOAT,
    `SIRI` FLOAT,
    `SNPS` FLOAT,
    `TEAM` FLOAT,
    `TMUS` FLOAT,
    `TSLA` FLOAT,
	`TTD` FLOAT,
	`TXN` FLOAT,
	`VRSK` FLOAT,
	`VRTX` FLOAT,
	`WBA` FLOAT,
	`WBD` FLOAT,
	`WDAY` FLOAT,
	`XEL` FLOAT,
	`ZM` FLOAT,
	`ZS` FLOAT
);

SELECT * FROM detail;
SELECT * FROM prices;

DROP TABLE merged;
DROP TABLE prices;
DROP TABLE detail;

SHOW VARIABLES LIKE 'secure_file_priv';

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Details.csv' 
INTO TABLE detail 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/merged.csv' 
INTO TABLE prices 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(@var1, @var2, @var3, @var4, @var5, @var6, @var7, @var8, @var9, @var10, @var11, @var12, @var13, @var14, @var15, @var16, @var17, @var18, @var19, @var20, @var21, @var22, @var23, @var24, @var25, @var26, @var27, @var28, @var29, @var30, @var31, @var32, @var33, @var34, @var35, @var36, @var37, @var38, @var39, @var40, @var41, @var42, @var43, @var44, @var45, @var46, @var47, @var48, @var49, @var50, @var51, @var52, @var53, @var54, @var55, @var56, @var57, @var58, @var59, @var60, @var61, @var62, @var63, @var64, @var65, @var66, @var67, @var68, @var69, @var70, @var71, @var72, @var73, @var74, @var75, @var76, @var77, @var78, @var79, @var80, @var81, @var82, @var83, @var84, @var85, @var86, @var87, @var88, @var89, @var90, @var91, @var92, @var93, @var94, @var95, @var96, @var97, @var98, @var99, @var100, @var101, @var102)
SET 
  `Date` = NULLIF(@var1, ''),  AAPL = NULLIF(@var2, ''), ABNB = NULLIF(@var3, ''), ADBE = NULLIF(@var4, ''), ADI = NULLIF(@var5, ''), ADP = NULLIF(@var6, ''), ADSK = NULLIF(@var7, ''), AEP = NULLIF(@var8, ''), ALGN = NULLIF(@var9, ''), AMAT = NULLIF(@var10, ''), AMD = NULLIF(@var11, ''), AMGN = NULLIF(@var12, ''), AMZN = NULLIF(@var13, ''), ANSS = NULLIF(@var14, ''), ASML = NULLIF(@var15, ''), AVGO = NULLIF(@var16, ''), AZN = NULLIF(@var17, ''), BIIB = NULLIF(@var18, ''), BKNG = NULLIF(@var19, ''), BKR = NULLIF(@var20, ''), CDNS = NULLIF(@var21, ''), CEG = NULLIF(@var22, ''), CHTR = NULLIF(@var23, ''), CMCSA = NULLIF(@var24, ''), COST = NULLIF(@var25, ''), CPRT = NULLIF(@var26, ''), CRWD = NULLIF(@var27, ''), CSCO = NULLIF(@var28, ''), CSGP = NULLIF(@var29, ''), CSX = NULLIF(@var30, ''), CTAS = NULLIF(@var31, ''), CTSH = NULLIF(@var32, ''), DDOG = NULLIF(@var33, ''), DLTR = NULLIF(@var34, ''), DXCM = NULLIF(@var35, ''), EA = NULLIF(@var36, ''), EBAY = NULLIF(@var37, ''), ENPH = NULLIF(@var38, ''), EXC = NULLIF(@var39, ''), FANG = NULLIF(@var40, ''), FAST = NULLIF(@var41, ''), FTNT = NULLIF(@var42, ''), GEHC = NULLIF(@var43, ''), GFS = NULLIF(@var44, ''), GILD = NULLIF(@var45, ''), GOOG = NULLIF(@var46, ''), GOOGL = NULLIF(@var47, ''), HON = NULLIF(@var48, ''), IDXX = NULLIF(@var49, ''), ILMN = NULLIF(@var50, ''), INTC = NULLIF(@var51, ''), INTU = NULLIF(@var52, ''), ISRG = NULLIF(@var53, ''), JD = NULLIF(@var54, ''), KDP = NULLIF(@var55, ''), KHC = NULLIF(@var56, ''), KLAC = NULLIF(@var57, ''), LCID = NULLIF(@var58, ''), LRCX = NULLIF(@var59, ''), LULU = NULLIF(@var60, ''), MAR = NULLIF(@var61, ''), MCHP = NULLIF(@var62, ''), MDLZ = NULLIF(@var63, ''), MELI = NULLIF(@var64, ''), META = NULLIF(@var65, ''), MNST = NULLIF(@var66, ''), MRNA = NULLIF(@var67, ''), MRVL = NULLIF(@var68, ''), MSFT = NULLIF(@var69, ''), MU = NULLIF(@var70, ''), NFLX = NULLIF(@var71, ''), NVDA = NULLIF(@var72, ''), NXPI = NULLIF(@var73, ''), ODFL = NULLIF(@var74, ''), `ON` = NULLIF(@var75, ''), ORLY = NULLIF(@var76, ''), PANW = NULLIF(@var77, ''), PAYX = NULLIF(@var78, ''), PCAR = NULLIF(@var79, ''), PDD = NULLIF(@var80, ''), PEP = NULLIF(@var81, ''), PYPL = NULLIF(@var82, ''), QCOM = NULLIF(@var83, ''), REGN = NULLIF(@var84, ''), ROST = NULLIF(@var85, ''), SBUX = NULLIF(@var86, ''), SGEN = NULLIF(@var87, ''), SIRI = NULLIF(@var88, ''), SNPS = NULLIF(@var89, ''), TEAM = NULLIF(@var90, ''), TMUS = NULLIF(@var91, ''), TSLA = NULLIF(@var92, ''), TTD = NULLIF(@var93, ''), TXN = NULLIF(@var94, ''), VRSK = NULLIF(@var95, ''), VRTX = NULLIF(@var96, ''), WBA = NULLIF(@var97, ''), WBD = NULLIF(@var98, ''), WDAY = NULLIF(@var99, ''), XEL = NULLIF(@var100, ''), ZM = NULLIF(@var101, ''), ZS = NULLIF(@var102, '');

CREATE USER 'superset'@'localhost' IDENTIFIED BY 'sup1234!';
GRANT ALL PRIVILEGES ON dev_project.* TO 'superset'@'localhost';