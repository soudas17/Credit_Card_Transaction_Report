CREATE TABLE Customer_Details
(
  Client_Num VARCHAR(11),
  Customer_Age INT,
  Gender VARCHAR(11),
  Dependent_Count VARCHAR(10),
  Education_Level VARCHAR(20),
  Marital_Status VARCHAR (25),
  state_cd VARCHAR(15),
  Zipcode VARCHAR(10),
  Car_Owner VARCHAR(10),
  House_Owner VARCHAR(10),
  Personal_loan VARCHAR(10),
  contact VARCHAR(30),
  Customer_Job VARCHAR(40),
  Income DECIMAL(20,2),
  Income_INR DECIMAL(20,2) ,
  Cust_Satisfaction_Score INT
);
ALTER TABLE Customer_Details
ALTER COLUMN Customer_Id TYPE VARCHAR(15);

SELECT * FROM Customer_Details;
DROP TABLE Customer_Details;

ALTER TABLE Customer_Details
RENAME COLUMN Client_Num TO Customer_Id;

COPY Customer_Details
(
  Client_Num ,Customer_Age ,Gender ,Dependent_Count ,Education_Level ,Marital_Status ,state_cd ,
  Zipcode ,Car_Owner,House_Owner,Personal_loan ,contact,Customer_Job ,Income ,Income_INR,Cust_Satisfaction_Score
)
FROM 'C:\Practice_File_SD\Power Bi\Project\Credit_card\customer.csv'
DELIMITER ','
CSV HEADER
ENCODING 'WIN1252'  ;


CREATE TABLE Credit_Card_Details
(
 Customer_Id VARCHAR(15),
 Card_Category VARCHAR(20),
 Annual_Fees VARCHAR(30),
 Activation_30_Days VARCHAR(10),
 Customer_Acq_Cost VARCHAR(5),
 Week_Start_Date DATE,
 Week_Num VARCHAR(10),
 Qtr INT,
 current_year INT,
 Credit_Limit DECIMAL(20,2),
 Credit_Limit_INR DECIMAL(20,2),
 Total_Revolving_Bal DECIMAL(20,2),
 Total_Revolving_Bal_INR DECIMAL (20,2),
 Total_Trans_Amt DECIMAL(20,2),
 Total_Trans_Amt_INR DECIMAL(20,2),
 Total_Trans_Vol INT,
 Avg_Utilization_Ratio INT,
 Use_Chip VARCHAR(15),
 Exp_Type VARCHAR(20),
 Interest_Earned DECIMAL(9,2),
 Delinquent_Acc VARCHAR(10)
);

SET datestyle = 'DMY';

ALTER TABLE Credit_Card_Details
ALTER COLUMN QTR TYPE VARCHAR(5) ;

ALTER TABLE Credit_Card_Details
ALTER COLUMN Avg_Utilization_Ratio TYPE DECIMAL(10,3) ;

COPY Credit_Card_Details
(
 Customer_Id ,Card_Category ,Annual_Fees, Activation_30_Days, Customer_Acq_Cost ,Week_Start_Date ,Week_Num ,Qtr,
 current_year ,Credit_Limit ,Credit_Limit_INR ,Total_Revolving_Bal,
 Total_Revolving_Bal_INR ,Total_Trans_Amt,Total_Trans_Amt_INR ,Total_Trans_Vol,
 Avg_Utilization_Ratio ,Use_Chip ,Exp_Type ,Interest_Earned ,Delinquent_Acc 
)
FROM 'C:\Practice_File_SD\Power Bi\Project\Credit_card\credit_card.csv'
DELIMITER ','
CSV HEADER
ENCODING 'WIN1252' ;


SELECT * FROM Credit_Card_Details;














