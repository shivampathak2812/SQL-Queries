Intermediate Level (16–35)
Show employees from HR or Finance department.
Show employees whose salary is between 40,000 and 70,000.
Show employees whose first name contains the letter ‘h’.
Show employees whose department is not IT.
Show employees whose status is Inactive.
Count employees in each department.
Find the average salary of IT department.
Show the highest salary in the employees table.
Show the lowest salary in the employees table.
Show employees who joined in the last 2 years.
Show employees whose phone number starts with ‘98’.
Show all employees except those from Sales department.
Show total salary expenditure of all employees.
Show employees grouped by designation.
Show employees whose email contains “gmail”.
Show employees who have the same department and status = Active.
Show top 5 highest paid employees.
Show first 10 employees based on emp_id.
Show employees who joined in February (any year).
Show employees with salary ending in “000”.
select * from employees where department in ("HR","Finance");
select * from employees where salary between 40000 and 70000;
select * from employees where first_name like "%H%";
select * from employees where department <> "IT";
select * from employees where status = "Inactive";
select count(department) from employees;
select avg(salary) from employees where department="IT";
select max(salary) from employees;
select min(salary) from employees;
select * from employees where date_of_joining>=date_sub(curdate(), interval 2 year);
select * from employees where phone like "98%";
select * from employees where department != "Sales";
select sum(salary) as expenditure from employees;
select  designation, count(*) as total_designation from employees group by designation;
select * from employees where email like "%gmail%";
select * from employees where status="Active" 
and department in(
select department 
from employees 
where status="Active" 
group by department 
having count(*)>1);
select * from employees order by salary desc limit 5;
select * from employees order by salary limit 1 offset 3;
select min(salary) from employees;
select * from employees limit 10; 
select * from employees where month(date_of_joining)=2;
select * from employees where salary % 1000=0;

