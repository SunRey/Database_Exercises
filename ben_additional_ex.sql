SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Employee Name', title AS 'Title'
FROM titles AS t
JOIN employees AS e
ON t.emp_no = e.emp_no
WHERE title LIKE 'Senior %' && to_date > NOW();

SELECT CONCAT(first_name, ' ', last_name) AS 'Manager Name', s.salary AS 'Salary'
FROM employees AS e
JOIN dept_manager AS dm ON dm.emp_no = e.emp_no
JOIN salaries AS s ON s.emp_no = dm.emp_no
WHERE dm.to_date > NOW() && s.to_date > NOW();