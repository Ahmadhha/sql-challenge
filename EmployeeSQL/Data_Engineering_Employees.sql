-- Adjust date style

SET datestyle TO postgres, dmy;

-- Create required tables and define relationships

CREATE TABLE titles (
title_id CHAR(5) NOT NULL,
title VARCHAR(255), 
PRIMARY KEY (title_id)
);

CREATE TABLE employees (
emp_no INTEGER NOT NULL, 
emp_title_id CHAR(5) NOT NULL,
birth_date DATE NOT NULL,
first_name VARCHAR(255) NOT NULL,
last_name VARCHAR(255) NOT NULL,
sex CHAR(1),
hire_date DATE,
PRIMARY KEY (emp_no),
FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)	
);

CREATE TABLE departments (
dept_no CHAR(5) NOT NULL,
dept_name VARCHAR(255) NOT NULL,
PRIMARY KEY (dept_no)
);

CREATE TABLE dept_emp (
emp_no INTEGER NOT NULL,
dept_no CHAR(4) NOT NULL, 
PRIMARY KEY (emp_no,dept_no),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no)	
);

CREATE TABLE dept_manager (
dept_no CHAR(4) NOT NULL,
emp_no INTEGER NOT NULL,
PRIMARY KEY (emp_no),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
	
CREATE TABLE salaries (
emp_no INTEGER NOT NULL,
salary INTEGER NOT NULL,
PRIMARY KEY (emp_no),
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)	
);

