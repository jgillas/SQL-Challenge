Select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
From employees
Join salaries On
employees.emp_no = salaries.emp_no
Limit (10);

Select employees.first_name, employees.last_name, employees.hire_date
From employees
Where employees.hire_date > '1986-1-1' ::date And employees.hire_date < '1987-1-1' ::date
Limit (10);

Select dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
From dept_manager
Join employees On
employees.emp_no = dept_manager.emp_no
Join departments On 
dept_manager.dept_no = departments.dept_no
Limit (10);

Select dept_emp.dept_no, dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
From dept_emp
Join employees On
employees.emp_no = dept_emp.emp_no
Join departments On
dept_emp.dept_no = departments.dept_no
Limit (10);