
CREATE DATABASE customer_behavior;

SHOW DATABASES;

USE customer_behavior;

SELECT *
FROM customer
LIMIT 10;

SELECT * from customer limit 20;

SELECT gender, SUM(purchase_amount) AS revenue
FROM customer
GROUP BY gender;


SELECT customer_id, purchase_amount
FROM customer
WHERE discount_applied = 'YES'
AND purchase_amount >= (
    SELECT AVG(purchase_amount)
    FROM customer
);


SELECT item_purchased, ROUND(AVG(review_rating),2) AS "Average Product Rating"
from customer
group by item_purchased
order by avg(review_rating) desc
limit 5;


SELECT shipping_type,
       ROUND(AVG(purchase_amount), 2) AS avg_purchase
FROM customer
WHERE shipping_type IN ('Standard', 'Express')
GROUP BY shipping_type;


SELECT subscription_status,
COUNT(customer_id) AS total_customers, 
ROUND(AVG(purchase_amount),2) AS avg_spend,
ROUND(SUM(purchase_amount),2) AS total_revenue
from customer
group by subscription_status
order by total_revenue, AVG_spend desc;


SELECT
    ROUND(
        SUM(CASE 
            WHEN discount_applied = 'YES' THEN 1 
            ELSE 0 
        END) / COUNT(*) * 100,
        2
    ) AS discount_rate
FROM customer
group by item_purchased
order by discount_rate desc
limit 5;


WITH customer_type AS (
SELECT customer_id, previous_purchases,
CASE 
	WHEN previous_purchases = 1 THEN 'New'
    WHEN previous_purchases BETWEEN 2 AND 10 THEN 'Returning'
    ELSE 'Loyal'
    END AS customer_segment
from customer
)

SELECT customer_segment, COUNT(*) AS "Number of Customers"
from customer_type
group by customer_segment;


WITH item_count AS (
SELECT category,
item_purchased,
COUNT(customer_id) AS total_orders,
ROW_NUMBER() over(partition by category order by COUNT(customer_id) desc) AS item_rank
from customer
group by category, item_purchased
)

SELECT item_rank, category, item_purchased, total_orders
from item_count
WHERE item_rank <= 3;


SELECT subscription_status,
count(customer_id) AS repeat_buyers
from customer
WHERE previous_purchases > 5
group by subscription_status;



SELECT age_group, 
SUM(purchase_amount) AS total_revenue
from customer
group by age_group
order by total_revenue desc;



SELECT User, Host
FROM mysql.user
WHERE User = 'jupyter_user';

ALTER USER 'jupyter_user'@'localhost'
IDENTIFIED BY 'Jupyter@12345';

FLUSH PRIVILEGES;