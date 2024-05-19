SELECT * FROM owners
LEFT JOIN vehicles
ON vehicles.owner_id = owners.id;
SELECT owners.first_name, owners.last_name, COUNT(*) FROM owners
JOIN vehicles
ON vehicles.owner_id = owners.id
GROUP BY owners.id
ORDER BY COUNT(*);
SELECT owners.first_name, owners.last_name,ROUND(AVG(price)) as average_price, COUNT(owner_id) FROM owners
JOIN vehicles
ON vehicles.owner_id = owners.id
GROUP BY (first_name, last_name)
HAVING ROUND(AVG(price)) >10000 AND COUNT(owner_id) > 1
ORDER BY first_name DESC;

