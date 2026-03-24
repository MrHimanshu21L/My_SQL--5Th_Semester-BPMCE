/* ================================
   PART A: BASIC AGGREGATE
================================ */

-- Q1: Display total number of students
SELECT COUNT(*) FROM Student;

-- Output:
-- +----------+
-- | COUNT(*) |
-- +----------+
-- | 70       |
-- +----------+

-- Q2: Display total number of faculty members
SELECT COUNT(*) FROM Faculty;

-- Output:
-- +----------+
-- | COUNT(*) |
-- +----------+
-- | 35       |
-- +----------+

-- Q3: Display total number of courses
SELECT COUNT(*) FROM Course;

-- Output:
-- +----------+
-- | COUNT(*) |
-- +----------+
-- | 35       |
-- +----------+

-- Q4: Display maximum credits among courses
SELECT MAX(Credits) FROM Course;

-- Output:
-- +--------------+
-- | MAX(Credits) |
-- +--------------+
-- | 4            |
-- +--------------+

-- Q5: Display minimum credits among courses
SELECT MIN(Credits) FROM Course;

-- Output:
-- +--------------+
-- | MIN(Credits) |
-- +--------------+
-- | 3            |
-- +--------------+


/* ================================
   PART B: GROUP BY
================================ */

-- Q6: Students in each department
SELECT Dept_ID, COUNT(*)
FROM Student
GROUP BY Dept_ID;

-- Output:
-- +---------+----------+
-- | Dept_ID | COUNT(*) |
-- +---------+----------+
-- | D001    | 10       |
-- | D002    | 10       |
-- | D003    | 10       |
-- | D004    | 10       |
-- | D005    | 10       |
-- | D006    | 10       |
-- | D009    | 10       |
-- +---------+----------+

-- Q7: Faculty in each department
SELECT Dept_ID, COUNT(*)
FROM Faculty
GROUP BY Dept_ID;

-- Output:
-- +---------+----------+
-- | Dept_ID | COUNT(*) |
-- +---------+----------+
-- | D001    | 5        |
-- | D002    | 5        |
-- | D003    | 5        |
-- | D004    | 5        |
-- | D005    | 5        |
-- | D006    | 5        |
-- | D009    | 5        |
-- +---------+----------+

-- Q8: Courses in each department
SELECT Dept_ID, COUNT(*)
FROM Course
GROUP BY Dept_ID;

-- Output:
-- +---------+----------+
-- | Dept_ID | COUNT(*) |
-- +---------+----------+
-- | D001    | 5        |
-- | D002    | 5        |
-- | D003    | 5        |
-- | D004    | 5        |
-- | D005    | 5        |
-- | D006    | 5        |
-- | D009    | 5        |
-- +---------+----------+

-- Q9: Enrollments per semester
SELECT Semester, COUNT(*)
FROM Enrollment
GROUP BY Semester;

-- Output:
-- +----------+----------+
-- | Semester | COUNT(*) |
-- +----------+----------+
-- | S1       | 7        |
-- | S2       | 9        |
-- | S3       | 9        |
-- | S4       | 9        |
-- | S5       | 7        |
-- | S6       | 7        |
-- | S7       | 7        |
-- | S8       | 7        |
-- +----------+----------+

-- Q10: Students per grade
SELECT Grade, COUNT(*)
FROM Enrollment
GROUP BY Grade;

-- Output:
-- +-------+----------+
-- | Grade | COUNT(*) |
-- +-------+----------+
-- | A     | 35       |
-- | B     | 35       |
-- +-------+----------+
/* ================================
   PART C: HAVING (FIXED FULL OUTPUT)
================================ */

-- Q11: Departments having more than 3 students
SELECT Dept_ID, COUNT(*)
FROM Student
GROUP BY Dept_ID
HAVING COUNT(*) > 3;

-- Output:
-- +---------+----------+
-- | Dept_ID | COUNT(*) |
-- +---------+----------+
-- | D001    | 10       |
-- | D002    | 10       |
-- | D003    | 10       |
-- | D004    | 10       |
-- | D005    | 10       |
-- | D006    | 10       |
-- | D009    | 10       |
-- +---------+----------+


-- Q12: Semesters with more than 2 enrollments
SELECT Semester, COUNT(*)
FROM Enrollment
GROUP BY Semester
HAVING COUNT(*) > 2;

-- Output:
-- +----------+----------+
-- | Semester | COUNT(*) |
-- +----------+----------+
-- | S1       | 7        |
-- | S2       | 9        |
-- | S3       | 9        |
-- | S4       | 9        |
-- | S5       | 7        |
-- | S6       | 7        |
-- | S7       | 7        |
-- | S8       | 7        |
-- +----------+----------+


-- Q13: Grades assigned to more than 1 student
SELECT Grade, COUNT(*)
FROM Enrollment
GROUP BY Grade
HAVING COUNT(*) > 1;

-- Output:
-- +-------+----------+
-- | Grade | COUNT(*) |
-- +-------+----------+
-- | A     | 35       |
-- | B     | 35       |
-- +-------+----------+


-- Q14: Departments with more than 1 course
SELECT Dept_ID, COUNT(*)
FROM Course
GROUP BY Dept_ID
HAVING COUNT(*) > 1;

-- Output:
-- +---------+----------+
-- | Dept_ID | COUNT(*) |
-- +---------+----------+
-- | D001    | 5        |
-- | D002    | 5        |
-- | D003    | 5        |
-- | D004    | 5        |
-- | D005    | 5        |
-- | D006    | 5        |
-- | D009    | 5        |
-- +---------+----------+


/* ================================
   PART D: JOIN + GROUP BY (FIXED)
================================ */

-- Q15: Students enrolled in each course
SELECT Course_ID, COUNT(Student_ID)
FROM Enrollment
GROUP BY Course_ID;

-- Output:
-- +-----------+---------------------+
-- | Course_ID | COUNT(Student_ID)   |
-- +-----------+---------------------+
-- | C101      | 2 |
-- | C102      | 2 |
-- | C103      | 2 |
-- | C104      | 2 |
-- | C105      | 2 |
-- | C201      | 2 |
-- | C202      | 2 |
-- | C203      | 2 |
-- | C204      | 2 |
-- | C205      | 2 |
-- | C301      | 2 |
-- | C302      | 2 |
-- | C303      | 2 |
-- | C304      | 2 |
-- | C305      | 2 |
-- | C401      | 2 |
-- | C402      | 2 |
-- | C403      | 2 |
-- | C404      | 2 |
-- | C405      | 2 |
-- | C601      | 2 |
-- | C602      | 2 |
-- | C603      | 2 |
-- | C604      | 2 |
-- | C605      | 2 |
-- | C501      | 2 |
-- | C502      | 2 |
-- | C503      | 2 |
-- | C504      | 2 |
-- | C505      | 2 |
-- | C901      | 2 |
-- | C902      | 2 |
-- | C903      | 2 |
-- | C904      | 2 |
-- | C905      | 2 |
-- +-----------+---------------------+


-- Q16: Course name and number of students
SELECT c.Course_Name, COUNT(e.Student_ID)
FROM Course c
JOIN Enrollment e ON c.Course_ID = e.Course_ID
GROUP BY c.Course_Name;

-- Output:
-- +-------------+----------------------+
-- | Course_Name | COUNT(Student_ID)    |
-- +-------------+----------------------+
-- | DBMS        | 2 |
-- | OS          | 2 |
-- | CN          | 2 |
-- | SE          | 2 |
-- | DSA         | 2 |
-- | ML          | 2 |
-- | DL          | 2 |
-- | DataMining  | 2 |
-- | PythonAI    | 2 |
-- | NLP         | 2 |
-- | Circuit     | 2 |
-- | Machines    | 2 |
-- | PowerSys    | 2 |
-- | Control     | 2 |
-- | Electro     | 2 |
-- | Survey      | 2 |
-- | Soil        | 2 |
-- | Structure   | 2 |
-- | Concrete    | 2 |
-- | Hydrology   | 2 |
-- | Thermo      | 2 |
-- | Fluid       | 2 |
-- | Machine     | 2 |
-- | Manufact    | 2 |
-- | AutoCAD     | 2 |
-- | CAD         | 2 |
-- | GIS         | 2 |
-- | Python      | 2 |
-- | WebTech     | 2 |
-- | Graphics    | 2 |
-- | Anim        | 2 |
-- | Model3D     | 2 |
-- | VFX         | 2 |
-- | Render      | 2 |
-- +-------------+----------------------+


-- Q17: Department and number of students
SELECT d.Dept_ID, COUNT(s.Student_ID)
FROM Department d
JOIN Student s ON d.Dept_ID = s.Dept_ID
GROUP BY d.Dept_ID;

-- Output:
-- +---------+----------------------+
-- | Dept_ID | COUNT(Student_ID)    |
-- +---------+----------------------+
-- | D001    | 10 |
-- | D002    | 10 |
-- | D003    | 10 |
-- | D004    | 10 |
-- | D005    | 10 |
-- | D006    | 10 |
-- | D009    | 10 |
-- +---------+----------------------+


-- Q18: Faculty name and courses taught
SELECT f.Name, COUNT(c.Course_ID)
FROM Faculty f
JOIN Course c ON f.Faculty_ID = c.Faculty_ID
GROUP BY f.Name;

-- Output:
-- +--------------------------+------------------+
-- | Name                     | COUNT(Course_ID) |
-- +--------------------------+------------------+
-- | Murlidhar Prasad Singh   | 2 |
-- | Md Ehtashamoul Haque     | 1 |
-- | Amit Kumar               | 1 |
-- | Md Izhar                 | 2 |
-- | Manisha Kumari Singh     | 3 |
-- | Md Ehteshamoul Hoque     | 2 |
-- | Sujeet Kumar             | 2 |
-- | Praveen Kumar            | 2 |
-- | Hare Krishna Mishra      | 1 |
-- | Ashish Kumar Suman       | 1 |
-- | Mitesh Kumar             | 1 |
-- | Nitish Kumar             | 1 |
-- | Mithlesh Kumar           | 1 |
-- | Akhilesh Kumar           | 2 |
-- | Kunal Kumar              | 2 |
-- | Nishikant Kumar          | 2 |
-- | Raushan Anand            | 1 |
-- | Vicky Anand              | 2 |
-- | Arbind Kumar Amar        | 1 |
-- | Ajay Giri                | 1 |
-- | Uttam Kumar              | 1 |
-- | Firoz Akhtar             | 1 |
-- | Rahul Ranjan Bharti      | 1 |
-- | Pankaj Kumar             | 1 |
-- +--------------------------+------------------+


/* ================================
   PART E: ANALYTICAL (FIXED)
================================ */

-- Q19
SELECT c.Course_Name, MAX(e.Grade)
FROM Course c
JOIN Enrollment e ON c.Course_ID = e.Course_ID
GROUP BY c.Course_Name;

-- Output:
-- +-------------+-------------+
-- | Course_Name | MAX(Grade)  |
-- +-------------+-------------+
-- | DBMS        | B |
-- | OS          | B |
-- | CN          | B |
-- | SE          | B |
-- | DSA         | B |
-- | ML          | B |
-- | DL          | B |
-- | DataMining  | B |
-- | PythonAI    | B |
-- | NLP         | B |
-- | Circuit     | B |
-- | Machines    | B |
-- | PowerSys    | B |
-- | Control     | B |
-- | Electro     | B |
-- | Survey      | B |
-- | Soil        | B |
-- | Structure   | B |
-- | Concrete    | B |
-- | Hydrology   | B |
-- | Thermo      | B |
-- | Fluid       | B |
-- | Machine     | B |
-- | Manufact    | B |
-- | AutoCAD     | B |
-- | CAD         | B |
-- | GIS         | B |
-- | Python      | B |
-- | WebTech     | B |
-- | Graphics    | B |
-- | Anim        | B |
-- | Model3D     | B |
-- | VFX         | B |
-- | Render      | B |
-- +-------------+-------------+


-- Q20
SELECT Dept_ID, COUNT(*)
FROM Course
GROUP BY Dept_ID;

-- Output:
-- +---------+----------+
-- | Dept_ID | COUNT(*) |
-- +---------+----------+
-- | D001    | 5 |
-- | D002    | 5 |
-- | D003    | 5 |
-- | D004    | 5 |
-- | D005    | 5 |
-- | D006    | 5 |
-- | D009    | 5 |
-- +---------+----------+


-- Q21
SELECT Semester, COUNT(Student_ID)
FROM Enrollment
GROUP BY Semester;

-- Output:
-- +----------+----------------------+
-- | Semester | COUNT(Student_ID)    |
-- +----------+----------------------+
-- | S1       | 7 |
-- | S2       | 9 |
-- | S3       | 9 |
-- | S4       | 9 |
-- | S5       | 7 |
-- | S6       | 7 |
-- | S7       | 7 |
-- | S8       | 7 |
-- +----------+----------------------+


-- Q22
SELECT Course_ID, COUNT(Student_ID)
FROM Enrollment
GROUP BY Course_ID
HAVING COUNT(Student_ID) > 2;

-- Output:
-- (No rows selected)
