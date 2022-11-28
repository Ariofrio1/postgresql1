--SELECT * FROM people1 LIMIT 10;
--SELECT pfirstname, pfavorites FROM people1 LIMIT 10;
SELECT pfirstname, pfavorites -> 'Desserts' FROM people1 LIMIT 10;