--SELECT * FROM people1 LIMIT 10;
--SELECT pfirstname, pfavorites FROM people1 LIMIT 10;
--SELECT pfirstname, pfavorites -> 'Desserts' @> CAST('["banana"]' AS JSONB) FROM people1;

--SOLUTION ONE
--SELECT pfirstname, pfavorites -> 'Desserts' @> CAST('["cake"])' AS JSONB) FROM people1;

--SOLUTION TWO
--SELECT pfirstname, pfavorites @> CAST('{"Desserts":["cake"]}' AS JSONB) FROM people1;

-- fancy
--SELECT pfirstname, pfavorites -> 'Desserts' AS "FavDesserts" FROM people1 LIMIT 10;
SELECT pfirstname, pfavorites @> CAST('{"Desserts":["cake"]}' AS JSONB) FROM people1 WHERE pfavorites @> CAST('{"Desserts":["cake"]}' AS JSONB);
