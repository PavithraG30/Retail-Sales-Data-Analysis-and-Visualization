# Retail Sales: Data Analysis and Visualization

## Overview
This project provides an in-depth analysis of retail sales data for the year 2023. It demonstrates the use of **MySQL** for data manipulation, **Tableau** for visualization, and **Visual Studio** for query development and testing. The objective of this analysis was to extract actionable insights from the sales dataset, such as revenue trends, product category performance, and demographic-based patterns.

---

## Project Objectives
1. Analyze retail sales data to understand total revenue and category-based performance in 2023.  
2. Create dynamic, interactive visualizations for data storytelling.  
3. Showcase proficiency in data analysis, database management, and visualization tools.  

---

## Tools & Technologies
- **MySQL**: For executing SQL queries to clean, manipulate, and analyze data.  
- **Visual Studio**: Used as a code editor for writing and testing SQL queries.  
- **Tableau**: For building interactive dashboards and visualizations.  

---

## Dataset Details
The dataset contains the following columns:
- **Transaction ID**: Unique identifier for each transaction.  
- **Date**: Date of the transaction.  
- **Customer ID**: Unique identifier for each customer.  
- **Gender**: Customer's gender.  
- **Age**: Customer's age.  
- **Product Category**: Category of the product sold.  
- **Quantity**: Quantity of the product sold.  
- **Price per Unit**: Price of a single unit of the product.  
- **Total Amount**: Total revenue generated from the transaction.  

---

## Key Features

### SQL Queries
- Developed **10 SQL queries** to extract key insights:  
  - Monthly revenue trends.  
  - Best-performing product categories.  
  - Demographic analysis (e.g., revenue by gender and age).  
- Queries are saved in the file: **`queries.sql`**.  

### Tableau Visualizations
- **Sheet 1**: Monthly Revenue for 2023 - Displays revenue trends over the months.  
- **Sheet 2**: Revenue by Product Category - Highlights the contribution of each product category.  
- **Dashboard**: Combines both sheets into an interactive, professional dashboard.  
- Visualizations are exported as **images** and a **PDF**.  
- **Data Cleaning**: Although preprocessing was not required, future work can involve handling missing data or outliers in the dataset.  
- **Feature Engineering**: Total Revenue was computed as **Quantity * Price per Unit**.  
- **Exploratory Data Analysis (EDA)**: Used SQL and Tableau to analyze revenue trends and identify patterns.  
- **Data Visualization**: Presented key metrics and insights interactively via Tableau.  

---

## Steps to Reproduce

### SQL Queries
1. Import the dataset into a MySQL database.  
2. Execute the queries provided in **`queries.sql`** using MySQL Workbench or Visual Studio.  

### Tableau Visualizations
1. Open the Tableau workbook **`RetailD.twbx`** in Tableau Desktop or Tableau Public.  
2. Explore the sheets and dashboard for interactive insights.  

### Exported Outputs
- View **images** of visualizations and the full **PDF document** in the `visualizations/` folder.  

---

## Key Insights
1. **Total Revenue (2023)**: Identified the monthly revenue pattern with peaks in specific months.  
2. **Best-Performing Categories**: Highlighted top-selling product categories contributing to total sales.  
3. **Demographic Analysis**: Gender and age trends revealed customer purchasing behavior.  

---

## Project Structure

Retail-Sales-Data-Analysis-and-Visualization/
├── data/                   # Folder for datasets and raw files
│   └── retail_sales_dataset.csv
├── scripts/                # SQL scripts and related files
│   └── Retail.sql
├── visualizations/         # All visual outputs and charts
│   ├── Monthly Revenue.png
│   ├── Product Category.png
│   └── Retail Sales Analysis.png
├── models/                 # Database or ER diagrams
│   └── EER.mwb
├── reports/                # Final reports or PDFs
│   └── Retail_Sales_Analysis.pdf
├── dashboards/             # Tableau workbooks
│   └── Retail_Sales_Analysis.twbx
├── README.md               # Project overview

---

## Future Enhancements
1. **Advanced Visualizations**: Adding geographical mapping and advanced filters.  
2. **Integration**: Combining SQL and Tableau with Python for more dynamic data analysis workflows.  
3. **Predictive Analysis**: Using machine learning models to forecast future revenue trends.  

---

## Usage
- **Portfolio**: Use this project to demonstrate your data analytics and visualization skills.  
- **GitHub**: Upload it to your GitHub portfolio to showcase your understanding of SQL and Tableau.  
- **Professional Reference**: Reference this work when applying for roles requiring data analysis, business intelligence, or data visualization skills. 