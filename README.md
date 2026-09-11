# E-Commerce Data Engineering Pipeline

## 📌 Project Overview

This project is an E-Commerce Data Engineering Pipeline built using Python, Pandas, MySQL, and SQL.

The project takes raw e-commerce order data from a CSV file, cleans and transforms the data using Python and Pandas, loads the data into a MySQL database, and performs SQL analysis to generate useful business insights.

## 🔄 ETL Pipeline

CSV Dataset
↓
Python / Pandas
↓
Data Cleaning
↓
MySQL Database
↓
SQL Analysis
↓
Cleaned Output

## 🛠️ Technologies Used

- Python
- Pandas
- MySQL
- SQL
- MySQL Connector
- VS Code
- GitHub

## 📂 Project Structure

Ecommerce_Data_Engineering/

├── data/
│   └── ecommerce_orders.csv
│
├── src/
│   └── load_data.py
│
├── sql/
│   └── analysis.sql
│
├── output/
│   └── cleaned_orders.csv
│
└── README.md

## ⚙️ ETL Process

### 1. Extract
The project reads e-commerce order data from a CSV file using Pandas.

### 2. Transform
The data is cleaned by:
- Removing duplicate records
- Converting order dates into the correct date format
- Saving the cleaned dataset

### 3. Load
The transformed data is loaded into a MySQL database using Python and MySQL Connector.

## 📊 SQL Analysis

The project performs SQL analysis such as:

- Total number of orders
- Total sales
- Sales by city
- Best-selling products
- Highest-value order
- Sales by product
- Sales by category
- Average order value
- Unique customers
- Repeat customers
- Top customer by spending
- Monthly sales

## 🎯 Project Objective

The main objective of this project is to understand and implement a basic real-world data engineering workflow involving data extraction, transformation, database loading, and SQL analysis.

## 👩‍💻 Author

Lavanya M