
### Query 1: Top Revenue-Generating Customers per Store

SELECT 
    c.store_id AS Store,
    c.customer_id AS Customer_ID,
    CONCAT(c.first_name, ' ', c.last_name) AS Customer_Name,
    SUM(p.amount) AS Total_Paid
FROM customer c
JOIN payment p ON c.customer_id = p.customer_id
GROUP BY c.store_id, c.customer_id, Customer_Name
ORDER BY c.store_id ASC, Total_Paid DESC;
### Query 2: Store Performance Analysis by Location

#### Business Goal
Evaluates overall store profitability and operational volume by geographic location (Country & City) to compare branch effectiveness.

#### Technical Breakdown
* **`SELECT` & Aggregations:** Retrieves location data alongside `COUNT(r.rental_id)` for volume and `SUM(p.amount)` for financial revenue.
* **Multi-Table `JOIN`:** Connects 7 relational tables (`store`, `address`, `city`, `country`, `customer`, `rental`, `payment`) to unify geographic metrics with transaction data.
* **`GROUP BY`:** Aggregates totals by country, city, and store ID.
* **`ORDER BY`:** Sorts branches by `Total_Revenue` in descending order to showcase top-performing locations.
