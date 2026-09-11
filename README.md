# 🛒 E-Commerce Data Engineering Pipeline

![Python](https://img.shields.io/badge/Python-3.x-blue)
![Pandas](https://img.shields.io/badge/Pandas-Data%20Processing-150458)
![MySQL](https://img.shields.io/badge/MySQL-Database-4479A1)
![SQL](https://img.shields.io/badge/SQL-Analysis-orange)
![GitHub](https://img.shields.io/badge/GitHub-Version%20Control-black)

## 📌 Project Overview

The **E-Commerce Data Engineering Pipeline** is a beginner-friendly end-to-end data engineering project that demonstrates how raw business data can be transformed into clean, structured, and analysis-ready data.

The pipeline extracts e-commerce order data from a CSV file, cleans and transforms the data using **Python and Pandas**, loads the processed data into **MySQL**, and performs **SQL analysis** to generate meaningful business insights.

This project demonstrates the fundamental **ETL (Extract, Transform, Load)** workflow used in data engineering.

---

## 🎯 Project Objective

The main objective of this project is to build a simple real-world data pipeline that demonstrates:

* Data extraction from CSV
* Data cleaning and transformation
* Loading data into a relational database
* SQL-based data analysis
* Business insight generation
* Basic data pipeline automation using Python
* Version control using Git and GitHub

---

## 🏗️ Data Engineering Architecture

```text
              📄 Raw CSV Data
                     │
                     ▼
              🐍 Python + Pandas
                     │
                     ▼
          🔄 Data Cleaning & Transformation
                     │
                     ▼
              🗄️ MySQL Database
                     │
                     ▼
                📊 SQL Analysis
                     │
                     ▼
             💡 Business Insights
```

---

## 🔄 ETL Pipeline

### 1️⃣ Extract

The pipeline reads raw e-commerce order data from a CSV file using **Pandas**.

```python
df = pd.read_csv("data/ecommerce_orders.csv")
```

### 2️⃣ Transform

The raw data is cleaned and transformed by:

* Removing duplicate records
* Converting order dates into the correct date format
* Preparing the dataset for database loading
* Saving the cleaned dataset as a CSV file

```python
df = df.drop_duplicates()
df["order_date"] = pd.to_datetime(df["order_date"])
```

### 3️⃣ Load

The transformed data is loaded into a **MySQL database** using Python and MySQL Connector.

```text
Cleaned CSV
     ↓
Python
     ↓
MySQL
     ↓
orders table
```

---

## 📊 SQL Analysis

The project performs several business-oriented SQL queries, including:

| Analysis              | Purpose                                      |
| --------------------- | -------------------------------------------- |
| Total Orders          | Measure order volume                         |
| Total Sales           | Calculate overall revenue                    |
| Sales by City         | Compare geographical sales                   |
| Best-Selling Products | Identify products with highest quantity sold |
| Highest-Value Order   | Find the largest individual order            |
| Sales by Product      | Compare product revenue                      |
| Sales by Category     | Compare category performance                 |
| Average Order Value   | Measure average order size                   |
| Unique Customers      | Count distinct customers                     |
| Repeat Customers      | Identify returning customers                 |
| Top Customer          | Find highest-spending customer               |
| Monthly Sales         | Analyze sales over time                      |

---

## 💡 Sample Business Insights

Using the sample dataset, the pipeline can answer questions such as:

* Which city generates the highest sales?
* Which product sells the most units?
* Which product generates the highest revenue?
* Which customer spends the most?
* How many customers placed multiple orders?
* What is the average order value?
* How do sales change month by month?

For example, the analysis identified:

**Total Orders:** 10
**Total Sales:** ₹2,12,300
**Unique Customers:** 9
**Highest-Value Order:** ₹62,000
**Best-Selling Product by Quantity:** Keyboard

---

## 🛠️ Technologies Used

* **Python** – ETL pipeline
* **Pandas** – Data processing and transformation
* **MySQL** – Relational database
* **SQL** – Data analysis
* **MySQL Connector** – Python-to-MySQL connection
* **python-dotenv** – Secure environment variable management
* **Git** – Version control
* **GitHub** – Project hosting
* **VS Code** – Development environment

---

## 📂 Project Structure

```text
Ecommerce_Data_Engineering/
│
├── 📁 data/
│   └── ecommerce_orders.csv
│
├── 📁 src/
│   └── load_data.py
│
├── 📁 sql/
│   └── analysis.sql
│
├── 📁 output/
│   └── cleaned_orders.csv
│
├── 📄 .gitignore
└── 📄 README.md
```

> 🔐 Database credentials are stored in a local `.env` file and are excluded from GitHub using `.gitignore`.

---

## ⚙️ How to Run the Project

### Step 1: Clone the Repository

```bash
git clone https://github.com/lavanyakonaje/Ecommerce_Data_Engineering.git
```

### Step 2: Navigate to the Project

```bash
cd Ecommerce_Data_Engineering
```

### Step 3: Install Required Libraries

```bash
pip install pandas mysql-connector-python python-dotenv
```

### Step 4: Configure Environment Variables

Create a `.env` file:

```text
DB_HOST=localhost
DB_USER=root
DB_PASSWORD=YOUR_MYSQL_PASSWORD
DB_NAME=ecommerce
```

### Step 5: Create the MySQL Table

```sql
CREATE DATABASE ecommerce;

USE ecommerce;

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id VARCHAR(20),
    product VARCHAR(100),
    category VARCHAR(50),
    quantity INT,
    price DECIMAL(10,2),
    order_date DATE,
    city VARCHAR(50)
);
```

### Step 6: Run the ETL Pipeline

```bash
python src/load_data.py
```

Expected output:

```text
Data extracted successfully!
Data transformed successfully!
Cleaned data saved successfully!
Data loaded into MySQL successfully!
ETL pipeline completed successfully!
```

### Step 7: Run SQL Analysis

Open:

```text
sql/analysis.sql
```

Run the queries in MySQL to generate business insights.

---

## 🔐 Security

Sensitive database credentials are **not stored in the GitHub repository**.

The project uses:

```text
.env
```

for local database credentials and:

```text
.gitignore
```

to prevent `.env` from being committed to GitHub.

---

## 🚀 Key Data Engineering Concepts Demonstrated

This project helped me understand and implement:

* ETL pipeline development
* Data extraction
* Data cleaning
* Data transformation
* Data loading
* Relational databases
* SQL aggregation
* `GROUP BY`
* `HAVING`
* `ORDER BY`
* Aggregate functions
* Customer analysis
* Business-oriented data analysis
* Python–MySQL integration
* Environment variables
* Git and GitHub

---

## 🎓 What I Learned

Through this project, I learned how raw data moves through a basic data engineering pipeline:

```text
Raw Data
   ↓
Extract
   ↓
Transform
   ↓
Load
   ↓
Store
   ↓
Analyze
   ↓
Business Insights
```

The project gave me practical experience in connecting **Python, Pandas, MySQL, and SQL** into one complete workflow.

---

## 🔮 Future Improvements

The pipeline can be extended with:

* ☁️ AWS S3 for cloud data storage
* ⚡ Apache Spark / PySpark for large datasets
* 🔄 Apache Airflow for workflow orchestration
* 🏢 Data warehouse integration
* 📊 Power BI dashboard
* 🐳 Docker containerization
* 📈 Larger real-world datasets
* 🔍 Data quality validation
* ☁️ Cloud-based ETL deployment

---

## 👩‍💻 Author

**Lavanya M**

B.E. Data Science Student
Aspiring **Data Engineer**

### 🔗 GitHub

https://github.com/lavanyakonaje

---

## ⭐ Project Highlights

> **Extract → Transform → Load → Store → Analyze**

A practical beginner-level Data Engineering project demonstrating an end-to-end pipeline using **Python, Pandas, MySQL, and SQL**.

If you found this project useful, consider giving the repository a ⭐.
