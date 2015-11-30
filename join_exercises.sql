INSERT INTO users (name, email, role_id) VALUES
('sam', 'sam@example.com', 2),
('jule', 'jule@example.com', 2),
('eli', 'eli@example.com', 2),
('rob', 'rob@example.com', null);

SELECT *
FROM users AS u
JOIN roles AS r ON u.role_id = r.id; 

SELECT * 
FROM users AS u
LEFT JOIN roles AS r ON u.role = r.id;

SELECT *
FROM users AS u
RIGHT JOIN roles AS r ON u.role_id = r.id;

SELECT r.name, count(u.role_id)
FROM users AS u
RIGHT JOIN roles AS r ON r.id = u.role_id
GROUP BY r.name;
