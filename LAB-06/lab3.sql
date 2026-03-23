/* ================================
   PART A: BASIC AGGREGATE
================================ */

-- Q1: Display total number of students
SELECT COUNT(*) FROM Student;

-- Q2: Display total number of faculty members
SELECT COUNT(*) FROM Faculty;

-- Q3: Display total number of courses
SELECT COUNT(*) FROM Course;

-- Q4: Display maximum credits among courses
SELECT MAX(Credits) FROM Course;

-- Q5: Display minimum credits among courses
SELECT MIN(Credits) FROM Course;


/* ================================
   PART B: GROUP BY
================================ */

-- Q6: Students in each department
SELECT Dept_ID, COUNT(*)
FROM Student
GROUP BY Dept_ID;

-- Q7: Faculty in each department
SELECT Dept_ID, COUNT(*)
FROM Faculty
GROUP BY Dept_ID;

-- Q8: Courses in each department
SELECT Dept_ID, COUNT(*)
FROM Course
GROUP BY Dept_ID;

-- Q9: Enrollments per semester
SELECT Semester, COUNT(*)
FROM Enrollment
GROUP BY Semester;

-- Q10: Students per grade
SELECT Grade, COUNT(*)
FROM Enrollment
GROUP BY Grade;


/* ================================
   PART C: HAVING
================================ */

-- Q11: Departments having more than 3 students
SELECT Dept_ID, COUNT(*)
FROM Student
GROUP BY Dept_ID
HAVING COUNT(*) > 3;

-- Q12: Semesters with more than 2 enrollments
SELECT Semester, COUNT(*)
FROM Enrollment
GROUP BY Semester
HAVING COUNT(*) > 2;

-- Q13: Grades assigned to more than 1 student
SELECT Grade, COUNT(*)
FROM Enrollment
GROUP BY Grade
HAVING COUNT(*) > 1;

-- Q14: Departments with more than 1 course
SELECT Dept_ID, COUNT(*)
FROM Course
GROUP BY Dept_ID
HAVING COUNT(*) > 1;


/* ================================
   PART D: JOIN + GROUP BY
================================ */

-- Q15: Students enrolled in each course
SELECT Course_ID, COUNT(Student_ID)
FROM Enrollment
GROUP BY Course_ID;

-- Q16: Course name and number of students
SELECT c.Course_Name, COUNT(e.Student_ID)
FROM Course c
JOIN Enrollment e ON c.Course_ID = e.Course_ID
GROUP BY c.Course_Name;

-- Q17: Department and number of students
SELECT d.Dept_ID, COUNT(s.Student_ID)
FROM Department d
JOIN Student s ON d.Dept_ID = s.Dept_ID
GROUP BY d.Dept_ID;

-- Q18: Faculty name and courses taught
SELECT f.Name, COUNT(c.Course_ID)
FROM Faculty f
JOIN Course c ON f.Faculty_ID = c.Faculty_ID
GROUP BY f.Name;


/* ================================
   PART E: ANALYTICAL
================================ */

-- Q19: Course name and maximum grade
SELECT c.Course_Name, MAX(e.Grade)
FROM Course c
JOIN Enrollment e ON c.Course_ID = e.Course_ID
GROUP BY c.Course_Name;

-- Q20: Department and total courses
SELECT Dept_ID, COUNT(*)
FROM Course
GROUP BY Dept_ID;

-- Q21: Semester and total students
SELECT Semester, COUNT(Student_ID)
FROM Enrollment
GROUP BY Semester;

-- Q22: Courses with more than 2 students
SELECT Course_ID, COUNT(Student_ID)
FROM Enrollment
GROUP BY Course_ID
HAVING COUNT(Student_ID) > 2;
