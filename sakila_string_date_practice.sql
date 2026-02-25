-- ============================================
-- 🌍 SQL Practice Project - Sakila Database
-- Focus: String & Date Functions
-- Author: Anjali Rawat
-- ============================================

USE sakila;

-- ============================================
-- 🔤 STRING FUNCTIONS
-- ============================================

-- LEFT & RIGHT
SELECT city_id,
       district,
       UPPER(LEFT(district, 3)) AS left_district,
       UPPER(RIGHT(district, 3)) AS right_district
FROM address;


-- SUBSTRING
SELECT first_name,
       last_name,
       email,
       SUBSTR(email, 1, 4) AS email_prefix
FROM customer;


-- TRIM & RTRIM
SELECT district,
       TRIM(CONCAT('     ', district, '     ')) AS trimmed_district,
       RTRIM(CONCAT('     ', district, '     ')) AS rtrim_district
FROM address;


-- REVERSE
SELECT REVERSE('rawat') AS reversed_text;


-- LENGTH
SELECT first_name,
       email,
       LENGTH(email) AS email_length
FROM customer
ORDER BY email_length DESC;


-- ============================================
-- 📅 DATE & TIME FUNCTIONS
-- ============================================

-- Current Date & Time
SELECT CURRENT_DATE();
SELECT CURRENT_TIME();
SELECT NOW();


-- Extract Date & Time
SELECT rental_id,
       rental_date,
       DATE(rental_date) AS rental_date_only,
       TIME(rental_date) AS rental_time
FROM rental;


-- Extract Day / Month / Year
SELECT rental_id,
       rental_date,
       DAY(rental_date) AS rental_day,
       MONTH(rental_date) AS rental_month,
       YEAR(rental_date) AS rental_year
FROM rental;


-- Extract Hour / Minute / Second
SELECT rental_id,
       rental_date,
       HOUR(rental_date) AS rental_hour,
       MINUTE(rental_date) AS rental_minute,
       SECOND(rental_date) AS rental_second
FROM rental;


-- DATE_ADD Example
SELECT rental_id,
       DATE(rental_date) AS rental_date,
       DATE_ADD(DATE(rental_date), INTERVAL 5 DAY) AS target_date
FROM rental;


-- DATEDIFF (Holding Days)
SELECT rental_id,
       rental_date,
       return_date,
       DATEDIFF(return_date, rental_date) AS holding_days
FROM rental;


-- Average Holding Days Per Customer
SELECT customer_id,
       AVG(DATEDIFF(return_date, rental_date)) AS avg_holding_days
FROM rental
GROUP BY customer_id;


-- Customers Who Returned Late (>7 days)
SELECT customer_id,
       IF(MAX(DATEDIFF(return_date, rental_date)) > 7,
          'Late',
          'Not-Late') AS return_status
FROM rental
GROUP BY customer_id
HAVING return_status = 'Late';