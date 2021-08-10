--1. List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT 
	employees.emp_no, 
	employees.last_name,
	employees.first_name,
	employees.sex,
	salaries.salary
FROM employees
LEFT JOIN salaries
USING (emp_no)
ORDER BY emp_no

--2. List first name, last name, and hire date for employees who were hired in 1986.

SELECT 
	employees.first_name,
	employees.last_name,
	employees.hire_date
FROM employees
WHERE DATE_PART('year',hire_date) = 1986
ORDER BY emp_no;

--3. List the manager of each department with the following information: department number, 
--department name, the manager's employee number, last name, first name.

SELECT 
	dept_managers.dept_no, 
	departments.dept_name,
	dept_managers.emp_no,
	employees.last_name, 
	employees.first_name
FROM dept_managers
LEFT JOIN departments
USING (dept_no)
LEFT JOIN employees 
USING (emp_no)
ORDER BY emp_no

--4. List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT
	employees.emp_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
FROM employees 
INNER JOIN dept_emp USING (emp_no)
INNER JOIN departments USING (dept_no)
order by emp_no;

--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT
	employees.first_name,
	employees.last_name,
	employees.sex
FROM employees
WHERE first_name = 'Hercules' AND last_name like 'B

--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT 
	employees.emp_no, 
	employees.last_name, 
	employees.first_name,
	departments.dept_name
FROM employees 
INNER JOIN dept_emp USING (emp_no)
INNER JOIN departments USING (dept_no)
WHERE departments.dept_name='Sales'
ORDER BY emp_no;

