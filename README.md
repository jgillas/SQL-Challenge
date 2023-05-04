# SQL-Challenge

For this challenge were asked to analyze six different spreadsheets together and collect certian data about the employees and their differnet departments. 

The first question was: List the employee number, last name, first name, sex, and salary of each employee. The code and data chart are below:

   Select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
   From employees
   Join salaries On
   employees.emp_no = salaries.emp_no
   Limit (10);
   
   <img width="798" alt="Question 1 Module 9" src="https://user-images.githubusercontent.com/125215083/236104973-f1805a1a-24ce-465c-8f44-1ff752e41e91.png">

The second question was: List the first name, last name, and hire date for the employees who were hired in 1986. The code and data chart are below:

  Select employees.first_name, employees.last_name, employees.hire_date
  From employees
  Where employees.hire_date > '1986-1-1' ::date And employees.hire_date < '1987-1-1' ::date
  Limit (10);
  
  <img width="388" alt="Question 2 Module 9" src="https://user-images.githubusercontent.com/125215083/236105113-a54cbd2c-b461-4286-9092-3323cd70d6d9.png">

The third question was: List the manager of each department along with their department number, department name, employee number, last name, and first name. The code and data chart are below:

  Select dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
  From dept_manager
  Join employees On
  employees.emp_no = dept_manager.emp_no
  Join departments On 
  dept_manager.dept_no = departments.dept_no
  Limit (10);
  
  <img width="632" alt="Question 3 Module 9" src="https://user-images.githubusercontent.com/125215083/236105216-b87dc5e7-b7b9-4c8c-89f9-724254fc02e7.png">
  
The fourth question was: List the department number for each employee along with that employee’s employee number, last name, first name, and department name. The code and data chart are below:

   Select dept_emp.dept_no, dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
   From dept_emp
   Join employees On
   employees.emp_no = dept_emp.emp_no
   Join departments On
   dept_emp.dept_no = departments.dept_no
   Limit (10);
   
   <img width="646" alt="Question 4 Module 9" src="https://user-images.githubusercontent.com/125215083/236105564-fc038617-3c99-4cdf-a6a7-18f41a5a43c7.png">

The fifth question was: List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B. The code and data chart are below: 

   Select employees.first_name, employees.last_name, employees.sex
   From employees
   Where first_name = 'Hercules'
   And last_name like 'B%'
   Limit (10);
   
   <img width="434" alt="Question 5 Module 9" src="https://user-images.githubusercontent.com/125215083/236105882-49dcbd42-6da6-4c8e-874e-02eebc18240c.png">

The sixth question was: List each employee in the Sales department, including their employee number, last name, and first name. The code and data chart are below:

   Select departments.dept_name, employees.emp_no, employees.last_name, employees.first_name
   From departments
   Join dept_emp ON
   departments.dept_no = dept_emp.dept_no
   Join employees ON
   dept_emp.emp_no = employees.emp_no
   Where departments.dept_name = 'Sales'
   Limit (10);
   
   <img width="513" alt="Question 6 Module 9" src="https://user-images.githubusercontent.com/125215083/236106108-d0485e26-aba8-4aa7-870a-2b0b19b9da88.png">

The seventh question was: List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name. The code and data table are below: 

   Select departments.dept_name, employees.emp_no, employees.last_name, employees.first_name
   From departments
   Join dept_emp ON 
   departments.dept_no = dept_emp.dept_no
   Join employees ON
   dept_emp.emp_no = employees.emp_no
   Where departments.dept_name = 'Sales' OR departments.dept_name = 'Development'
   Limit (10);
   
   <img width="518" alt="Question 7 Module 9" src="https://user-images.githubusercontent.com/125215083/236106216-996d0da1-1e91-4899-a465-79e964e862e9.png">

The eighth question was: List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name). The code and data chart are below: 

   Select employees.last_name, Count(employees.last_name) AS "last name count"
   From employees
   Group BY employees.last_name
   Order BY "last name count" DESC;   
   
   <img width="299" alt="Question 8 Module 9" src="https://user-images.githubusercontent.com/125215083/236106414-b107c6b2-201c-416b-beff-e414d55b0d2d.png">
