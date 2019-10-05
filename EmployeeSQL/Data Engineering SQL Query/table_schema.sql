--- drop table departments if exist
--- needed to recreate table to define value length
DROP TABLE departments CASCADE ;

--- create departments table 
CREATE TABLE departments (
      dept_no CHAR(4) NOT NULL, 
      dept_name VARCHAR (255) NOT NULL,
      PRIMARY KEY (dept_no));
	  
---run table departments and run again after import csv file 
	 
SELECT *
FROM departments 

---- drop table employees if exists 
--- needed to recreate table to define value length

DROP TABLE employees CASCADE ; 

--- create table employees
CREATE TABLE employees ( 
	        emp_no INT NOT NULL,
	        birth_date DATE NOT NULL,
	        first_name VARCHAR NOT NULL,
	        last_name VARCHAR  NOT NULL,
	        gender CHAR(1) NOT NULL,
	        hire_date DATE,
	        CONSTRAINT "pk_employees" PRIMARY KEY (emp_no)
);

--- run table emplyees and also run after import CSV file 

SELECT*
FROM employees; 

---- drop table dep_emp if exist
DROP TABLE dept_emp;

---- create table dept_emp

CREATE TABLE dept_emp (
       emp_no INT NOT NULL,
       dept_no CHAR(4) NOT NULL,
	   from_date DATE NOT NULL,
	   to_date DATE NOT NULL,
       FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	   FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

---- run table dept_emp and also run after import csv file

SELECT * 
FROM dept_emp ;

---- drop table dept_managers if exist

DROP TABLE dept_manager;

--- create table dept_manager 

CREATE TABLE dept_manager (
          dept_no CHAR(4) NOT NULL,
	      emp_no INT NOT NULL,
	      from_date DATE NOT NULL,
	      to_date DATE NOT NULL,
	      FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	      FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

---- run table dept_manger and also run after import CSV file

SELECT*
FROM dept_manager ;



--- drop table salaries if exists

DROP TABLE salaries;

--- create table salaries 

CREATE TABLE salaries (
          emp_no INT NOT NULL,
	      salary INT NOT NULL,
	      from_date DATE NOT NULL,
	      to_date DATE NOT NULL,
	      FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

-----run table salaries and also run after import CSV file

SELECT*
FROM salaries;

--- drop table titles if exists 

DROP TABLE titles;

---create table titles 

CREATE TABLE titles(
       emp_no INT NOT NULL,
	   title VARCHAR(255) NOT NULL,
	   from_date DATE NOT NULL,
	   to_date DATE NOT NULL,
	   FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
	   
); 

--- run table titles before and after csv file import 

SELECT*
FROM titles ; 










