# SQL Challenge

## Background
In this assignment I took on the role of data engineer employee at a fictional company called Pewlett Hackard.  
I was tasked with a project to research people that the company employed during the 1980s and 1990s. 
The only data I had to work with included 6 CSV files with varying employee information.
I performed data modeling, data engineering, and data analysis.

## Data Modeling
1. Inspected the CSV files.
2. Created an Entity Relationship Diagram (ERD) of db tables and relationships.

  ![ERD](EmployeeSQL/ERD.png)
  

## Data Engineering
1. Created a table schema for each CSV file specifying the data types, primary keys, foreign keys, and other constraints such as composite keys.
   - All required columns are defined for each table (10 points)
   - Columns are set to the correct data type (10 points)
   - Primary Keys set for each table (10 points)
   - Correctly references related tables (10 points)
   - Tables are correctly related using Foreign Keys (10 points)
   - Correctly uses NOT NULL condition on necessary columns (10 points)
   - Accurately defines value length for columns (10 points)
     
2. Imported each CSV file into its corresponding SQL table.

## Data Analysis
1. Wrote SQL queries to further understand the employee data:



      ![Employees](EmployeeSQL/SQL_Challenge.sql)


