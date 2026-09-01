# customer_behavior_data_analysis

Customer Behavior Analytics Dashboard

📌 Overview

This project analyzes customer shopping behavior using Python, SQL
(MySQL), and Power BI.

The project covers the complete data analytics workflow:

Loading the dataset in Python

Exploring and understanding the data

Cleaning and preparing the data

Running SQL queries on MySQL

Creating a Power BI dashboard

Generating business insights from customer behavior

📂 Dataset

The project uses a customer shopping behavior dataset containing
information such as:

Customer ID

Age

Gender

Category

Item Purchased

Purchase Amount

Review Rating

Shipping Type

Discount Applied

Subscription Status

Payment Method

Location

Previous Purchases

Purchase Frequency

Season

Size

Color

Dataset file used in Python:

customer_shopping_behavior.csv

🛠️ Tools & Technologies

Tool               Purpose

Python             Data analysis and preprocessing
Pandas             Data loading, cleaning and analysis
NumPy              Numerical operations
MySQL              SQL analysis and querying
SQLAlchemy         Connecting Python with MySQL
Power BI           Dashboard and data visualization
Jupyter Notebook   Python analysis environment

🔄 Project Workflow

1. Data Loading

The dataset was loaded into Python using Pandas.

import pandas as pd

df = pd.read_csv("customer_shopping_behavior.csv")

Initial checks were performed using functions such as:

df.head()
df.info()
df.shape
df.isnull().sum()
df.describe()

2. Exploratory Data Analysis (EDA)

EDA was performed to understand the dataset and identify important
patterns.

The analysis included:

Checking dataset dimensions

Checking data types

Identifying missing values

Checking duplicate records

Understanding numerical columns

Analyzing categorical columns

Studying customer purchase behavior

Comparing purchase amount across different customer segments

3. Data Cleaning

The data was cleaned and prepared before analysis.

Key activities included:

Handling missing values

Checking and removing duplicate records where required

Checking data types

Standardizing categorical values

Verifying numerical columns

Preparing the dataset for SQL and Power BI analysis

4. MySQL Analysis

The cleaned data was loaded into a MySQL database.

Database:

customer_behavior

Table:

customer

SQL queries were used to answer business-related questions, including:

Customer count

Revenue by gender

Revenue by category

Average purchase amount

Customer behavior by subscription status

Shipping type analysis

Discount rate

Top products within categories

Purchase behavior across different customer segments

Example SQL query:

SELECT 
    gender,
    SUM(purchase_amount) AS revenue
FROM customer
GROUP BY gender;

5. Power BI Dashboard

The MySQL data was connected to Power BI to create an interactive
dashboard.

The dashboard includes:

Number of Customers

Average Purchase Amount

Average Review Rating

Sales by Category

Revenue by Category

Customer % by Subscription Status

Sales by Age Group

Revenue by Age Group

Dashboard Filters

Users can interact with the dashboard using filters such as:

Subscription Status

Gender

Category

Shipping Type

📊 Dashboard

The Power BI dashboard provides a visual overview of customer behavior
and purchasing patterns.

Key KPIs

Number of Customers: 3.9K

Average Purchase Amount: $59.76

Average Review Rating: 3.75

Key Visualizations

Sales by Category

Revenue by Category

Subscription Status Distribution

Sales by Age Group

Revenue by Age Group

These visuals help identify high-performing categories, customer
segments, and purchasing trends.

📈 Results & Insights

The analysis helps businesses understand:

Which product categories generate higher sales and revenue

How customer behavior differs across age groups

The distribution of subscribed and non-subscribed customers

Differences in purchasing behavior by gender

The impact of shipping and discount-related factors

Which customer segments contribute more to revenue

The Power BI dashboard makes these insights easier to understand through
interactive visualizations.

▶️ How to Run the Project

Step 1: Install Required Python Libraries

pip install pandas numpy mysql-connector-python sqlalchemy

Step 2: Load the Dataset

Place the dataset in the same folder as the Jupyter Notebook:

customer_shopping_behavior.csv

Then load it using:

import pandas as pd

df = pd.read_csv("customer_shopping_behavior.csv")

Step 3: Run EDA and Data Cleaning

Open the Jupyter Notebook and run the data exploration and cleaning
cells.

Step 4: Set Up MySQL

Create the database:

CREATE DATABASE customer_behavior;

Create/use the required MySQL user and load the cleaned data into the
customer table.

Step 5: Run SQL Queries

Open MySQL Workbench and execute the SQL queries included in the project
to analyze customer behavior.

Step 6: Connect MySQL to Power BI

In Power BI:

Select Get Data

Select MySQL database

Enter the MySQL server and database details

Select the required table

Load the data into Power BI

Create the required visuals and dashboard

📁 Project Structure

Customer-Behavior-Analytics/
│
├── customer_shopping_behavior.csv
├── Customer_Behavior_Analysis.ipynb
├── SQL_Queries.sql
├── Customer_Behavior_Dashboard.pbix
└── README.md

🎯 Project Objective

The main objective of this project is to transform raw customer shopping
data into meaningful business insights using Python, MySQL, and Power
BI.

This project demonstrates practical skills in:

Data Cleaning

Exploratory Data Analysis

SQL

MySQL

Data Visualization

Power BI

Business Intelligence

Data-driven decision making

👩‍💻 Author

Prachi Kamboj

Data Analytics Project using Python, MySQL and Power BI.
