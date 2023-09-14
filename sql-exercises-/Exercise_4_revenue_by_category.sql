-- Get the revenue generated for each category for the month of 2014 january.


-- - Tables - `orders`, `order_items`, `products` and `categories`
-- - Data should be sorted in ascending order by `category_id`
-- - Output should contain all the field from `categories` along with the revenue as `category_revenue`
-- - Consider only `COMPLETE` and `CLOSED` orders.

SELECT category_id, category_department_id, category_name, SUM(order_item_subtotal) AS category_revenue 
FROM order_items oi
LEFT JOIN orders o
ON oi.order_item_order_id = o.order_id
LEFT JOIN products p
ON oi.order_item_product_id = p.product_id
LEFT JOIN categories c
ON c.category_id = p.product_category_id
WHERE order_date BETWEEN '2014-01-01' AND '2014-01-31' AND order_status IN ('COMPLETE', 'CLOSED')
GROUP BY category_id, category_department_id, category_name
ORDER BY category_id
