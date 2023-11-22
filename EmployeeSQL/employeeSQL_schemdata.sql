-- Code for Data Engineering


CREATE TABLE title (
	title_id VARCHAR(50)  PRIMARY KEY,
	title VARCHAR(50)
)

CREATE TABLE employees (
    emp_no INT  PRIMARY KEY	NOT NULL,
    emp_title_id VARCHAR(50),
    birth_date DATE	NOT NULL,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    sex VARCHAR(50),
    hire_date DATE	NOT NULL,
	FOREIGN KEY(emp_title_id) REFERENCES title(title_id)
)

CREATE TABLE salaries (
	emp_no INT  PRIMARY KEY NOT NULL,
	salary INT	NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
)

CREATE TABLE departments (
    dept_no VARCHAR(50) PRIMARY KEY,
    dept_name VARCHAR(50)
)

CREATE TABLE dept_emp (
    id_dept_emp SERIAL PRIMARY KEY  NOT NULL,
    emp_no INT   NOT NULL,
    dept_no VARCHAR(50),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
)

ALTER TABLE dept_emp DROP column id_dept_emp;
	
CREATE TABLE dept_manager (
    id_dept_manager SERIAL PRIMARY KEY  NOT NULL,
    dept_no VARCHAR(50),
    emp_no INT	NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no)  REFERENCES employees(emp_no)
)

ALTER TABLE dept_manager DROP column id_dept_manager;

SELECT * FROM title;
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
