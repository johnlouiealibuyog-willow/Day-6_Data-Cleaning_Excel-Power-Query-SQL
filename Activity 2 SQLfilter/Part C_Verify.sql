--After all fixes, run these verification queries and record the results:
--15. SELECT DISTINCT city FROM orders; — Are all cities properly cased now?
SELECT DISTINCT city 
FROM orders
-- All cities are properly cased now: "Cebu City", "Davao City", "Makati", "Quezon City"
--Results: 8 rows
;

--16. SELECT DISTINCT category FROM orders; — Are all categories standardized?
SELECT DISTINCT category
FROM orders
-- All categories are standardized now: "Electronics", "Clothing", "Home & Kitchen", "Books"
--Results: 3 rows  
;

--17. SELECT COUNT(*) FROM orders WHERE email IS NULL; — Should be 0.
SELECT COUNT(*) 
FROM orders 
WHERE email IS NULL
-- There are 0 rows where email is NULL now.
--Results: 0 rows 
;

--18. SELECT COUNT(*) FROM orders; — How many rows remain after deleting junk?  
SELECT COUNT(*) 
FROM orders
-- There are 29 rows remaining after deleting the junk data row.
--Results: 29 rows
; 