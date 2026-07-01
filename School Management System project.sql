create database SchoolManagement;
use SchoolManagement;
create table students (student_id INT,
    student_name VARCHAR(100),
    gender VARCHAR(20),
    city VARCHAR(100),
    department_id INT,
    admission_month VARCHAR(20));
    
create table teachers(
teacher_id INT,
    teacher_name VARCHAR(100),
    department_id INT
);

create table departments(
department_id INT,
    department_name VARCHAR(100));
    
create table courses(
course_id INT,
    course_name VARCHAR(100),
    department_id INT);
    
CREATE TABLE subjects (
    subject_id INT,
    subject_name VARCHAR(100),
    course_id INT,
    teacher_id INT
);

CREATE TABLE attendance (
    attendance_id INT,
    student_id INT,
    attendance_percentage DECIMAL(5,2)
);

CREATE TABLE marks (
    marks_id INT,
    student_id INT,
    subject_id INT,
    obtained_marks INT
);

CREATE TABLE fees (
    fee_id INT,
    student_id INT,
    total_fee DECIMAL(10,2),
    paid_amount DECIMAL(10,2),
    pending_amount DECIMAL(10,2)
);

CREATE TABLE result (
    result_id INT,
    student_id INT,
    gpa DECIMAL(3,2),
    status VARCHAR(20)
);

-- Primary Keys 
ALTER TABLE departments
ADD PRIMARY KEY (department_id);

ALTER TABLE teachers
ADD PRIMARY KEY (teacher_id);

ALTER TABLE courses
ADD PRIMARY KEY (course_id);

ALTER TABLE subjects
ADD PRIMARY KEY (subject_id);

ALTER TABLE students
ADD PRIMARY KEY (student_id);

ALTER TABLE attendance
ADD PRIMARY KEY (attendance_id);

ALTER TABLE marks
ADD PRIMARY KEY (marks_id);

ALTER TABLE fees
ADD PRIMARY KEY (fee_id);

ALTER TABLE result
ADD PRIMARY KEY (result_id);

-- Foreign Keys
ALTER TABLE students
ADD CONSTRAINT fk_students_department
FOREIGN KEY (department_id)
REFERENCES departments(department_id);

ALTER TABLE teachers
ADD CONSTRAINT fk_teachers_department
FOREIGN KEY (department_id)
REFERENCES departments(department_id);

ALTER TABLE courses
ADD CONSTRAINT fk_courses_department
FOREIGN KEY (department_id)
REFERENCES departments(department_id);

ALTER TABLE subjects
ADD CONSTRAINT fk_subjects_course
FOREIGN KEY (course_id)
REFERENCES courses(course_id);

ALTER TABLE subjects
ADD CONSTRAINT fk_subjects_teacher
FOREIGN KEY (teacher_id)
REFERENCES teachers(teacher_id);

ALTER TABLE attendance
ADD CONSTRAINT fk_attendance_student
FOREIGN KEY (student_id)
REFERENCES students(student_id);

ALTER TABLE marks
ADD CONSTRAINT fk_marks_student
FOREIGN KEY (student_id)
REFERENCES students(student_id);

ALTER TABLE marks
ADD CONSTRAINT fk_marks_subject
FOREIGN KEY (subject_id)
REFERENCES subjects(subject_id);

ALTER TABLE fees
ADD CONSTRAINT fk_fees_student
FOREIGN KEY (student_id)
REFERENCES students(student_id);

ALTER TABLE result
ADD CONSTRAINT fk_result_student
FOREIGN KEY (student_id)
REFERENCES students(student_id);
-- check duplicate value
select student_id,count(*) from students group by student_id having count(*)>1;
-- Task 31: SELECT *
-- Question: Retrieve all student records from the Students table.
SELECT * FROM Students;
-- Task 32: WHERE
-- Question: Find all students who belong to the city 'Karachi'.
select * from students where city ='Karachi';
-- Task 33: ORDER BY
-- Question: Display all students sorted by their names in alphabetical order (A to Z).
select * from students order by student_name asc;
-- Task 34: LIMIT
-- Question: Get the first 5 records from the Teachers table.
select * from teachers limit 5;
-- Task 35: DISTINCT
-- Question: List all unique cities where the students live, removing duplicates.
select distinct city from students;
-- Question: Find all students whose names start with the letter 'H'.
select * from students where student_name like 'H%';
-- Task 37: BETWEEN
-- Question: Retrieve all records from the Marks table where obtained marks are between 80 and 100.
select * from marks where obtained_marks between 80 and 100;
-- Task 38: IN
-- Question: Find all students who live either in 'Lahore' or 'Islamabad'.
select * from students where city in ('lahore' , 'Islamabad');
-- Task 39: IS NULL
-- Question: Check for any records in the Students table where the city column is missing or null.
select * from students where city is null;
-- Task 40: ALIAS (AS)
-- Question: Select student names but display the column header as 'Full_Name' in the output.
select student_name as Full_Name from students;
-- Task 41: INNER JOIN
-- Question: Retrieve student names along with their respective department names.
select s.student_id,s.student_name,s.gender,s.city,d.department_name from departments d join students s 
on s.department_id = d.department_id;
-- Task 42: LEFT JOIN
-- Question: Display all teachers and their assigned department names (including teachers without a department if any).
select t.teacher_id,t.teacher_name,d.department_name from departments d left join teachers t on 
t.department_id = d.department_id ;
-- Task 43: RIGHT JOIN
-- Question: List all departments along with the courses assigned to them.
select * from departments;
select * from courses;
select d.department_name,c.course_name from departments d  right join courses c 
on d.department_id = c.department_id;
-- Task 44: GROUP BY
-- Question: Count the total number of students belonging to each city.
select city,count(*) as total_student from students group by city order by total_student desc;
-- Task 45: HAVING
-- Question: List all cities that have more than 15 students living in them.
select city,count(*) as total_student from students group by city having count(*) >= 15 ;
-- Task 46: Aggregate Functions
-- Question: Find the maximum, minimum, and average obtained marks from the Marks table.
select max(obtained_marks) as maximum_marks from marks ;
select min(obtained_marks) as minimum_marks from marks ;
select round(avg(obtained_marks),2) as average_marks from marks ;
-- Task 47: CASE WHEN
-- Question: Display student IDs and categorize their marks as 'Excellent' (>=80), 'Good' (50-79), and 'Needs Improvement' (<50)
select student_id,obtained_marks,
case when obtained_marks >= 80 then 'Excellent'
when obtained_marks between 50 and 79 then 'Good'
else 'Needs improvement'
end as performance_category from marks;
-- Task 48: Subquery
-- Question: Find all students who scored marks higher than the overall average marks.
select * from marks;
select student_id,obtained_marks from marks where obtained_marks >= (select avg(obtained_marks) from marks);
-- Task 49: View Create 
-- Question: Create a view named 'Student_Report_Card' that shows student names, their attendance, and their final status.
create view Student_Report_card as select s.student_name,a.attendance_percentage,r.status from students
s join attendance a on s.student_id = a.student_id join result  r on s.student_id = r.student_id ;
select * from Student_Report_Card;
----- X ----------ANALYSIS QUESTION------------- X ---------------- X ------------- 
-- Task 51: Highest scorer
-- Question: Find the student who scored the highest obtained marks.
select s.student_name,s.city,m.obtained_marks from students s join marks m on s.student_id = m.student_id
where m.obtained_marks >= (select max(obtained_marks) from marks);
-- Task 52: Lowest scorer
-- Question: Find the student who scored the lowest obtained marks.
select s.student_name,s.city,m.obtained_marks from students s join marks m on s.student_id = m.student_id 
where m.obtained_marks = (select min(obtained_marks) from marks);
-- Task 53: Average marks
-- Question: Calculate the overall average marks scored by all students.
select round(avg(obtained_marks),2) as over_average_marks from marks;
-- Task 54: Failed students
-- Question: List all students who have a 'Fail' status in their final result.
select s.student_name,s.city,r.gpa,r.status from students s join result r on s.student_id = r.student_id 
where r.status ='Fail';
-- Task 55: Top departments
-- Question: List the departments ranked by their students' average GPA.
SELECT d.department_name, round(avg(r.gpa),2) AS average_gpa FROM Students s INNER JOIN Departments d ON 
s.department_id = d.department_id INNER JOIN Result r ON s.student_id = r.student_id GROUP BY 
d.department_name ORDER BY average_gpa DESC;
-- Task 56: Attendance %
-- Question: Calculate the overall average attendance percentage of the school.
select round(avg(attendance_percentage),2) as overall_average_attendence from attendance;
-- Task 57: Fee pending students
-- Question: Retrieve the list of students who have pending tuition fees.
select s.student_name,f.pending_amount from students s join fees f on s.student_id = f.student_id where
f.pending_amount >0;
-- Task 58: Best teacher
-- Question: Identify the teacher whose subjects have the highest student average marks.
select t.teacher_name,round(avg(m.obtained_marks),2) as avg_student_marks from teachers t inner join
 subjects  sub on t.teacher_id = sub.teacher_id inner join marks m on sub.subject_id = m.subject_id 
 group by t.teacher_name ;
 -- Task 59: Hardest subject
-- Question: Find the subject that has the lowest average obtained marks.
select sub.subject_name,round(avg(m.obtained_marks),2) as avg_student_mark from marks m join subjects 
sub on m.subject_id = sub.subject_id group by sub.subject_name order by avg_student_mark asc limit 1;
-- Task 60: Easiest subject
-- Question: Find the subject that has the highest average obtained marks.
select sub.subject_name,round(avg(obtained_marks),2) as avg_marks from marks m join subjects sub on 
m.subject_id = sub.subject_id group by sub.subject_name order by avg_marks desc limit 1;
-- Task 61: Gender-wise performance
-- Question: Analyze the average GPA achieved by Male vs Female students.
select s.gender,round(avg(r.gpa),2) as average_gpa from students s join result r on s.student_id = 
r.student_id group by s.gender order by average_gpa asc;
-- Task 62: City-wise performance
-- Question: Analyze the average GPA of students based on their home cities.
select s.city,round(avg(r.gpa),2) as average_gpa from students s join result r on s.student_id = 
r.student_id group by s.city ;
-- Task 63: Scholarship students
-- Question: List all top-performing students eligible for scholarship (GPA >= 3.5).
select s.student_name,r.gpa from students s join result r on s.student_id = r.student_id 
where r.gpa >=3.5;
-- Task 64: Pass percentage
-- Question: Calculate the overall passing percentage of the entire student population.
select (count(case when status ='Pass' then 1 end ) *100 / count(*)) as passing_result from result;
-- Task 65: Pass percentage
-- Question: Calculate the overall failing percentage of the entire student population.
select round(count(case when status ='Fail' then 1 end) * 100 / count(*),2) as failing_average from result;
-- Task 66: Department comparison
-- Question: Compare departments based on total students, average attendance, and average GPA.
select d.department_name,count(s.student_id) as total_students,round(avg(r.gpa),2) from departments d join
students s on d.department_id = s.department_id join result r on r.student_id = s.student_id group by
d.department_name;
-- Task 67: Monthly admissions
-- Question: Count the number of student admissions recorded in each month.
select admission_month,count(student_id) as student_admission_month from students group by admission_month;
-- Task 68: Semester comparison
-- Question: Compare student distributions across different courses/semesters.
select c.course_name,count(s.student_id) as student_distribution  from courses c join students s on
c.department_id = s.department_id group by c.course_name;
-- Task 69: Overall student performance
-- Question: Generate a comprehensive summary list showing names, city, attendance, marks, and final GPA.
select s.student_name,s.city,a.attendance_percentage,m.obtained_marks,r.gpa from students s join attendance
a on s.student_id = a.student_id join marks m on a.student_id = m.student_id join result r 
on m.student_id = r.student_id ;
-- Task 70: fees check 
-- Question: Retrieve the list of students who have fully paid their tuition fees.
-- Question: Retrieve the list of students who have fully paid their tuition fees.
SELECT s.student_name, f.total_fee, f.paid_amount, f.pending_amount FROM Students s INNER JOIN Fees f 
ON s.student_id = f.student_id WHERE f.pending_amount = 0;
