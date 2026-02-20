# Repository-name-SQL-Practice-Public-
This repository contains my SQL practice work including database creation, table creation, data insertion, and query execution using MySQL. It demonstrates my foundational understanding of SQL for Data Analytics.
# 🌍 SQL Practice Project – World & Sakila Database

## 📌 Overview

This project contains SQL queries practiced on the **World** and **Sakila** databases using MySQL.

The focus of this 
practice was:

- Data Filtering
- OR & IN Operators
- BETWEEN Operator
- LIKE Operator & Wildcards
- Built-in Aggregate Functions
- COUNT & DISTINCT
- GROUP BY
- HAVING
- Continent-wise Data Analysis
- Population Density & GNP Per Capita Calculations

---

## 🛠️ Database Used

1. World Database  
2. Sakila Database  
3. MySQL

---

# 🌎 WORLD DATABASE PRACTICE

## 🔹 1. Filtering Data

- Used `WHERE` clause
- Applied `OR` operator to filter continents
- Used `IN` operator for multiple values in the same column
- Used `BETWEEN` for range filtering (Life Expectancy & Country Names)

Example Topics:
- Countries in Asia, Africa, Europe
- Life expectancy between 40 and 55
- Alphabetical filtering (China to India)

---

## 🔹 2. Built-in Aggregate Functions

Used:

- `SUM()`
- `AVG()`
- `ROUND()`
- `COUNT()`
- `DISTINCT`

Performed calculations like:

- Total world population
- Average world population
- Average life expectancy
- Total surface area
- Average GNP
- Counting continents and countries

---

## 🔹 3. GROUP BY

Grouped data by continent to calculate:

- Total continent population
- Average life expectancy per continent
- Average GNP per continent
- Total surface area per continent

---

## 🔹 4. HAVING Clause

Used `HAVING` to filter grouped data.

Example:
- Continents with surface area greater than 25 million sq km.

---

## 🔹 5. Analytical Calculations

### ✔ Population Density
Calculated using:

Total Population / Total Surface Area

### ✔ GNP Per Capita
Calculated using:

Total GNP / Total Population

Both calculations were performed continent-wise using proper aggregation.

---

# 🎬 SAKILA DATABASE PRACTICE

## 🔹 1. LIKE Operator

Used pattern matching with:

- `%` → Any number of characters
- `_` → Fixed number of characters

Examples practiced:

- Titles starting with 'A'
- Titles ending with 'a'
- Titles containing 'a'
- Titles not containing 'a'
- Special features containing "Deleted Scenes"
- Description containing "drama"
- Actor names with fixed character patterns

---

## 🎯 Key Learning Outcomes

- Improved understanding of SQL filtering techniques
- Correct usage of aggregate functions
- Learned difference between WHERE and HAVING
- Practiced grouping data logically
- Performed real-world analytical calculations
- Improved SQL query structuring and readability

---

## 👩‍💻 Author

Anjali Rawat  
BSc Computer Science  
Aspiring Data Analyst  

Skills:
- SQL
- Python
- Data Analysis
- Data Visualization
