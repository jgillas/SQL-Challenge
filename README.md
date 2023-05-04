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
