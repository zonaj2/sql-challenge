-- List the employee number, last name, first name, sex, and salary of each employee
Select e.emp_id, e.first_name, e.last_name, e.sex, s.salary
FROM employee_info e
JOIN salaries s ON
e.emp_id = s.emp_id;

-- List the first name, last name, and hire date for the employees who were hired in 1986 
Select e.first_name, e.last_name, e.hire_date
FROM employee_info e
WHERE e.hire_date between '1986-01-01' and '1986-12-31';

-- List the manager of each department along with their department number, department name, employee number, last name, and first name
SELECT e.emp_id, e.first_name, e.last_name, d.dept_name, d.dept_id
FROM employee_info e
INNER JOIN manager_department m ON m.emp_id = e.emp_id
INNER JOIN departments d ON d.dept_id = m.dept_id;

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name
SELECT e.emp_id, e.first_name, e.last_name, d.dept_name, d.dept_id
FROM employee_info e
INNER JOIN employee_department ed ON 
ed.emp_id = e.emp_id
INNER JOIN departments d ON 
d.dept_id = ed.dept_id;

-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
Select first_name, last_name, sex
FROM employee_info
WHERE first_name = 'Hercules'
AND  employee_info.last_name LIKE 'B%'

Select * from employees
-- List each employee in the Sales department, including their employee number, last name, and first name
Select e.first_name, e.last_name, e.emp_id
FROM employee_info e
INNER JOIN employee_department ed ON
ed.emp_id = e.emp_id
INNER JOIN departments d ON
d.dept_id = ed.dept_id
WHERE dept_name = 'Sales';

-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
Select e.emp_id, e.first_name, e.last_name, d.dept_name
FROM employee_info e
INNER JOIN employee_department ed ON
ed.emp_id = e.emp_id
INNER JOIN departments d ON
d.dept_id = ed.dept_id
WHERE dept_name = 'Sales'
OR dept_name = 'Development';

-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
Select last_name, COUNT(last_name) AS Counts
FROM employee_info
GROUP BY last_name
ORDER BY Counts DESC;


