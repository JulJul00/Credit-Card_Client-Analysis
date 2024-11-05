

-- Craft a data repository within the framework of MySQL
CREATE DATABASE credit_card_db;

-- Build tables for both Transaction and Customer data within the database database
-- Create Tables
CREATE TABLE cc_detail (
    Customer_Num INT PRIMARY KEY,
    Card_Category VARCHAR(20),
    Annual_Fees INT,
    Activation_30_Days INT,
    Customer_Acq_Cost INT,
    Week_Start_Date DATE,
    Week_Num VARCHAR(20),
    Qtr VARCHAR(10),
    current_year INT,
    Credit_Limit DECIMAL(10,2),
    Total_Revolving_Bal INT,
    Total_Trans_AMT INT,
    Total_Trans_Ct INT,
    Avg_Utilization_Ratio DECIMAL(10,3),
    Use_Chip VARCHAR(10),
    Exp_Type VARCHAR(50),
    Interest_Earned DECIMAL(10,3),
    Delinquent_Acc VARCHAR(5)
);
    
  CREATE TABLE cust_detail (
    Customer_Num INT PRIMARY KEY,
    Customer_Age INT,
    Gender VARCHAR(5),
    Dependent_Count INT,
    Education_Level VARCHAR(50),
    Marital_Status VARCHAR(20),
    State_cd VARCHAR(50),
    Zipcode VARCHAR(20),
    Car_Owner VARCHAR(5),
    House_Owner VARCHAR(5),
    Personal_Loan VARCHAR(5),
    Contact VARCHAR(50),
    Customer_Job VARCHAR(50),
    Income INT,
    Cust_Satisfaction_Score INT
);

-- Import data into database
LOAD DATA INFILE 'C:/Users/julia/OneDrive/桌面/認真區/side project/Credit_Card_Detail.csv'
INTO TABLE cc_detail
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:/Users/julia/OneDrive/桌面/認真區/side project/Customer_Detail.csv'
INTO TABLE cust_detail
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


-- Utilizing dataset for the first time, performing checks for inconsistencies, errors, and general data ranges

-- 1) Null Check

SELECT
    SUM(CASE WHEN Customer_Num IS NULL THEN 1 ELSE 0 END) AS nullcount_Customer_Num,
    SUM(CASE WHEN Card_Category IS NULL THEN 1 ELSE 0 END) AS nullcount_Card_Category,
    SUM(CASE WHEN Annual_Fees IS NULL THEN 1 ELSE 0 END) AS nullcount_Annual_Fees,
    SUM(CASE WHEN Activation_30_Days IS NULL THEN 1 ELSE 0 END) AS nullcount_Activation_30_Days,
    SUM(CASE WHEN Customer_Acq_Cost IS NULL THEN 1 ELSE 0 END) AS nullcount_Customer_Acq_Cost,
    SUM(CASE WHEN Week_Start_Date IS NULL THEN 1 ELSE 0 END) AS nullcount_Week_Start_Date,
    SUM(CASE WHEN Week_Num IS NULL THEN 1 ELSE 0 END) AS nullcount_Week_Num,
    SUM(CASE WHEN Qtr IS NULL THEN 1 ELSE 0 END) AS nullcount_Qtr,
    SUM(CASE WHEN current_year IS NULL THEN 1 ELSE 0 END) AS nullcount_current_year,
    SUM(CASE WHEN Credit_Limit IS NULL THEN 1 ELSE 0 END) AS nullcount_Credit_Limit,
    SUM(CASE WHEN Total_Revolving_Bal IS NULL THEN 1 ELSE 0 END) AS nullcount_Total_Revolving_Bal,
    SUM(CASE WHEN Total_Trans_Amt IS NULL THEN 1 ELSE 0 END) AS nullcount_Total_Trans_Amt,
    SUM(CASE WHEN Total_Trans_CT IS NULL THEN 1 ELSE 0 END) AS nullcount_Total_Trans_CT,
    SUM(CASE WHEN Avg_Utilization_Ratio IS NULL THEN 1 ELSE 0 END) AS nullcount_Avg_Utilization_Ratio,
    SUM(CASE WHEN Use_Chip IS NULL THEN 1 ELSE 0 END) AS nullcount_Use_Chip,
    SUM(CASE WHEN Exp_Type IS NULL THEN 1 ELSE 0 END) AS nullcount_Exp_Type,
    SUM(CASE WHEN Interest_Earned IS NULL THEN 1 ELSE 0 END) AS nullcount_Interest_Earned,
    SUM(CASE WHEN Delinquent_Acc IS NULL THEN 1 ELSE 0 END) AS nullcount_Delinquent_Acc,
FROM cc_detail
;
