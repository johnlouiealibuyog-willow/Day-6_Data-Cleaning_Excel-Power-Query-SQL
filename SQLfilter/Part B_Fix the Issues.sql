--9. Standardize all city names to proper case (e.g., 'cebu city' → 'Cebu City'). Write one UPDATE per city that needs fixing.
UPDATE orders
SET city = 'Cebu City'
WHERE city = 'cebu city';

UPDATE orders
SET city = 'Davao City'
WHERE city = 'davao city';

UPDATE orders
SET city = 'Quezon City'
WHERE city = 'quezon city';

UPDATE orders   
SET city = 'Makati'
WHERE city = 'MAKATI';

--10. Standardize all category values (e.g., 'accessories' → 'Accessories').
UPDATE orders
SET category = 'Accessories' 
WHERE LOWER(category) = 'accessories';   

UPDATE orders
SET category = 'Accessories' 
WHERE UPPER(category) = 'ACCESSORIES';

UPDATE orders
SET category = 'Electronics'
WHERE LOWER(category) = 'electronics';

UPDATE orders
SET category = 'Storage'
WHERE LOWER(category) = 'storage';

--11. Standardize all status values (e.g., 'completed' → 'Completed').
UPDATE orders
SET status = 'Completed'
WHERE LOWER(status) = 'completed';

UPDATE orders
SET status = 'Completed'
WHERE UPPER(status) = 'COMPLETED';

--12. TRIM all customer_name values to remove leading/trailing spaces.
UPDATE orders  
SET customer_name = TRIM(customer_name);

--13. Delete the test/junk data row.
DELETE FROM orders
WHERE status LIKE '%test%';

--14. Handle NULL emails: UPDATE them to 'not.provided@placeholder.com'.
UPDATE orders
SET email = 'not.provided@placeholder.com'
WHERE email IS NULL;

