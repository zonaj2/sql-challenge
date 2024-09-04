# SQL Challenge

## Background

It’s been two weeks since you were hired as a new data engineer at Pewlett Hackard (a fictional company). Your first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

For this project, you’ll design the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data. That is, you’ll perform data modeling, data engineering, and data analysis.


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


