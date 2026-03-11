/* =========================================================
   LAB: DATA RETRIEVAL FROM MULTIPLE TABLES USING INNER JOIN
   SCHEMA COMPATIBLE VERSION
   ========================================================= */


/* =========================================================
   PART A — STUDENT–ENROLLMENT RELATIONSHIP
   ========================================================= */

SET LINESIZE 100;
SET PAGESIZE 200;
SET WRAP OFF;

/* 1. Display Student_ID and Name with Course_ID */
SELECT S.Student_ID, S.Name, E.Course_ID
FROM Student S
INNER JOIN Enrollment E
ON S.Student_ID = E.Student_ID;


/* 2. Display student Name and Semester */
SELECT S.Name, E.Semester
FROM Student S
INNER JOIN Enrollment E
ON S.Student_ID = E.Student_ID;


/* 3. Display student Name and Grade obtained */
SELECT S.Name, E.Grade
FROM Student S
INNER JOIN Enrollment E
ON S.Student_ID = E.Student_ID;



/* =========================================================
   PART B — COURSE–FACULTY RELATIONSHIP
   ========================================================= */

/* 4. Course_Name, Credits, Faculty Name */
SELECT C.Course_Name, C.Credits, F.Name AS Faculty_Name
FROM Course C
INNER JOIN Faculty F
ON C.Faculty_ID = F.Faculty_ID;


/* 5. Courses taught by Faculty_ID 'F201' */
SELECT C.Course_Name
FROM Course C
INNER JOIN Faculty F
ON C.Faculty_ID = F.Faculty_ID
WHERE F.Faculty_ID = 'F201';


/* 6. Faculty Name, Designation, Course_Name */
SELECT F.Name, F.Designation, C.Course_Name
FROM Faculty F
INNER JOIN Course C
ON F.Faculty_ID = C.Faculty_ID;



/* =========================================================
   PART C — STUDENT–COURSE–ENROLLMENT RELATIONSHIP
   ========================================================= */

/* 7. Student Name with Course_Name */
SELECT S.Name, C.Course_Name
FROM Student S
INNER JOIN Enrollment E
ON S.Student_ID = E.Student_ID
INNER JOIN Course C
ON E.Course_ID = C.Course_ID;


/* 8. Student Name, Course_Name, Semester */
SELECT S.Name, C.Course_Name, E.Semester
FROM Student S
INNER JOIN Enrollment E
ON S.Student_ID = E.Student_ID
INNER JOIN Course C
ON E.Course_ID = C.Course_ID;


/* 9. Student Name, Course_Name, Grade (Semester 4 only) */
SELECT S.Name, C.Course_Name, E.Grade
FROM Student S
INNER JOIN Enrollment E
ON S.Student_ID = E.Student_ID
INNER JOIN Course C
ON E.Course_ID = C.Course_ID
WHERE E.Semester = '4';


/* 10. Courses taken by Student_ID 'S401' */
SELECT C.Course_Name
FROM Student S
INNER JOIN Enrollment E
ON S.Student_ID = E.Student_ID
INNER JOIN Course C
ON E.Course_ID = C.Course_ID
WHERE S.Student_ID = 'S401';



/* =========================================================
   PART D — DEPARTMENT BASED JOIN QUERIES
   ========================================================= */

/* 11. Student Name, Dept_ID, Course_Name */
SELECT S.Name, S.Dept_ID, C.Course_Name
FROM Student S
INNER JOIN Enrollment E
ON S.Student_ID = E.Student_ID
INNER JOIN Course C
ON E.Course_ID = C.Course_ID;


/* 12. Department-wise list of courses */
SELECT D.Dept_Name, C.Course_Name
FROM Department D
INNER JOIN Course C
ON D.Dept_ID = C.Dept_ID;


/* 13. Faculty Name with Department Name */
SELECT F.Name, D.Dept_Name
FROM Faculty F
INNER JOIN Department D
ON F.Dept_ID = D.Dept_ID;



/* =========================================================
   PART E — JOIN WITH FILTERING AND SORTING
   ========================================================= */

/* 14. Students belonging to Department 'D101' */
SELECT S.Name, C.Course_Name
FROM Student S
INNER JOIN Enrollment E
ON S.Student_ID = E.Student_ID
INNER JOIN Course C
ON E.Course_ID = C.Course_ID
WHERE S.Dept_ID = 'D101';


/* 15. Student Name and Course_Name sorted by Name */
SELECT S.Name, C.Course_Name
FROM Student S
INNER JOIN Enrollment E
ON S.Student_ID = E.Student_ID
INNER JOIN Course C
ON E.Course_ID = C.Course_ID
ORDER BY S.Name ASC;


/* 16. Faculty Name and Course_Name sorted by Credits */
SELECT F.Name, C.Course_Name
FROM Faculty F
INNER JOIN Course C
ON F.Faculty_ID = C.Faculty_ID
ORDER BY C.Credits DESC;



/* =========================================================
   PART F — ANALYTICAL JOIN QUERIES
   ========================================================= */

/* 17. Number of students enrolled in each course */
SELECT C.Course_Name, COUNT(E.Student_ID) AS Total_Students
FROM Course C
INNER JOIN Enrollment E
ON C.Course_ID = E.Course_ID
GROUP BY C.Course_Name;


/* 18. Number of courses taught by each faculty */
SELECT F.Name, COUNT(C.Course_ID) AS Total_Courses
FROM Faculty F
INNER JOIN Course C
ON F.Faculty_ID = C.Faculty_ID
GROUP BY F.Name;


/* 19. Department-wise count of students */
SELECT D.Dept_Name, COUNT(S.Student_ID) AS Total_Students
FROM Department D
INNER JOIN Student S
ON D.Dept_ID = S.Dept_ID
GROUP BY D.Dept_Name;


/* 20. Course name with maximum grade awarded */
SELECT C.Course_Name, MAX(E.Grade) AS Max_Grade
FROM Course C
INNER JOIN Enrollment E
ON C.Course_ID = E.Course_ID
GROUP BY C.Course_Name;
