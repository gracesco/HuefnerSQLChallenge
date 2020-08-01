-- Create tables and put into database 

CREATE TABLE employees (
	emp_no INT,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	gender VARCHAR,
	hire_date DATE,
	PRIMARY KEY (emp_no)
);

-- SELECT * FROM employees

create table departments (
	dept_no VARCHAR,
	dept_name VARCHAR,
	PRIMARY KEY (dept_no)
);

-- SELECT * FROM departments

CREATE TABLE dept_emp (
	dept_no VARCHAR, 
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	from_date DATE,
	to_date DATE
);

-- SELECT * FROM dept_emp

CREATE TABLE dept_manager (
	dept_no VARCHAR,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	from_date DATE,
	to_date DATE
);

-- SELECT * FROM dept_manager

CREATE TABLE titles (
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	title VARCHAR,
	from_date DATE,
	to_date DATE
);

-- SELECT * FROM titles

CREATE TABLE salaries (
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	salary INT, 
	from_date DATE,
	to_date DATE
);

-- SELECT * FROM salaries

-- From here, you would go to pgadmin and find the tables. You would click "Import / Export" and Import the CSV data into the tables to run queries
	