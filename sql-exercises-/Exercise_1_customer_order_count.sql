-- Exercise 1  Customer Order Count

-- Get order count per customer for the month of 2014 January.

-- - Tables - `orders` and `customers`
-- - Data should be sorted in descending order by count and ascending order by customer id
-- - Output should contain `customer_id`, `customer_fname`, `customer_lname` and `customer_order_count`.

SELECT customer_id, customer_fname, customer_lname, COUNT(*) AS customer_order_count
FROM orders o
LEFT JOIN customers c
ON o.order_customer_id=c.customer_id
WHERE order_date BETWEEN '2014-01-01' AND '2014-01-31'
GROUP BY customer_id, customer_fname, customer_lname
ORDER BY customer_order_count DESC, customer_id

