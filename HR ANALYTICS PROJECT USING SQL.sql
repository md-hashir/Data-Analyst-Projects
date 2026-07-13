CREATE DATABASE HRAnalytics;
USE HRAnalytics;
--- Department table
CREATE TABLE Departments (
    DepartmentID INT auto_increment KEY ,
    DepartmentName VARCHAR(50) NOT NULL
);

-- 2. Employees Table
CREATE TABLE Employees (
    EmployeeID INT auto_increment KEY ,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Gender VARCHAR(10),
    Age INT,
    DepartmentID INT,
    HireDate DATE NOT NULL,
    Role VARCHAR(50),
    Salary DECIMAL(10, 2),
    Attrition VARCHAR(5) DEFAULT 'No', 
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

-- 3. Performance Reviews Table
CREATE TABLE PerformanceReviews (
    ReviewID INT auto_increment KEY,
    EmployeeID INT,
    ReviewDate DATE,
    PerformanceRating INT,
    MonthlyHoursWorked INT,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);


INSERT INTO Departments (DepartmentName) VALUES 
('HR'),
('Engineering'),
('Sales'),
('Marketing'),
('Finance');


INSERT INTO Employees (FirstName, LastName, Gender, Age, DepartmentID, HireDate, Role, Salary, Attrition) VALUES 
-- HR Department (DeptID: 1)
('Sana', 'Ahmed', 'Female', 34, 1, '2021-06-01', 'HR Manager', 95000.00, 'No'),
('Ali', 'Hamza', 'Male', 26, 1, '2023-03-10', 'HR Coordinator', 48000.00, 'No'),
('Ayesha', 'Malik', 'Female', 29, 1, '2024-01-15', 'Recruiter', 55000.00, 'Yes'),

-- Engineering Department (DeptID: 2)
('Ahmed', 'Khan', 'Male', 29, 2, '2022-03-15', 'Software Engineer', 85000.00, 'No'),
('Fatima', 'Zainab', 'Female', 25, 2, '2024-02-01', 'Junior Developer', 50000.00, 'Yes'),
('Zeeshan', 'Ali', 'Male', 38, 2, '2019-11-12', 'Tech Lead', 145000.00, 'No'),
('Mariam', 'Ilyas', 'Female', 31, 2, '2021-08-24', 'QA Engineer', 78000.00, 'No'),
('Bilal', 'Siddiqui', 'Male', 27, 2, '2023-05-19', 'DevOps Engineer', 90000.00, 'No'),
('Osman', 'Tariq', 'Male', 24, 2, '2025-02-10', 'Intern', 30000.00, 'No'),
('Hania', 'Amir', 'Female', 28, 2, '2023-07-01', 'Software Engineer', 82000.00, 'No'),

-- Sales Department (DeptID: 3)
('Ali', 'Raza', 'Male', 41, 3, '2020-01-10', 'Sales Director', 120000.00, 'No'),
('Zain', 'Abdin', 'Male', 23, 3, '2024-05-12', 'Sales Executive', 45000.00, 'Yes'),
('Kiran', 'Shahzad', 'Female', 32, 3, '2022-10-05', 'Account Manager', 68000.00, 'No'),
('Farhan', 'Saeed', 'Male', 30, 3, '2023-11-20', 'Sales Executive', 47000.00, 'No'),
('Nida', 'Khan', 'Female', 27, 3, '2025-01-15', 'Sales Executive', 44000.00, 'Yes'),

-- Marketing Department (DeptID: 4)
('Bilal', 'Mustafa', 'Male', 31, 4, '2023-08-19', 'Marketing Specialist', 65000.00, 'No'),
('Saba', 'Qamar', 'Female', 35, 4, '2021-04-14', 'Marketing Manager', 92000.00, 'No'),
('Umer', 'Faruq', 'Male', 26, 4, '2024-06-01', 'SEO Analyst', 52000.00, 'No'),
('Mahira', 'Khan', 'Female', 29, 4, '2023-09-10', 'Content Writer', 48000.00, 'Yes'),

-- Finance Department (DeptID: 5)
('Ayesha', 'Siddiqua', 'Female', 27, 5, '2023-11-05', 'Financial Analyst', 70000.00, 'No'),
('Fahad', 'Mustafa', 'Male', 43, 5, '2018-05-20', 'Finance Director', 160000.00, 'No'),
('Sara', 'Altaf', 'Female', 25, 5, '2024-09-01', 'Junior Accountant', 45000.00, 'No'),
('Hamza', 'Ali', 'Male', 33, 5, '2022-02-18', 'Senior Accountant', 85000.00, 'No'),
('Zoya', 'Nasir', 'Female', 28, 5, '2024-03-11', 'Financial Analyst', 68000.00, 'No'),
('Waqas', 'Jameel', 'Male', 36, 5, '2020-07-19', 'Risk Analyst', 98000.00, 'No');



INSERT INTO PerformanceReviews (EmployeeID, ReviewDate, PerformanceRating, MonthlyHoursWorked) VALUES 
(1, '2025-12-20', 5, 165),
(2, '2025-12-20', 4, 160),
(3, '2024-08-15', 2, 130), 
(4, '2025-12-20', 4, 172),
(5, '2024-06-10', 3, 140), 
(6, '2025-12-20', 5, 185), 
(7, '2025-12-20', 4, 168),
(8, '2025-12-20', 4, 170),
(9, '2025-12-20', 3, 150),
(10, '2025-12-20', 4, 162),
(11, '2025-12-20', 3, 158),
(12, '2024-09-01', 2, 135), 
(13, '2025-12-20', 4, 164),
(14, '2025-12-20', 3, 160),
(15, '2025-05-12', 1, 120), 
(16, '2025-12-20', 4, 165),
(17, '2025-12-20', 5, 178),
(18, '2025-12-20', 3, 155),
(19, '2024-11-30', 2, 142), 
(20, '2025-12-20', 5, 176),
(21, '2025-12-20', 5, 180),
(22, '2025-12-20', 4, 158),
(23, '2025-12-20', 4, 169),
(24, '2025-12-20', 3, 160),
(25, '2025-12-20', 4, 171);
select * from departments;
select * from employees;
select * from performancereviews;

--- Level 1: Basic Data Retrieval (Tasks 1–10)
--- SQL Challenge Tasks
--- Task 1 Retrieve all columns from the Employees table.
select * from employees;
--- Task 2 Display all departments available in the Departments table.
select departmentname from departments;
--- Task 3 List the unique jobs (Role) from the Employees table.
select distinct role from employees;
--- Task 4 Show the first name, last name, and salary of all employees.
select firstname,lastname,salary from employees;
--- Task 5 Find all employees who are female.
select * from employees where gender ='female';
--- Task 6 List all employees whose age is greater than 30.
select * from employees where age >= 30;
--- Task 7 Show all employees who currently have an active status (Attrition = 'No').
select * from employees where attrition ='No';
--- Task 8 Find all employees who left the company
select * from employees where attrition ='yes';
--- Task 9 List all employees who work as a 'Software Engineer'.
select * from employees where role ='software engineer';
--- Task 10 Display all columns from the PerformanceReviews table.
select * from performancereviews;
--- Level 2: Filtering & Sorting (Tasks 11–20)
--- Task 11 List all employees with a salary greater than 80,000.
select * from employees where salary > 80000;
--- Task 12 Find employees who were hired after January 1st, 2023.
select * from employees where hiredate > '2023-01-01';
--- Task 13 Show all female employees under the age of 30.
select employeeid,firstname,lastname,gender from employees where gender ='female' and age < 30;
--- Task 14 Find employees whose salary is between 50,000 and 100,000.
select * from employees where salary between 50000 and 100000;
--- Task 15 List all employees whose last name starts with the letter 'K'.
select * from employees where lastname like '%k';
--- Task 16 Retrieve all employees sorted by their Salary from highest to lowest.
select * from employees order by salary desc;
--- Task 17 List active employees sorted by their Age in ascending order.
select * from employees where attrition = 'No' order by age asc;
--- Task 18 Retrieve all performance reviews where the rating is exactly 5.
select * from performancereviews where performancerating = 5;
--- Task 19 Find employees who do NOT work in DepartmentID 3.
select * from employees where departmentid != 3;
--- Task 20 Show all employees hired in the year 2024. 
select * from employees where hiredate between '2024-01-01' and '2024-12-31';
--- Level 3: Aggregate Functions (Tasks 21–30)
--- Task 21 Find the total number of employees in the company
select count(employeeid) as total_employee from employees;
--- Task 22 Calculate the total monthly salary budget paid by the company.
select sum(salary) as total_salary from employees;
--- Task 23 Find the average salary of all employees.
select round(avg(salary),2) as average_salary from employees;
--- Task 24 Find the maximum salary offered in the company.
select max(salary) as maximum_salary from employees;
--- Task 25 Find the minimum salary among all employees.
select min(salary) as minimum_salary from employees;
--- Task 26 Get the average age of employees working in the company.
select round(avg(age),2) as average_age from employees;
--- Task 27 Count how many employees have left the company
select count(attrition ='yes') as total_leftemployee from employees;
--- Task 28 Find the maximum monthly hours worked recorded in the reviews.
select max(monthlyhoursworked) as maximumhours from performancereviews;
--- Task 29 alculate the average performance rating across the whole company.
select round(avg(performancerating),2) as average_performance from performancereviews;
--- 30 Count the total number of departments.
select count(departmentname) as total_department from departments;
--- Level 4: Grouping & Data Aggregation (Tasks 31–40)
 --- Task 31 Count the number of employees in each department
 select d.departmentname,count(e.employeeid) as total_employee from departments d join employees e 
 on e.departmentid = d.departmentid group by d.departmentname;
 --- Task 32 Find the average salary for each department.
 select d.departmentname,round(avg(e.salary),2) as average_salary from employees e join departments d
 on e.departmentid = d.departmentid group by d.departmentname;
 --- Task 33 Calculate the total salary spent on each distinct job Role.
 select distinct role,sum(salary) as total_salary from employees group by role;
--- Task 34 Group employees by Gender and find the average age for each gender.
select gender,round(avg(age),2) as average_age from employees group by gender;
--- Task 35 Find the total number of active vs. resigned employees using GroupBy.
select attrition,count(*) as active_vs_resigned from employees group by attrition;
--- Task 36 Show the average performance rating grouped by EmployeeID.
select e.employeeid,round(avg(p.performancerating),2) as average_performance from performancereviews p 
join employees e on e.employeeid = p.employeeid group by e.employeeid;
--- Task 37 Group by DepartmentID and show the maximum salary in each department.
select departmentid,max(salary) as maximum_salary from employees group by departmentid;
--- Task 38 Display the total monthly hours worked for each employee from the reviews table.
select employeeid,sum(monthlyhoursworked) as total_monthly_hours from performancereviews group by employeeid;
--- Task 39 List departments where the average employee salary is greater than 70,000.
select d.departmentname,round(avg(e.salary),2) as average_salary from employees e join departments d 
on e.departmentid = d.departmentid group by d.departmentname having avg(e.salary) > 70000;
--- Task 40 List roles that have more than 2 employees working in them.
select role,count(*) as employees_working from employees group by role having count(*) >=2;


---- Level 5: Intermediate Joins (Tasks 41–50)
--- Task 41 Display employee names along with their respective DepartmentName.
select e.firstname,e.lastname,d.departmentname from employees e join departments d on e.departmentid =
d.departmentid;
--- Task 42 Retrieve all employee names, roles, and their performance ratings.
select e.firstname,e.lastname,e.role,p.performancerating from employees e join performancereviews p
on e.employeeid = p.employeeid;
--- Task 43 List all employees in the 'Engineering' department with their salary details.
select d.departmentname,e.salary from employees e join departments d on e.departmentid = d.departmentid
where d.departmentname  ='engineering';
--- Task 44 Find the average salary of employees for each DepartmentName (using text name, not ID).
select d.departmentname,round(avg(e.salary),2) as average_salary from employees e 
join departments d on e.departmentid = d.departmentid group by d.departmentname;
--- Task 45 List all employees who have received a performance rating of 5, along with their department name.
select e.employeeid,p.performancerating,d.departmentname from employees e join performancereviews p
on e.employeeid = p.employeeid join departments d on e.departmentid = d.departmentid where 
p.performancerating = 5;
--- Task 46 Show the total number of employees who left (Attrition='Yes') in each DepartmentName.
select d.departmentname,count(*) as total_left from employees e join departments d 
on e.departmentid = d.departmentid where e.attrition = 'yes' group by d.departmentname;
--- Task 47 combine Employees and PerformanceReviews to show employee names and their MonthlyHoursWorked.
select e.firstname,e.lastname,p.monthlyhoursworked from employees e join performancereviews p on 
e.employeeid = p.employeeid ;
--- Task 48 Display the first name, role, department name, and performance rating of all active employees.
select e.firstname,e.role,d.departmentname,p.performancerating from employees e join departments d on
e.departmentid = d.departmentid join performancereviews p on e.employeeid = p.employeeid ;
--- Task 49 Find the total salary budget for the 'Sales' department.
select d.departmentname,sum(e.salary) as total_sale from employees e join departments d on e.departmentid =
d.departmentid where d.departmentname ='sales' group by d.departmentname;


---- Level 6: Advanced Joins & Conditions (Tasks 51–60)
--- Task 51 Find employees whose individual salary is higher than the overall company average salary.
select * from employees where salary >= (select avg(salary) from employees);
--- Task 52 List employees who have a performance rating of less than 3 along with their manager department.
select e.employeeid,e.firstname,p.performancerating,d.departmentname from employees e join departments d
on e.departmentid = d.departmentid join performancereviews p on e.employeeid = p.employeeid where
p.performancerating < 3; 
--- Task 53 Show the maximum performance rating achieved in the 'Marketing' department.
select d.departmentname,max(p.performancerating) as maximum_performancerating from departments d join
employees e on e.departmentid = d.departmentid join performancereviews p on e.employeeid = p.employeeid 
where d.departmentname ='marketing';
--- Task 54 Find the average monthly hours worked by employees in the 'Finance' department.
select d.departmentname,avg(p.monthlyhoursworked) as average_hoursworked from performancereviews p join
employees e on p.employeeid = e.employeeid join departments d on e.departmentid = d.departmentid 
where d.departmentname ='finance' group by d.departmentname;
--- Task 55 Display the names of employees who have Attrition = 'Yes' and had a performance rating below 3.
select e.firstname,e.attrition,p.performancerating from employees e join performancereviews
p on e.employeeid = p.employeeid where p.performancerating < 3 and e.attrition ='yes';
--- Task 56 Find the department name that has the highest number of active employees.
select d.departmentname,sum(case when attrition = 'yes' then 1 else 0 end ) as active_employee from 
employees e join departments d on e.departmentid = d.departmentid group by d.departmentname order by 
active_employee desc;
--- Task 57 Group by department name and gender to see the employee distribution count.
select d.departmentname,e.gender,count(*) as employee_distribution from employees e join departments d 
on e.departmentid = d.departmentid group by d.departmentname,e.gender;
--- Task 58 Display the names of employees who work more than 170 hours a month along with their roles.
select e.firstname,p.monthlyhoursworked,e.role from employees e join performancereviews p on e.employeeid
= p.employeeid where p.monthlyhoursworked > 170 ;
--- Task 59 List the top 3 highest-paid employees along with their department names.
select e.firstname,e.salary,d.departmentname from employees e join
departments d on e.departmentid = d.departmentid order by e.salary desc limit 3;
--- Task 60 Find the average performance rating given to male vs. female employees.
select e.gender,round(avg(p.performancerating),2) as average_performance from employees e join 
performancereviews p on e.employeeid = p.employeeid group by e.gender; 
--- Level 7: Data Analytics & Ratios (Tasks 61–70)
--- Task 61 Find the department-wise attrition rate.
select d.departmentname,(sum(case when e.attrition ='yes' then 1 else 0 end)/count(*)) *100 
as department_wiseattrition from employees e join departments d on e.departmentid = d.departmentid
 group by d.departmentname;
 --- Task 62 Categorize employees into age groups: 'Under 25', '26-35', '36+' using a CASE statement.
 select employeeid, FirstName, LastName, Age,case 
        when Age <= 25 then 'Under 25'
        when Age between 26 and 35 then '26-35'
        else '36+'
    end as Age_Group
from Employees;
