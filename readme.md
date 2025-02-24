# Loan Approval Analysis - SQL Project

## Overview
This project contains SQL queries for analyzing bank loan approval data. It helps in understanding loan approval trends, applicant demographics, and financial statistics using structured queries.

## Dataset Structure
The dataset consists of the following columns:
- **Loan_ID**: Unique identifier for each loan.
- **Customer_ID**: Unique identifier for each applicant.
- **Gender**: Gender of the applicant (Male/Female).
- **Married**: Marital status (Yes/No).
- **Dependents**: Number of dependents.
- **Education**: Education level (Graduate/Not Graduate).
- **Self_Employed**: Indicates if the applicant is self-employed (Yes/No).
- **Applicant_Income**: Income of the applicant.
- **Coapplicant_Income**: Income of the co-applicant (if any).
- **Loan_Amount**: Amount of loan requested.
- **Loan_Amount_Term**: Term of the loan (in months).
- **Credit_History**: Credit history score (1 for good credit, 0 for bad credit).
- **Property_Area**: Type of property area (Urban, Semi-Urban, Rural).
- **Loan_Status**: Loan approval status (Approved/Rejected).

## SQL Queries Included
This project includes a set of SQL queries that analyze loan data in various ways. Each query provides insights into different aspects of loan approvals.

### **1. Total Number of Loan Applications Received**
- Counts the total number of loan applications in the dataset.

### **2. Number of Approved vs. Rejected Loans**
- Groups loans based on approval status and counts how many loans are approved and rejected.

### **3. Average Loan Amount for Approved and Rejected Loans**
- Calculates the average loan amount for approved and rejected applications.

### **4. Loan Approval Rate Based on Credit History**
- Groups loans by credit history and approval status to analyze approval trends.

### **5. Total Loan Amount Requested by Property Area**
- Sums up the total loan amounts requested in each property area.

### **6. Average Applicant Income Based on Education Level**
- Calculates the average income of applicants grouped by education level.

### **7. Top 5 Highest Loan Amounts Applied For**
- Identifies the five highest loan applications by amount.

### **8. Count of Self-Employed vs. Non-Self-Employed Applicants**
- Counts how many applicants are self-employed and how many are not.

### **9. Loan Approval Rate for Married vs. Unmarried Applicants**
- Groups data by marital status and loan status to analyze approval rates.

### **10. Loan Approval Percentage for Each Property Area**
- Calculates the percentage of approved loans for each property area using conditional aggregation.

### **11. Most Common Loan Term Chosen by Applicants**
- Finds the most frequently chosen loan term by counting occurrences.

### **12. Average Loan Amount by Number of Dependents**
- Computes the average loan amount grouped by the number of dependents.

### **13. Top 3 Highest Applicant Incomes for Rejected Loans**
- Lists the top three highest incomes among applicants whose loans were rejected.

### **14. Comparison of Average Loan Amounts Between Self-Employed and Salaried Applicants**
- Compares the average loan amounts requested by self-employed and salaried applicants.

### **15. Percentage of Loans Approved for Applicants with a Credit History**
- Calculates the percentage of approved loans among applicants who have a credit history.

## How to Use
### **Step 1: Set Up a Database**
1. Install a database system (MySQL, PostgreSQL, SQLite, or any SQL-compatible database).
2. Create a database, for example:
   ```sql
   CREATE DATABASE LoanAnalysis;
   USE LoanAnalysis;
   ```
3. Run the `loan_analysis.sql` script to create the necessary table and execute queries.

### **Step 2: Import Data**
1. If you have loan data in a CSV file, import it into the `Loan_Details` table.
   ```sql
   LOAD DATA INFILE 'loan_data.csv' 
   INTO TABLE Loan_Details 
   FIELDS TERMINATED BY ',' 
   IGNORE 1 ROWS;
   ```

### **Step 3: Run Queries**
1. Execute queries from `loan_analysis.sql` to analyze the data.
2. Modify or add additional queries based on your analysis needs.

## Tools Required
- MySQL, PostgreSQL, SQLite, or any SQL-compatible database system.
- SQL client (MySQL Workbench, pgAdmin, DBeaver, or VS Code with SQL extensions).

## Expected Insights
By running the SQL queries, you can expect insights like:
- What percentage of loan applications get approved?
- Do applicants with a credit history have a higher approval rate?
- How does income affect loan approval?
- Which property area has the highest loan amounts?
- Are self-employed applicants getting fewer approvals?

