### Query 1: Top Revenue-Generating Customers per Store

#### Business Goal
Identifies top-paying (VIP) customers within each store location to help marketing teams target high-value clients and improve retention programs.

#### Technical Breakdown
* **`SELECT` & `CONCAT()`:** Retrieves store and customer IDs, merging `first_name` and `last_name` into a unified `Customer_Name` column.
* **`SUM(p.amount)`:** Calculates total monetary expenditure per customer, aliased as `Total_Paid`.
* **`JOIN`:** Unifies the `customer` and `payment` tables using `customer_id`.
* **`GROUP BY`:** Aggregates payment totals categorized by store ID, customer ID, and customer name.
* **`ORDER BY`:** Sorts results by `store_id` (ASC) and `Total_Paid` (DESC) to highlight top spenders at the top of each store list.

### Query 2: Store Performance Analysis by Location

#### Business Goal
Evaluates overall store profitability and operational volume by geographic location (Country & City) to compare branch effectiveness.

#### Technical Breakdown
* **`SELECT` & Aggregations:** Retrieves location data alongside `COUNT(r.rental_id)` for volume and `SUM(p.amount)` for financial revenue.
* **Multi-Table `JOIN`:** Connects 7 relational tables (`store`, `address`, `city`, `country`, `customer`, `rental`, `payment`) to unify geographic metrics with transaction data.
* **`GROUP BY`:** Aggregates totals by country, city, and store ID.
* **`ORDER BY`:** Sorts branches by `Total_Revenue` in descending order to showcase top-performing locations.


-### Query 3: Actor Revenue & Popularity Analysis

#### Business Goal
Evaluates the commercial value of actors by determining which performers drive the highest customer rentals and revenue.

#### Technical Breakdown
* **`SELECT` & Aggregations:** Retrieves actor details alongside `COUNT(DISTINCT f.film_id)` for unique movie count, `COUNT(r.rental_id)` for total rental demand, and `SUM(p.amount)` for total revenue generated.
* **Multi-Table `JOIN`:** Chains 6 relational tables (`actor`, `film_actor`, `film`, `inventory`, `rental`, `payment`) to link cast members directly to payment transactions.
* **`GROUP BY`:** Aggregates overall performance metrics per actor ID and name.
* **`ORDER BY`:** Sorts the dataset by `Total_Revenue` in descending order to surface top-grossing actors at the top.
