--- List the following details of each employee: employee number
--last name, first name , gender, and salary

SELECT e.emp_no, e.last_name, e.first_name , e.gender, s.salary
FROM employees AS e 
INNER JOIN salaries AS s
ON  (e.emp_no = s.emp_no) ;

---- List employees who were hire 1986

SELECT *
FROM employees
WHERE EXTRACT (YEAR FROM hire_date)= 1986;

----List the manager of each department with the following information: department number
---- department name,  manager's employee number, last name, first name, and start and end employment dates.

SELECT d.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name, 
       m.from_date, m.to_date
FROM departments AS d
INNER JOIN dept_manager AS m
ON d.dept_no = m.dept_no
INNER JOIN employees AS e
ON m.emp_no = e.emp_no;


--- lst the department of each employee with the following information:
---employee number, last name, first name, and department name.

SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp AS de
INNER JOIN employees AS e
ON de.emp_no = e.emp_no
INNER JOIN departments AS d
ON de.dept_no = d.dept_no; 




----List all employees whose first name is "Hercules" 
----and last names begin with "B."

SELECT *
FROM employees
WHERE first_name = 'Hercules'
AND last_name like 'B%'; 


---List all employees in the Sales department, including their 
---employee number, last name, first name, and department name.


SELECT e.emp_no, e.last_name, e.first_name , d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de
ON e.emp_no = de.emp_no
INNER JOIN departments AS d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';


---List all employees in the Sales and Development departments, 
----including their employee number, last name, first name, and department name.


SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de
ON e.emp_no = de.emp_no
INNER JOIN departments AS d
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales'
OR d.dept_name = 'Development';


---- In descending order, list the frequency count of employee
 ---last names, i.e., how many employees share each last name.
 

SELECT e.last_name , count(e.emp_no)
FROM employees AS e
GROUP BY e.last_name
ORDER BY count(e.emp_no)DESC;





 
 







































