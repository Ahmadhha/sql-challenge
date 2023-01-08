# Pewlett Hackard's Sql-challenge

## Background

Pewlett Hackard's (a fictional company) research project about people whom the company employed during the 1980s and 1990s.

## Data Source

Six CSV files remaining from the employee database in that period:

1. titles (title_id, title)

2. employees (emp_no, emp_title_id, birth_date, first_name, last_name, sex, hire_date)

3. departments (dept_no, dept_name)

4. dept_emp (emp_no, dept_no)

5. dept_manager (dept_no, emp_no)

6. salaries (emp_no, salary)

## Project Scope

- Data Modeling: Design the ERD 

- Data Engineering: Create tables to hold the data from the CSV files and import the CSV files into a SQL database

- Data Analysis: Answer questions about the data:

1. List the employee number, last name, first name, sex, and salary of each employee.

2. List the first name, last name, and hire date for the employees who were hired in 1986.

3. List the manager of each department along with their department number, department name, employee number, last name, and first name.

4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

6. List each employee in the Sales department, including their employee number, last name, and first name.

7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

### Shortcuts

- [ERD](https://app.quickdatabasediagrams.com/#/d/NJsy3C)

- [Data Engineering Schema](https://github.com/Ahmadhha/sql-challenge/blob/main/EmployeeSQL/Data_Engineering_Employees.sql)

- [Data Analysis Schema](https://github.com/Ahmadhha/sql-challenge/blob/main/EmployeeSQL/Data_Analysis_Employees.sql)
