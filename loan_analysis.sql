-- Loan_Details Table Creation
CREATE TABLE Loan_Details (
    Loan_ID VARCHAR(10),
    Customer_ID VARCHAR(10),
    Gender VARCHAR(10),
    Married VARCHAR(3),
    Dependents VARCHAR(3),
    Education VARCHAR(15),
    Self_Employed VARCHAR(3),
    Applicant_Income INT,
    Coapplicant_Income INT,
    Loan_Amount INT,
    Loan_Amount_Term INT,
    Credit_History INT,
    Property_Area VARCHAR(10),
    Loan_Status VARCHAR(10)
);

-- 1. Total number of loan applications received
SELECT COUNT(*) AS total_applications FROM Loan_Details;

-- 2. Number of approved vs. rejected loans
SELECT Loan_Status, COUNT(*) AS total_count 
FROM Loan_Details  
GROUP BY Loan_Status;

-- 3. Average loan amount for approved and rejected loans
SELECT Loan_Status, AVG(Loan_Amount) AS avg_amt
FROM Loan_Details  
GROUP BY Loan_Status;

-- 4. Loan approval rate based on credit history
SELECT Loan_Status, Credit_History, COUNT(*) AS loan_count
FROM Loan_Details  
GROUP BY Loan_Status, Credit_History;

-- 5. Total loan amount requested by property area
SELECT Property_Area, SUM(Loan_Amount) AS total_loan_amount
FROM Loan_Details  
GROUP BY Property_Area;

-- 6. Find the average applicant income based on education level
SELECT Education, AVG(Applicant_Income) AS avg_income
FROM Loan_Details  
GROUP BY Education;

-- 7. Top 5 highest loan amounts applied for
SELECT Customer_ID, Loan_Amount 
FROM Loan_Details  
ORDER BY Loan_Amount DESC 
LIMIT 5;

-- 8. Count of self-employed vs. non-self-employed applicants
SELECT Self_Employed, COUNT(*) AS applicant_count
FROM Loan_Details  
GROUP BY Self_Employed;

-- 9. Loan approval rate for married vs. unmarried applicants
SELECT Married, Loan_Status, COUNT(*) AS count
FROM Loan_Details  
GROUP BY Married, Loan_Status;

-- 10. Loan approval percentage for each property area
SELECT Property_Area, 
       SUM(CASE WHEN Loan_Status = 'Approved' THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS approval_percentage
FROM Loan_Details  
GROUP BY Property_Area;

-- 11. Find the most common loan term chosen by applicants
SELECT Loan_Amount_Term, COUNT(*) AS term_count
FROM Loan_Details  
GROUP BY Loan_Amount_Term
ORDER BY term_count DESC
LIMIT 1;

-- 12. Average loan amount by number of dependents
SELECT Dependents, AVG(Loan_Amount) AS avg_loan_amount
FROM Loan_Details  
GROUP BY Dependents;

-- 13. Identify the top 3 highest applicant incomes for rejected loans
SELECT Customer_ID, Applicant_Income
FROM Loan_Details 
WHERE Loan_Status = 'Rejected' 
ORDER BY Applicant_Income DESC 
LIMIT 3;

-- 14. Compare average loan amounts between self-employed and salaried applicants
SELECT Self_Employed, AVG(Loan_Amount) AS avg_loan_amount
FROM Loan_Details  
GROUP BY Self_Employed;

-- 15. Find the percentage of loans approved for applicants with a credit history
SELECT Credit_History, 
       SUM(CASE WHEN Loan_Status = 'Approved' THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS approval_percentage
FROM Loan_Details  
GROUP BY Credit_History;
