-- Adjust date style

SET datestyle TO postgres, dmy;

-- Data Analysis

-- [1]
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees as e
INNER JOIN salaries as s 
	ON s.emp_no=e.emp_no
ORDER BY e.emp_no;

-- [2]
SELECT e.last_name, e.first_name, e.hire_date
FROM employees as e
WHERE hire_date BETWEEN '01-01-1986' 
	AND '31-12-1986'
ORDER BY hire_date;

-- [3]
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees as e
INNER JOIN salaries as s 
	ON s.emp_no=e.emp_no
ORDER BY e.emp_no;

-- [4]
SELECT d.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e
INNER JOIN dept_emp as n 
	ON n.emp_no=e.emp_no
INNER JOIN departments as d
	ON d.dept_no=n.dept_no
ORDER BY e.emp_no;

-- [5]
SELECT e.first_name, e.last_name, e.sex
FROM employees AS e
WHERE first_name = 'Hercules' 
	AND last_name LIKE 'B%'
ORDER BY last_name;

-- [6]
SELECT e.emp_no, e.last_name, e.first_name
FROM employees as e
INNER JOIN dept_emp as n 
	ON n.emp_no=e.emp_no
INNER JOIN departments as d
	ON d.dept_no=n.dept_no
WHERE d.dept_name = 'Sales'
ORDER BY e.emp_no;

-- [7]
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e
INNER JOIN dept_emp as n 
	ON n.emp_no=e.emp_no
INNER JOIN departments as d
	ON d.dept_no=n.dept_no
WHERE d.dept_name = 'Sales' 
	OR d.dept_name = 'Development'
ORDER BY e.emp_no;

-- [8]
SELECT e.last_name, count(e.emp_no) as Frequency
FROM employees as e
GROUP BY last_name
ORDER BY Frequency DESC;

