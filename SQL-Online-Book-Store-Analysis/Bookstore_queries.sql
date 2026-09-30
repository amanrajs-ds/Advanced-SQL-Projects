


-- =========================================================
-- BASIC QUERIES
-- =========================================================


--1) Retrieve all books in the 'Fiction' genre 

SELECT *
FROM books
where genre='Fiction' ;

-- Q2. Find books published after the year 1950

SELECT *
FROM BOOKS
WHERE published_year > 1950 ;


-- Q3. List all customers from Canada

SELECT * 
FROM CUSTOMERS
WHERE COUNTRY = 'Canada' ;

-- Q4. Show orders placed in November 2023

SELECT *
FROM ORDERS
WHERE ORDER_DATE >= '2023-11-01'
  AND ORDER_DATE < '2023-12-01';

-- Q5. Retrieve the total stock of books available

SELECT SUM(STOCK) AS TOTAL_STOCK
FROM BOOKS
;


-- Q6. Find the details of the most expensive book

SELECT *
FROM BOOKS
ORDER BY PRICE DESC
LIMIT 1 ;

-- Q7. Show all customers who ordered more than 1 quantity of a book

SELECT C.NAME, O.QUANTITY
FROM CUSTOMERS C
JOIN ORDERS O
ON C.CUSTOMER_ID = O.CUSTOMER_ID
WHERE O.QUANTITY >1 
;


-- Q8. Retrieve all orders where the total amount exceeds $20


SELECT * 
FROM ORDERS
WHERE TOTAL_AMOUNT > 20 ;

-- Q9. List all genres available in the Books table

SELECT GENRE
FROM BOOKS
GROUP BY GENRE ;

OR


SELECT DISTINCT GENRE 
FROM BOOKS;

-- Q10. Find the book with the lowest stock

SELECT *
FROM BOOKS
WHERE STOCK =1 ;


-- Q11. Calculate the total revenue generated from all orders

SELECT SUM(TOTAL_AMOUNT) 
FROM ORDERS;


-- =========================================================
-- ADVANCED QUERIES
-- =========================================================



-- Q1. Retrieve the total number of books sold for each genre

SELECT B.GENRE, SUM(O.QUANTITY)
FROM BOOKS B
JOIN ORDERS O
ON B.BOOK_ID = O.BOOK_ID
GROUP BY B.GENRE ;

-- Q2. Find the average price of books in the "Fantasy" genre

SELECT * FROM BOOKS ;

SELECT GENRE, AVG(PRICE)
FROM BOOKS
WHERE GENRE ='Fantasy'
GROUP BY GENRE;


-- Q3. List customers who have placed at least 2 orders


SELECT O.CUSTOMER_ID, C.NAME, COUNT(O.ORDER_ID) AS TOTAL_ORDERS
FROM CUSTOMERS C
JOIN ORDERS O
ON C.CUSTOMER_ID = O.CUSTOMER_ID
GROUP BY O.CUSTOMER_ID, C.NAME
HAVING COUNT(O.ORDER_ID)>=2;

SELECT * FROM ORDERS ;

-- Q4. Find the most frequently ordered book

SELECT b.title, SUM(o.quantity) AS total_quantity
FROM books b
JOIN orders o
ON b.book_id = o.book_id
GROUP BY b.title
ORDER BY total_quantity DESC
LIMIT 1;

-- Q5. Show the top 3 most expensive books of the "Fantasy" genre

SELECT title, price
from books
where genre = 'Fantasy'
order by price desc 
limit 3;



-- Q6. Retrieve the total quantity of books sold by each author

SELECT b.author, SUM(o.QUANTITY) as total_q_of_books
from books b
join orders o
on b.book_id=o.book_id
group by author ;


-- Q7. List the cities where customers who spent over $30 are located

SELECT c.CITY, SUM(o.total_amount) AS SPENT
FROM CUSTOMERS c
join orders o
on c.customer_id = o.customer_id
GROUP BY c.CITY, c.customer_id
having  SUM(o.total_amount) >30 ;



-- Q8. Find the customer who spent the most on orders

SELECT C.NAME, SUM(O.TOTAL_AMOUNT) AS TOTAL_SPENT
FROM CUSTOMERS C
JOIN ORDERS O
ON C.customer_id=O.customer_id
GROUP BY C.NAME
order by TOTAL_SPENT DESC 
LIMIT 1;

-- Q9. Calculate the stock remaining after fulfilling all orders
 
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






--------------------------------------------------------------------------
--------------------------------------------------------------------------
