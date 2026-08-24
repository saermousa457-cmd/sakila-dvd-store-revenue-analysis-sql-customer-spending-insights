1 query; top custmoers:
SELECT 
    c.store_id AS Store,
    c.customer_id AS Customer_ID,
    CONCAT(c.first_name, ' ', c.last_name) AS Customer_Name,
    SUM(p.amount) AS Total_Paid
FROM customer c
JOIN payment p ON c.customer_id = p.customer_id
GROUP BY c.store_id, c.customer_id, Customer_Name
ORDER BY c.store_id ASC, Total_Paid DESC;
2 query; Store Performance Analysis by Location & Revenue:
SELECT 
    co.country AS Country,
    ci.city AS City,
    s.store_id AS Store_ID,
    COUNT(r.rental_id) AS Total_Rentals,
    SUM(p.amount) AS Total_Revenue
FROM store s
JOIN address a ON s.address_id = a.address_id
JOIN city ci ON a.city_id = ci.city_id
JOIN country co ON ci.country_id = co.country_id
JOIN customer c ON s.store_id = c.store_id
JOIN rental r ON c.customer_id = r.customer_id
JOIN payment p ON r.rental_id = p.rental_id
GROUP BY co.country, ci.city, s.store_id
ORDER BY Total_Revenue DESC;
