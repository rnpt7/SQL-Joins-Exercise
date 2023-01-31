-- 1
SELECT * FROM owners o LEFT JOIN vehicles v ON o.id = v.owner_id;

-- 2
SELECT first_name, last_name, COUNT(owner_id) FROM owners o JOIN vehicles v ON o.id = v.owner_id GROUP BY first_name, last_name ORDER BY first_name;

-- 3
SELECT first_name, last_name, CAST(AVG(v.price) as INTEGER) as avg_price, COUNT(owner_id) FROM owners o JOIN vehicles v ON o.id = v.owner_id GROUP BY first_name, last_name HAVING COUNT(owner_id) > 1 AND CAST(AVG(v.price) as INTEGER) > 10000 ORDER BY first_name DESC;