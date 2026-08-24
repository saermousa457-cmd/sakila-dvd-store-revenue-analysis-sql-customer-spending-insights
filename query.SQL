SELECT 
    c.store_id AS Store,
    c.customer_id AS Customer_ID,
    CONCAT(c.first_name, ' ', c.last_name) AS Customer_Name,
    SUM(p.amount) AS Total_Paid
FROM customer c
JOIN payment p ON c.customer_id = p.customer_id
GROUP BY c.store_id, c.customer_id, Customer_Name
ORDER BY c.store_id ASC, Total_Paid DESC;
