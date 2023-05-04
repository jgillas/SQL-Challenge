Select employees.first_name, employees.last_name, employees.sex
From employees
Where first_name = 'Hercules'
And last_name like 'B%'
Limit (10);

Select departments.dept_name, employees.emp_no, employees.last_name, employees.first_name
From departments
Join dept_emp ON
departments.dept_no = dept_emp.dept_no
Join employees ON
dept_emp.emp_no = employees.emp_no
Where departments.dept_name = 'Sales'
Limit (10);

Select departments.dept_name, employees.emp_no, employees.last_name, employees.first_name
From departments
Join dept_emp ON 
departments.dept_no = dept_emp.dept_no
Join employees ON
dept_emp.emp_no = employees.emp_no
Where departments.dept_name = 'Sales' OR departments.dept_name = 'Development'
Limit (10);

Select employees.last_name, Count(employees.last_name) AS "last name count"
From employees
Group BY employees.last_name
Order BY "last name count" DESC;