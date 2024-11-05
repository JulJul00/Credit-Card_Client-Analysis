

-- Cleaning, combining, and organzing data for use

-- Calculated Total Revenue, by adding Annual_Fees, Total_Transaction_Amount, and Interest_Earned
SELECT 
    (Annual_Fees + Total_Trans_Amt + Interest_Earned) AS Total_Revenue
FROM 
    cc_detail;
    
--  Extracted the week number within the year, sorted the columns chronologically
SELECT 
    Week_Start_Date,
    WEEK(Week_Start_Date) AS week_num
FROM 
    cc_detail;

-- Categorised customers in customer_age
SELECT 
    Customer_Age,
    CASE 
        WHEN Customer_Age < 30 THEN '20-30'
        WHEN Customer_Age >= 30 AND Customer_Age < 40 THEN '30-40'
        WHEN Customer_Age >= 40 AND Customer_Age < 50 THEN '40-50'
        WHEN Customer_Age >= 50 AND Customer_Age < 60 THEN '50-60'
        WHEN Customer_Age >= 60 THEN '60+'
        ELSE 'unknown'
    END AS age_group
FROM 
    cust_detail;

-- Categorised customers in Income
SELECT 
    Income,
    CASE 
        WHEN Income < 28000 THEN 'Low Income'
        WHEN Income >= 28000 AND Income < 56000 THEN 'Med Income'
        WHEN Income >= 56000 THEN 'High Income'
        ELSE 'unknown'
    END AS income_group
FROM 
    cust_detail;

-- Calculate WoW(Week-on-Week) transaction change in revenue, to observe the weekly trend
SELECT 
    Current_week_Revenue,
    Previous_week_Revenue,
    ((Current_week_Revenue - Previous_week_Revenue) / Previous_week_Revenue) * 100 AS WoW_Revenue_Change
FROM (
    SELECT 
        (SELECT SUM(Total_Revenue) 
         FROM cc_detail 
         WHERE week_num = (SELECT MAX(week_num) FROM cc_detail)) AS Current_week_Revenue,
        
        (SELECT SUM(Total_Revenue) 
         FROM cc_detail 
         WHERE week_num = (SELECT MAX(week_num) FROM cc_detail) - 1) AS Previous_week_Revenue
) AS Revenue_Data;

-- Calculate Total Customer Acquisition Cost(CAC), incurred to the total cost a company to acquire a new customer. 
-- Calculate Average Utilization ratio(AU Ratio), referred to the average percentage of credit card limits using by cardholders
SELECT 
    SUM(Total_Revolving_Bal) / SUM(Credit_Limit) AS AU_Ratio
FROM 
    cc_detail;

-- Calculate Deliquency Rate, referred to an account that cardholder has failed to make the minimum required payment by the due date
SELECT 
    (COUNT(CASE WHEN Delinquent_Acc = '1' THEN 1 END) / COUNT(*)) * 100 AS Delinquency_Rate
FROM 
    cc_detail;



