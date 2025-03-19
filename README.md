# sql-world-layoffs-cleaning
Data cleaning and analysis project on world layoffs dataset using SQL. Includes CTEs, joins, date formatting, and window functions.
# 🧹 SQL Data Cleaning Project: World Layoffs Dataset

Welcome to my first SQL data cleaning project! In this project, I used **SQL joins, window functions, and advanced queries** to clean and analyze a real-world dataset on global layoffs.

## 📊 Dataset Overview
The dataset contains information about company layoffs across the globe, including:
- Company name
- Location
- Industry
- Layoff count
- Dates
- Funding raised
- Country and more

## 🛠️ Tools Used
- MySQL
- SQL Window Functions
- Common Table Expressions (CTEs)

## 🔍 Key Tasks Performed
1. **Created a staging table** to work on data without modifying the original.
2. **Removed duplicate entries** using `ROW_NUMBER()` and CTEs.
3. **Converted date formats** to standard SQL `DATE` format.
4. **Used `DENSE_RANK()`** to rank layoffs by company and industry.
5. **Handled missing values** using `AVG()` and `NULLIF()` with `JOIN`.
6. **Exploratory queries** for summary insights on countries and companies with missing data.


📈 Read More on My Blog
I wrote a blog post about my process here:
👉 My First Data Cleaning Project with SQL : https://medium.com/@richapragya003/my-first-data-cleaning-project-with-sql-eb6d6da2ada6

📁 Project Files
layoffs_data.sql – Raw SQL table structure & data
data_cleaning_script.sql – All queries used in the cleaning process
README.md – Project documentation
🤝 Let's Connect!
Feel free to reach out or suggest improvements. Contributions are welcome!

