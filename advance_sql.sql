Show count of Active and Inactive employees.
Show max salary in each department.
Show min salary in each department.
Show employees who joined on weekend (Saturday or Sunday).
Show employees who joined in the first half of the year (Jan–Jun).
Show employees who joined in the second half of the year (Jul–Dec).
Show employees whose full name length is more than 10 characters.
Show last 5 employees based on date of joining.
Show employees whose designation contains the word “Manager”.
Show number of employees whose salary > average salary.
Show department with highest number of employees.
Show department with lowest number of employees.
Show employees whose names have exactly 5 characters.
Show employees whose date_of_joining is a holiday (assume Sunday).
Show all employees who joined in 2020 or earlier.
Show employees with duplicate salary values.
Show employees working in more than one department (if any).
Show employees who joined on 1st date of any month.
Show employees who joined in Q1 (Jan–Mar).
Show employees who joined in Q2 (Apr–Jun).
Show employees who joined in Q3 (Jul–Sep).
Show employees who joined in Q4 (Oct–Dec).
Show employees whose salary is above the department average salary.
Show second highest salary from the table.
Show employees who have not been assigned a phone number (NULL).
select status, count(*) from employees group by status;
select department, max(salary) from employees group by department;
select department, min(salary) from employees group by department;
select * from employees where dayname(date_of_joining) in ('Saturday', 'Sunday');
select * from employees where month(date_of_joining) between 1 and 6; 
select * from employees where month(date_of_joining) between 7 and 12;
select * from employees where length(first_name)>10;
select * from employees order by date_of_joining desc limit 5;
select * from employees where designation like "%Manager%";
select count(*) from employees where salary>
(select avg(salary) from employees);
select department, count(*) as total_employee
from employees
group by department
order by total_employee desc
limit 1;
select department, count(*) as total_employee
from employees
group by department
order by total_employee
limit 1;
select * from employees where length(first_name)=5;
select * from employees where dayname(date_of_joining)="Sunday";
select * from employees where year(date_of_joining) <= 2020;
select emp_id, first_name, salary from employees where salary in 
(select salary from employees group by salary having count(*) > 1);
select first_name, count(distinct department) as dept_count from employees
group by first_name having count(department) > 1;
select * from employees where day(date_of_joining)=1;
select * from employees where month(date_of_joining) between 1 and 3;
select * from employees where month(date_of_joining) between 4 and 6;
select * from employees e where salary > 
(Select avg(salary) from employees where department= e.department);
select first_name , salary from employees 
order by salary desc limit 1 offset 1;
select max(salary) from employees where salary < (select max(salary) from employees);
