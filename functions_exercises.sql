SELECT COUNT(*), gender
FROM employees
WHERE (
		first_name = 'Irena' 
	OR first_name = 'Vidya' 
	OR first_name = 'Maya'
)
GROUP BY gender;

SELECT CONCAT(COUNT(*) , ' ', gender)
FROM employees
WHERE gender = 'F' 
	AND (
		first_name = 'Irena' 
	OR first_name = 'Vidya' 
	OR first_name = 'Maya'
);

SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE 'E%'
OR last_name LIKE '%e';

SELECT first_name, last_name, emp_no
FROM employees
WHERE last_name LIKE 'E%' 
AND last_name LIKE '%e'
ORDER BY emp_no DESC;

SELECT CONCAT(first_name, ' ', last_name, ' has worked here for ', datediff(now(), hire_date), ' days!')
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
AND birth_date LIKE '%12-25%' 
ORDER BY birth_date ASC, hire_date DESC;

SELECT first_name, last_name, birth_date
FROM employees
WHERE birth_date LIKE '%12-25%';

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%';

SELECT DISTINCT first_name, last_name, birth_date
FROM employees
WHERE birth_date LIKE '%-03-04'
ORDER BY birth_date;