
-- Get the count of products for each department.
-- - Tables - `departments`, `categories`, `products``
-- - Data should be sorted in ascending order by `deparment_id``
-- - Output should contain all the fields from departments and the product count as `product_count`

SELECT department_id, department_name, COUNT(DISTINCT product_id) AS product_count 
FROM products p
LEFT JOIN categories c
ON p.product_category_id = c.category_id
LEFT JOIN departments d
ON d.department_id = c.category_department_id
GROUP BY department_id, department_name



