-- Exercise 2  Dormant Customers

-- Get the customer details who have not placed any order for the month of 2014 january.

-- - Tables - `orders` and `customers`
-- - Output columns - All columns from `customers`
-- - Data should be sorted in ascending order by `customer_id`
-- - Output should contain all the fields from `customers`

SELECT DISTINCT *
FROM orders o
LEFT JOIN customers c
ON o.order_customer_id=c.customer_id
WHERE order_date NOT BETWEEN '2014-01-01' AND '2014-01-31'
ORDER BY customer_id

