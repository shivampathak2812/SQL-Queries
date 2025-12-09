-- Basic Level (1–15)
-- Show all employees from the table.
-- Show first name, last name, and department of all employees.
-- Show all employees from the IT department.
-- Find employees whose salary is more than 50,000.
-- Show employees whose status is Active.
-- Show employees who joined in the year 2023.
-- Show employees whose first name starts with ‘A’.
-- Show employees whose last name ends with ‘a’.
-- Show all unique department names.
-- Count total number of employees.
-- Show employees who joined before 2022.
-- Show employees with salary less than or equal to 40,000.
-- Show employees whose designation is “Software Engineer”.
-- Show employees sorted by salary in ascending order.
-- Show employees sorted by date_of_joining in descending order.
-- select first_name, last_name, department from employees;
select * from employees where department="IT";
select first_name, last_name, department, salary from employees where salary>50000;\
select * from employees where status="Active";
select * from employees where first_name like "A%";
select * from employees where last_name like "%A";
select distinct department from employees; 
select count(*) as total_employee from employees;
select * from employees where year(date_of_joining)=2023
select * from employees where year(date_of_joining)<2022;
select * from employees where salary<=40000;
select * from employees where designation="Software Engineer";
select * from employees order by salary asc;
select * from employees order by year(date_of_joining) desc;
