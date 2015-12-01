SELECT first_name, last_name, birth_date
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
) LIMIT 10;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Full Name', hire_date AS 'Hire Date', emp_no AS 'Employee #'
FROM employees AS e
WHERE hire_date IN (
	SELECT hire_date
	FROM employees
	WHERE emp_no = 101010
	);

SELECT title AS 'Title', emp_no AS 'Employee No'
FROM titles AS t
WHERE emp_no IN (
	SELECT emp_no
	FROM employees
	WHERE first_name = 'Aamod'
	)
;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Full Name', title AS 'Title'
FROM titles AS t
JOIN employees AS e ON e.emp_no = t.emp_no
WHERE e.first_name = 'Aamod';
	
SELECT CONCAT(first_name, ' ', last_name) AS ' Employee Name', t.title AS 'Title'
FROM employees AS e
RIGHT JOIN titles AS t
  ON e.emp_no = t.emp_no
WHERE first_name = 'Aamod';

SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Name', d.dept_name AS 'Department Name', e.gender AS 'Gender'
FROM employees AS e
JOIN dept_manager AS dm ON dm.emp_no = e.emp_no
JOIN departments AS d ON d.dept_no = dm.dept_no
WHERE e.gender = 'F' AND dm.to_date > NOW();