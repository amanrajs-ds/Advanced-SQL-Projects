# 📚 SQL Online Book Store Analysis

## 📌 Project Overview

This project focuses on analyzing an **Online Book Store database using SQL**.

The analysis uses multiple SQL queries to extract meaningful information about books, customers, orders, sales, revenue, stock availability, genres, authors, and customer purchasing behavior.

The project demonstrates the practical use of SQL for **data retrieval, filtering, aggregation, joins, grouping, sorting, and business-oriented analysis**.

---

## 🎯 Project Objectives

The main objectives of this project are:

* Analyze books based on genre, price, publication year, and stock.
* Understand customer information and purchasing behavior.
* Analyze orders and total sales.
* Calculate total revenue generated from orders.
* Identify popular and frequently ordered books.
* Analyze book sales by genre and author.
* Identify high-spending customers.
* Calculate remaining stock after fulfilling orders.
* Practice basic and advanced SQL concepts.

---

## 🗄️ Database Tables

The project uses the following main tables:

### 1. BOOKS

Contains information about books available in the store.

Common columns include:

* `BOOK_ID`
* `TITLE`
* `AUTHOR`
* `GENRE`
* `PUBLISHED_YEAR`
* `PRICE`
* `STOCK`

### 2. CUSTOMERS

Contains information about customers.

Common columns include:

* `CUSTOMER_ID`
* `NAME`
* `COUNTRY`
* `CITY`

### 3. ORDERS

Contains information about customer orders.

Common columns include:

* `ORDER_ID`
* `CUSTOMER_ID`
* `BOOK_ID`
* `ORDER_DATE`
* `QUANTITY`
* `TOTAL_AMOUNT`

---

## 🛠️ SQL Concepts Used

This project demonstrates the following SQL concepts:

* `SELECT`
* `WHERE`
* `DISTINCT`
* `GROUP BY`
* `HAVING`
* `ORDER BY`
* `LIMIT`
* Aggregate Functions

  * `SUM()`
  * `AVG()`
  * `COUNT()`
* `JOIN`
* `LEFT JOIN`
* `COALESCE()`
* Date filtering
* Filtering with multiple conditions
* Sorting and ranking records

---

# 🔹 Basic SQL Queries

### Q1. Retrieve all books in the Fiction genre

```sql
SELECT *
FROM books
WHERE genre = 'Fiction';
```

### Q2. Find books published after 1950

```sql
SELECT *
FROM books
WHERE published_year > 1950;
```

### Q3. List all customers from Canada

```sql
SELECT *
FROM customers
WHERE country = 'Canada';
```

### Q4. Show orders placed in November 2023

```sql
SELECT *
FROM orders
WHERE order_date >= '2023-11-01'
  AND order_date < '2023-12-01';
```

### Q5. Retrieve the total stock of books available

```sql
SELECT SUM(stock) AS total_stock
FROM books;
```

### Q6. Find the most expensive book

```sql
SELECT *
FROM books
ORDER BY price DESC
LIMIT 1;
```

### Q7. Show customers who ordered more than one quantity of a book

```sql
SELECT c.name, o.quantity
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
WHERE o.quantity > 1;
```

### Q8. Retrieve orders where the total amount exceeds $20

```sql
SELECT *
FROM orders
WHERE total_amount > 20;
```

### Q9. List all available book genres

```sql
SELECT DISTINCT genre
FROM books;
```

### Q10. Find books with the lowest stock

```sql
SELECT *
FROM books
WHERE stock = 1;
```

### Q11. Calculate total revenue generated from all orders

```sql
SELECT SUM(total_amount) AS total_revenue
FROM orders;
```

---

# 🔹 Advanced SQL Queries

### Q1. Total number of books sold for each genre

```sql
SELECT b.genre, SUM(o.quantity) AS total_books_sold
FROM books b
JOIN orders o
ON b.book_id = o.book_id
GROUP BY b.genre;
```

### Q2. Average price of books in the Fantasy genre

```sql
SELECT genre, AVG(price) AS average_price
FROM books
WHERE genre = 'Fantasy'
GROUP BY genre;
```

### Q3. Customers who have placed at least two orders

```sql
SELECT o.customer_id, c.name,
       COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY o.customer_id, c.name
HAVING COUNT(o.order_id) >= 2;
```

### Q4. Find the most frequently ordered book

```sql
SELECT b.title,
       SUM(o.quantity) AS total_quantity
FROM books b
JOIN orders o
ON b.book_id = o.book_id
GROUP BY b.title
ORDER BY total_quantity DESC
LIMIT 1;
```

### Q5. Top 3 most expensive Fantasy books

```sql
SELECT title, price
FROM books
WHERE genre = 'Fantasy'
ORDER BY price DESC
LIMIT 3;
```

### Q6. Total quantity of books sold by each author

```sql
SELECT b.author,
       SUM(o.quantity) AS total_quantity_sold
FROM books b
JOIN orders o
ON b.book_id = o.book_id
GROUP BY b.author;
```

### Q7. Cities where customers spent more than $30

```sql
SELECT c.city,
       SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.city, c.customer_id
HAVING SUM(o.total_amount) > 30;
```

### Q8. Customer who spent the most

```sql
SELECT c.name,
       SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.name
ORDER BY total_spent DESC
LIMIT 1;
```

### Q9. Calculate remaining stock after fulfilling all orders

```sql
SELECT
    b.title,
    b.book_id,
    b.stock,
    COALESCE(SUM(o.quantity), 0) AS ordered_count,
    b.stock - COALESCE(SUM(o.quantity), 0) AS remaining_stock
FROM books b
LEFT JOIN orders o
ON b.book_id = o.book_id
GROUP BY b.title, b.book_id, b.stock;
```

---

# 📊 Analysis Areas

The SQL analysis covers several important business areas:

### 📚 Book Analysis

* Books by genre
* Books published after a specific year
* Most and least expensive books
* Fantasy book pricing
* Book stock availability

### 👥 Customer Analysis

* Customers by country and city
* Customers with multiple orders
* Highest-spending customers
* Customer spending by location

### 🛒 Order Analysis

* Orders by date
* Order quantities
* Orders above a specific value
* Frequently ordered books
* Total quantity sold

### 💰 Revenue Analysis

* Total revenue
* Customer spending
* City-wise spending
* Revenue generated through orders

### 📦 Inventory Analysis

* Total available stock
* Books with low stock
* Ordered quantity
* Remaining stock after orders

---

## 📈 Key SQL Skills Demonstrated

This project demonstrates practical SQL skills including:

**Data Retrieval → Data Filtering → Table Joins → Aggregation → Grouping → Business Analysis → Inventory Analysis**

The project is designed to show how SQL can be used to transform raw transactional data into useful business information.

---

## 📂 Project Structure

```text
SQL-Online-Book-Store-Analysis/
│
├── README.md
│
└── SQL/
    └── book_store_analysis.sql
```

---

## 🚀 How to Use This Project

1. Clone or download this repository.
2. Create the required database.
3. Create the `BOOKS`, `CUSTOMERS`, and `ORDERS` tables.
4. Insert the required dataset.
5. Run the SQL queries from the `.sql` file.
6. Analyze the results generated by each query.

---

## 🎓 Project Purpose

This project was created to practice and demonstrate **SQL data analysis skills using an Online Book Store dataset**.

It can be used as a portfolio project to demonstrate knowledge of SQL querying, relational databases, data analysis, and business-oriented problem solving.

---

## 👨‍💻 Project Creator

**Aman Raj**

SQL Data Analysis Project
