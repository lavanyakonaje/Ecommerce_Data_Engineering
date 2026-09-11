import pandas as pd
import mysql.connector
from dotenv import load_dotenv
import os

# Load environment variables
load_dotenv()

# =========================
# EXTRACT
# =========================

df = pd.read_csv("data/ecommerce_orders.csv")

print("Data extracted successfully!")

# =========================
# TRANSFORM
# =========================

# Remove duplicate rows
df = df.drop_duplicates()

# Convert order_date to date format
df["order_date"] = pd.to_datetime(df["order_date"])

# Save cleaned data
df.to_csv("output/cleaned_orders.csv", index=False)

print("Data transformed successfully!")
print("Cleaned data saved successfully!")

# =========================
# LOAD
# =========================

connection = mysql.connector.connect(
    host=os.getenv("DB_HOST"),
    user=os.getenv("DB_USER"),
    password=os.getenv("DB_PASSWORD"),
    database=os.getenv("DB_NAME")
)

cursor = connection.cursor()

query = """
INSERT IGNORE INTO orders
(order_id, customer_id, product, category, quantity, price, order_date, city)
VALUES (%s, %s, %s, %s, %s, %s, %s, %s)
"""

for _, row in df.iterrows():
    cursor.execute(query, (
        row["order_id"],
        row["customer_id"],
        row["product"],
        row["category"],
        row["quantity"],
        row["price"],
        row["order_date"].date(),
        row["city"]
    ))

connection.commit()

print("Data loaded into MySQL successfully!")

# =========================
# CLOSE CONNECTION
# =========================

cursor.close()
connection.close()

print("ETL pipeline completed successfully!")