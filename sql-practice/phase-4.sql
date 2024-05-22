-- Give "Red" the cat one of every toy the other cats have
-- Your code here
-- INSERT INTO toys (name, cat_id)
-- SELECT name, (SELECT id FROM cats WHERE name = 'Red') FROM toys
-- WHERE cat_id != (SELECT id FROM cats WHERE name = 'Red');

-- SELECT * FROM toys WHERE cat_id = (SELECT id FROM cats WHERE name = 'Red');

-- Query spoiled cats reporting the most spoiled first
-- Your code here
SELECT cats.*, COUNT(toys.id) AS toys
FROM cats JOIN toys ON cats.id = toys.cat_id
GROUP BY cats.name HAVING toys >= 2 ORDER BY toys;
