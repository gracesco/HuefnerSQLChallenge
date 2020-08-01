-- List the employee number, first name, last name, gender, and salary of each employee

SELECT employees.emp_no, employees.first_name, eemployees.last_name, eemployees.gender, salaries.salary
FROM employees 
JOIN salaries
ON (employee.emp_no=salaries.emp_no);


-- List employees who were hired in 1986
SELECT * 
FROM employees
WHERE hire_date LIKE "%1986%";


-- List manager of each department
SELECT dept_manager.dept_no, dept_manager.emp_no, dept_manager.from_date, dept_manager.to_date, employees.first_name, employees.last_name, departments.dept_name
FROM dept_manager 
JOIN employees 
ON(dept_manager.emp_no=employees.emp_no)
JOIN departments  
ON (dept_manager.dept_no=departments.dept_no);


-- List department of each employee
SELECT employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
FROM employees 
JOIN departments 
ON (employees.dept_o=departments.dept_no);


-- List all employees whose first name is Hercules and Last name begins with B
SELECT first_name, last_name
FROM employees
WHERE first_name LIKE "%Hercules%"
AND last_name LIKE "B%";


-- List all employees in the sales department
SELECT employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
FROM employees 
JOIN dept_emp 
ON (employees.emp_no=dept_emp.emp_no)
JOIN departments 
ON (dept_emp.dept_no=departments.dept_no)
WHERE departments.dept_name="Sales";

-- List all employees in the sales and development departments 
SELECT employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
FROM employees  
JOIN dept_emp
ON (employees.emp_no=dept_emp.emp_no)
JOIN departments 
ON (dept_emp.dept_num=departments.dept_num)
WHERE departments.dept_name="Sales" 
OR departments.dept_name="Development";

-- In descending order, list the frequency count of employee last names
SELECT last_name,count(last_name) AS total_named 
FROM employees 
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;

-- Epilogue who am I?: APRIL FOOLS!
SELECT * 
FROM employees 
WHERE emp_id=499942;