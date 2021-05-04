--question 1
SELECT
	e.emp_no,
	e.last_name,
	e.first_name,
	e.sex,
	s.salary
FROM "Employees" e
	JOIN "Salaries" s on e.emp_no = s.emp_no;
	
--question 2
SELECT 
	e.first_name,
	e.last_name,
	e.hire_date
FROM "Employees" e
WHERE e.hire_date BETWEEN '1986-01-01' AND '1986-12-31';

--question 3 
SELECT
	d.dept_no,
	d.dept_name,
	dm.emp_no,
	emp.last_name,
	emp.first_name
FROM "Departments" d
JOIN "Department_Mgr" dm
ON d.dept_no = dm.dept_no
JOIN "Employees" emp
ON dm.emp_no = emp.emp_no;

--question 4
SELECT 
	demp.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM "Dept_Emp" demp
JOIN "Employees" e
ON demp.emp_no = e.emp_no
JOIN "Departments" d
ON demp.dept_no = d.dept_no;

--question 5
SELECT first_name, last_name
FROM "Employees"
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

--question 6
SELECT demp.emp_no,e.last_name, e.first_name,d.dept_name
FROM "Dept_Emp" demp
JOIN "Employees" e
ON demp.emp_no = e.emp_no
JOIN "Departments" d
ON demp.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

--question 7
SELECT demp.emp_no,e.last_name, e.first_name,d.dept_name
FROM "Dept_Emp" demp
JOIN "Employees" e
ON demp.emp_no = e.emp_no
JOIN "Departments" d
ON demp.dept_no = d.dept_no
WHERE d.dept_name = 'Sales'
OR d.dept_name = 'Development';

--question 8
SELECT last_name,
COUNT(last_name) AS "Frequency"
FROM "Employees"
GROUP BY last_name
ORDER BY COUNT(last_name)DESC;

