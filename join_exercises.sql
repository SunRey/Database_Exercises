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


SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
JOIN dept_emp as de
  ON de.emp_no = e.emp_no
JOIN departments as d
  ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name, dm.to_date
FROM employees AS e
JOIN dept_manager AS dm ON dm.emp_no = e.emp_no
JOIN departments AS d ON d.dept_no = dm.
WHERE dm.to_date > now();

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Manager Name'
FROM employees AS e
JOIN dept_manager AS dm ON dm.emp_no = e.emp_no
JOIN departments AS d ON d.dept_no = dm.dept_no
WHERE dm.to_date > now() AND e.gender = 'F';

SELECT t.title AS Title, count(de.dept_no) AS Count, de.to_date
FROM dept_emp AS de
JOIN titles AS t ON t.emp_no = de.emp_no
JOIN departments AS d ON d.dept_no = de.dept_no
WHERE d.dept_no = 'd009' AND t.to_date > now()
GROUP BY t.title;

SELECT d.dept_name AS 'Departmant Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Name', s.salary AS Salary
FROM salaries AS s
JOIN employees AS e ON e.emp_no = s.emp_no
JOIN dept_manager AS dm ON dm.emp_no = e.emp_no
JOIN departments AS d ON d.dept_no = dm.dept_no
WHERE s.to_date > now() AND dm.to_date > now();

SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Employee Name', d.dept_name AS 'Department Name', CONCAT(man.first_name, ' ', man.last_name) AS 'Manager Name'
FROM employees AS e
JOIN dept_emp AS de ON e.emp_no = de.emp_no
JOIN departments AS d ON de.dept_no = d.dept_no
JOIN dept_manager AS dm ON d.dept_no = dm.dept_no
JOIN employees AS man ON man.emp_no = dm.emp_no
WHERE dm.to_date > now() AND de.to_date > now();

