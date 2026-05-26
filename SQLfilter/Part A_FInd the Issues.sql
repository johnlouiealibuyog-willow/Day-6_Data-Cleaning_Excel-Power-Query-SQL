--3. How many rows are in the orders table? 30 rows

--4. Use SELECT DISTINCT city to find all unique city values. List them. Which ones are inconsistent?
SELECT DISTINCT city
FROM orders 
--There is a "cebu city" and "Cebu City", 
--"davao city" and "Davao City", "quezon city" and 
--"Quezon City", the MAKATI is in all caps, 
--and there is a "test" which i think is not belong to the city column
;

--5. Use SELECT DISTINCT category to find all unique category values. Which ones are inconsistent?
SELECT DISTINCT category
FROM orders 
--There is a "electronics" and "Electronics", "accessories", "ACCESSORIES" and "Accessories", "storage" and "Storage"
;

--6. Use SELECT DISTINCT status to find inconsistent status values.
SELECT DISTINCT status
FROM orders 
--There is a "completed", "Completed", and "COMPLETED", and there is a "test"
;

--7. Find all rows where email IS NULL. How many are there?
SELECT *
FROM orders
WHERE email IS NULL 
--There are 3 rows where email is NULL
;

--8. Find the test/junk data row. What is its order_id?
SELECT *
FROM orders
WHERE status LIKE '%test%'
--The order_id of the test/junk data row is 26
;
