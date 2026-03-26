# Create a database named Student_SPIC and create three tables: Students, Courses, and Enrollments with appropriate columns and constraints.
CREATE DATABASE Student_SPIC;

USE Student_SPIC;

CREATE TABLE Students (
    student_id int primary key,
    name varchar(50),
    age int,
    city varchar(30),
    email varchar(50) not null unique);
    desc Students;
    
    create table  Courses (
    course_id int primary key,
    course_name varchar(50),
    fees int);
desc Courses;

create table Enrollments (
    enroll_id int primary key,
    student_id int,
    course_id int,
    enroll_date date,
    foreign key (student_id) references Students(student_id),
    foreign key (course_id) references Courses(course_id));
    desc Enrollments;
    
    # Insert at least 30 records into Students table, 30 records into Courses table, and 30 records into Enrollments table.
     insert into Students(student_id,name,age,city,email)
    values
    (1,"Aman Rai",19,"Mumbai","AmanRai1@gmail.com"),
    (2,"Pawan Prajapati",20,"Delhi","PawanPrajapati2@gmail.com"),
    (3,"Navin Yadav",22,"Pune","NavinYadav3@gmail.com"),
    (4,"Ankur Rajput",21,"Lucknow","AnkurRajput4@gmail.com"),
    (5,"Ansh Yadav",25,"Kolkata","AnshYadav5@gmail.com"),
    (6,"Belal Hussain",27,"Nashik","BelalHussain6@gmail.com"),
    (7,"Ayush Rai",20,"Bengaluru","AyushRai7@gmail.com"),
    (8,"Sahil Prajapati",23,"Ahmedabad","SahilPrajapati8@gmail.com"),
    (9,"Imran Khan",22,"Nashik","ImranKhan9@gmail.com"),
    (10,"Ansh Rajput",24,"Varanasi","AnshRajput10@gmail.com"),
    (11,"Mohit Yadav",20,"Pune","MohitYadav11@gmail.com"),
    (12,"Jai Singh",26,"Mumbai","JaiSingh12@gmail.com"),
    (13,"Vipin Vishwakarma",25,"Mumbai","VipinVishwakarma13@gmail.com"),
    (14,"Varish Ansari",19,"Hyderabad","VarishAnsari14@gmail.com"),
    (15,"Shivam Sahu",17,"Delhi","ShivamSahu15@gmail.com"),
    (16,"Nikhil Rai",24,"Kanpur","NikhilRai16@gmail.com"),
    (17,"Nitish Panday",22,"Patna","NitishPanday17@gmail.com"),
    (18,"Vivek Maurya",26,"Chennai","VivekMaurya18@gmail.com"),
    (19,"Aditya Gupta",19,"Kanpur","AdityaGupta19@gmail.com"),
    (20,"Prashant Yadav",18,"Delhi","PrashantYadav20@gmail.com"),
    (21,"Adarsh Tiwari",22,"Mumbai","AdarshTiwari21@gmail.com"),
    (22,"Alok Prajapati",24,"Kolkata","AlokPrajapati22@gmail.com"),
    (23,"Abhay Gound",20,"Hyderabad","AbhayGound23@gmail.com"),
    (24,"Sachin Kumar",25,"Pune","SachinKumar24@gmail.com"),
    (25,"Shivam Sharma",21,"Pune","ShivamSharma25@gmail.com"),
    (26,"Rishab Rajbhar",23,"Delhi","RishabRajbhar26@gmail.com"),
    (27,"Rohan Kumar",20,"Surat","RohanKumar27@gmail.com"),
    (28,"Krishna Rai",26,"Chennai","KrishnaRai28@gmail.com"),
    (29,"Harsh Rai",21,"Lucknow","HarshRai29@gmail.com"),
    (30,"Aryan Rai",24,"Kanpur","AryanRai30@gmail.com");
    
    # Display all records from Students
     select * from Students;
     
      insert into Courses(course_id,course_name,fees)
    values
    (101,"SQL",4000),
    (102,"Python",6000 ),
    (103,"JavaScript ",3500),
    (104,"Advanced Excel",5000),
    (105,"Power BI",7000),
    (106,"Tableau",6000),
    (107,"Data Analysis",15000),
    (108,"Data Science",30000),
    (109,"HTML",4000), 
    (110,"MySQL",4000),
    (111,"Machine Learning",25000),
    (112,"AWS",15000),
    (113,"MS PowerPoint",2000),
    (114,"MongoDB",6000),
    (115,"DevOps",18000),
    (116,"Django",10000),
    (117,"MS Word",2500),
    (118,"MongoDB",6000),
    (119,"Power BI",7000),
    (120,"SQL",4000),
    (121,"Python",6000),
    (122,"Machine Learning",25000),
    (123,"AWS",15000),
    (124,"Advanced Excel",5000),
    (125,"Django",10000),
    (126,"Power BI",7000),
    (127,"HTML",4000), 
    (128,"MS PowerPoint",2000),
    (129,"JavaScript",3500),
    (130,"DevOps",18000);
    
    # Display all records from Courses
    select * from Courses;
    
     insert into Enrollments(enroll_id,student_id,course_id,enroll_date)
    values	
    (1,1,101,"2025-06-10"),
    (2,2,102,"2025-07-12"),
    (3,3,103,"2025-09-15"),
    (4,4,104,"2025-04-18"),
    (5,5,105,"2025-05-20"),
    (6,6,106,"2025-08-22"),
    (7,7,107,"2025-02-25"),
    (8,8,108,"2025-04-28"),
    (9,9,109,"2025-09-30"),
    (10,10,110,"2025-07-02"),
    (11,11,111,"2025-03-05"),
    (12,12,112,"2025-07-08"),
    (13,13,113,"2025-06-23"),
    (14,14,114,"2025-08-12"),
    (15,15,115,"2025-04-15"),
    (16,16,116,"2025-09-18"),
    (17,17,117,"2025-07-20"),
    (18,18,118,"2025-03-22"),
    (19,19,119,"2025-06-25"),
    (20,20,120,"2025-09-28"),
    (21,21,121,"2025-04-30"),
    (22,22,122,"2025-08-02"),
    (23,23,123,"2025-03-01"),
    (24,24,124,"2025-06-08"),
    (25,25,125,"2025-08-10"),
    (26,26,126,"2025-09-12"),
    (27,27,127,"2025-04-15"),
    (28,28,128,"2025-05-18"),
    (29,29,129,"2025-08-20"),
	(30,30,130,"2025-04-22");
    
# Display all records from Enrollments
select * from Enrollments;
      
# Display only student_id and name from Students table.
select student_id,name from Students;

# Display enroll_id and enroll_date from Enrollments table.
select enroll_id,enroll_date from Enrollments;
 
# Display course_name and fees from Courses table.
select course_name,fees from Courses;
 
# Retrieve students whose names start with letter 'A'.
SELECT * FROM students WHERE name LIKE "A%"; 

# Retrieve courses whose names start with letter 'S'.        
select * from Courses where course_name like "s%";
 
# Display students whose age is between 22 and 25.
select student_id,name,age from Students where age between 22 and 25;

# Display students whose age is greater than 18 and less than 21.
select student_id,name,age from students where age<21 and age>18;
 
# Retrieve enrollments between two specific dates.
select enroll_id,enroll_date from Enrollments where enroll_date between "2025-04-12" and "2025-06-22";

# Display first 5 students ordered by age in ascending order.
 SELECT * FROM Students ORDER BY age asc LIMIT 5;

# Display top 10 courses with highest fees. 
 Select * from Courses order by fees desc limit 10;

# Display latest 15 enrollments based on enroll_date.
select * from Enrollments order by enroll_date desc limit 15;
    
# Update a student's name (e.g., Aman Rai to Amit Yadav).
    update students
  set name="Amit Yadav"
  where name="Aman Rai";
  
# Update course name for a specific course_id.
  update Courses
  set course_name ="C++"
  where course_id=112;

# Update enroll_date for a specific enrollment.
  update Enrollments
  set enroll_date ="2025-12-29"
  where enroll_id=5;

# Add a new column fees_status in Courses table.
  ALTER TABLE Courses
ADD fees_status VARCHAR(20);
desc Courses;

# Rename column email to email_id in Students table.
ALTER TABLE students
RENAME COLUMN email TO email_id;
desc students ;

# Display all students ordered by name.
SELECT * FROM Students ORDER BY name;

# Find maximum and minimum course fees.
SELECT MAX(fees) FROM Courses;
  
  SELECT Min(fees) FROM Courses;

# Display students who belong to Mumbai, Delhi, or Pune.
  SELECT * FROM Students
WHERE city IN ("Mumbai","Delhi","Pune");

# Retrieve students whose names match given list.
select * from Students
where name in ("Vipin Vishwakarma","Ankur Rajput","Krishna Rai");

# Display student name, course name, and enrollment date using INNER JOIN.
SELECT s.name, c.course_name, e.enroll_date
FROM Students s
INNER JOIN Enrollments e ON s.student_id = e.student_id
INNER JOIN Courses c ON e.course_id = c.course_id;

# Display all students with their courses using LEFT JOIN.
SELECT s.name, c.course_name
FROM Students s
LEFT JOIN Enrollments e ON s.student_id = e.student_id
LEFT JOIN Courses c ON e.course_id = c.course_id;

# Display all enrollments with student and course using RIGHT JOIN.
SELECT s.name, c.course_name
FROM Students s
RIGHT JOIN Enrollments e ON s.student_id = e.student_id
RIGHT JOIN Courses c ON e.course_id = c.course_id;

# Combine LEFT JOIN and RIGHT JOIN using UNION.
SELECT s.name, c.course_name
FROM Students s
LEFT JOIN Enrollments e ON s.student_id = e.student_id
LEFT JOIN Courses c ON e.course_id = c.course_id

UNION

SELECT s.name, c.course_name
FROM Students s
RIGHT JOIN Enrollments e ON s.student_id = e.student_id
RIGHT JOIN Courses c ON e.course_id = c.course_id;

# Count total students in each city using GROUP BY.
SELECT city, COUNT(*) AS total_students
FROM Students
GROUP BY city;

# Display cities having more than 3 students using HAVING.
SELECT city, COUNT(*) AS total_students
FROM Students
GROUP BY city
HAVING COUNT(*) > 3;

# Count total students enrolled in Power BI course.
SELECT COUNT(*) AS total_PowerBi_students
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id
WHERE c.course_name = "Power BI";

# Display students enrolled after a specific date.
SELECT s.name, c.course_name, e.enroll_date
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id
WHERE e.enroll_date > "2025-01-01";

# Retrieve students enrolled in courses where fees is greater than 10000 (using subquery).
select name from Students
where student_id in (select student_id from Enrollments
where course_id in (select course_id from Courses where fees > 10000));





