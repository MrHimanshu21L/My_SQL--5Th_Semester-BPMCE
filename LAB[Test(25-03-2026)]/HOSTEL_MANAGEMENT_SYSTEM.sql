
/* =========================================================
   Q1: CREATE TABLES FOR HOSTEL MANAGEMENT SYSTEM
   Tables: Student, Room, Warden, Allocation
========================================================= */

CREATE TABLE Student (
    StudentID VARCHAR(10) PRIMARY KEY,
    Name VARCHAR(50),
    Gender VARCHAR(10),
    DepartmentID VARCHAR(10),
    Contact VARCHAR(15)
);

CREATE TABLE Room (
    RoomID VARCHAR(10) PRIMARY KEY,
    Block CHAR(1),
    Capacity INT
);

CREATE TABLE Warden (
    WardenID VARCHAR(10) PRIMARY KEY,
    Name VARCHAR(50),
    Contact VARCHAR(15)
);

CREATE TABLE Allocation (
    StudentID VARCHAR(10),
    RoomID VARCHAR(10),
    WardenID VARCHAR(10),
    AllotmentDate DATE,
    PRIMARY KEY (StudentID),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (RoomID) REFERENCES Room(RoomID),
    FOREIGN KEY (WardenID) REFERENCES Warden(WardenID)
);


/* =========================================================
   Q2: INSERT SAMPLE DATA INTO ALL TABLES
========================================================= */

INSERT INTO Student VALUES('S101', 'Amit Kumar', 'Male', 'D101', '9876543210');
INSERT INTO Student VALUES('S102', 'Neha Kumari', 'Female', 'D102', '9123456789');
INSERT INTO Student VALUES('S103', 'Ravi Singh', 'Male', 'D101', '9012345678');
INSERT INTO Student VALUES('S104', 'Pooja Sharma', 'Female', 'D103', '9988776655');

INSERT INTO Room VALUES('R1', 'A', 2);
INSERT INTO Student VALUES('R2', 'A', 3);
INSERT INTO Student VALUES('R3', 'B', 2);

INSERT INTO Warden VALUES('W1', 'Rajesh Kumar', '8888888888');
INSERT INTO Student VALUES('W2', 'Sunita Devi', '7777777777');

INSERT INTO Allocation VALUES('S101', 'R1', 'W1', '2025-01-10');
INSERT INTO Student VALUES('S102', 'R2', 'W1', '2025-01-11');
INSERT INTO Student VALUES('S103', 'R1', 'W2', '2025-01-12');
INSERT INTO Student VALUES('S104', 'R3', 'W2', '2025-01-13');


/* =========================================================
   Q3(a): DISPLAY STUDENT NAME AND DEPARTMENT
========================================================= */

SELECT Name, DepartmentID FROM Student;

/*
Expected Output:

+---------------+--------------+
| Name          | DepartmentID |
+---------------+--------------+
| Amit Kumar    | D101         |
| Neha Kumari   | D102         |
| Ravi Singh    | D101         |
| Pooja Sharma  | D103         |
+---------------+--------------+
*/


/* =========================================================
   Q3(b): DISPLAY ALL FEMALE STUDENTS
========================================================= */

SELECT * FROM Student WHERE Gender = 'Female';

/*
Expected Output:

+-----------+---------------+--------+--------------+------------+
| StudentID | Name          | Gender | DepartmentID | Contact    |
+-----------+---------------+--------+--------------+------------+
| S102      | Neha Kumari   | Female | D102         | 9123456789 |
| S104      | Pooja Sharma  | Female | D103         | 9988776655 |
+-----------+---------------+--------+--------------+------------+
*/


/* =========================================================
   Q3(c): DISPLAY STUDENTS SORTED BY NAME
========================================================= */

SELECT * FROM Student ORDER BY Name;

/*
Expected Output (Alphabetical):

Amit Kumar
Neha Kumari
Pooja Sharma
Ravi Singh
*/


/* =========================================================
   Q4(a): DISPLAY STUDENT NAME AND ROOM BLOCK
========================================================= */

SELECT s.Name, r.Block
FROM Student s
JOIN Allocation a ON s.StudentID = a.StudentID
JOIN Room r ON a.RoomID = r.RoomID;

/*
+---------------+-------+
| Name          | Block |
+---------------+-------+
| Amit Kumar    | A     |
| Neha Kumari   | A     |
| Ravi Singh    | A     |
| Pooja Sharma  | B     |
+---------------+-------+
*/


/* =========================================================
   Q4(b): DISPLAY STUDENT NAME AND WARDEN NAME
========================================================= */

SELECT s.Name, w.Name AS WardenName
FROM Student s
JOIN Allocation a ON s.StudentID = a.StudentID
JOIN Warden w ON a.WardenID = w.WardenID;

/*
+---------------+----------------+
| Name          | WardenName     |
+---------------+----------------+
| Amit Kumar    | Rajesh Kumar   |
| Neha Kumari   | Rajesh Kumar   |
| Ravi Singh    | Sunita Devi    |
| Pooja Sharma  | Sunita Devi    |
+---------------+----------------+
*/


/* =========================================================
   Q5(a): COUNT NUMBER OF STUDENTS IN EACH ROOM
========================================================= */

SELECT RoomID, COUNT(StudentID) AS TotalStudents
FROM Allocation
GROUP BY RoomID;

/*
+--------+----------------+
| RoomID | TotalStudents  |
+--------+----------------+
| R1     | 2              |
| R2     | 1              |
| R3     | 1              |
+--------+----------------+
*/


/* =========================================================
   Q5(d): DISPLAY ROOMS HAVING MORE THAN 1 STUDENT
========================================================= */

SELECT RoomID, COUNT(StudentID) AS TotalStudents
FROM Allocation
GROUP BY RoomID
HAVING COUNT(StudentID) > 1;

/*
+--------+----------------+
| RoomID | TotalStudents  |
+--------+----------------+
| R1     | 2              |
+--------+----------------+
*/


/* =========================================================
   Q6(a): DISPLAY ROOM-WISE SUMMARY
   (RoomID, Capacity, Total Students)
========================================================= */

SELECT r.RoomID, r.Capacity, COUNT(a.StudentID) AS TotalStudents
FROM Room r
LEFT JOIN Allocation a ON r.RoomID = a.RoomID
GROUP BY r.RoomID, r.Capacity;

/*
+--------+----------+----------------+
| RoomID | Capacity | TotalStudents  |
+--------+----------+----------------+
| R1     | 2        | 2              |
| R2     | 3        | 1              |
| R3     | 2        | 1              |
+--------+----------+----------------+
*/


/* =========================================================
   Q6(b): FIND FULL ROOMS (STUDENTS = CAPACITY)
========================================================= */

SELECT r.RoomID, r.Capacity
FROM Room r
JOIN Allocation a ON r.RoomID = a.RoomID
GROUP BY r.RoomID, r.Capacity
HAVING COUNT(a.StudentID) = r.Capacity;

/*
+--------+----------+
| RoomID | Capacity |
+--------+----------+
| R1     | 2        |
+--------+----------+
*/


/* =========================================================
   Q6(c): FIND WARDENS HAVING MORE THAN 1 STUDENT
========================================================= */

SELECT w.Name, COUNT(a.StudentID) AS TotalStudents
FROM Warden w
JOIN Allocation a ON w.WardenID = a.WardenID
GROUP BY w.Name
HAVING COUNT(a.StudentID) > 1;

/*
+----------------+----------------+
| Name           | TotalStudents  |
+----------------+----------------+
| Rajesh Kumar   | 2              |
| Sunita Devi    | 2              |
+----------------+----------------+
*/


/* =========================================================
   Q6(d): DISPLAY PAIRS OF STUDENTS WHO ARE IN THE SAME ROOM
   (Use SELF JOIN on Allocation table)
========================================================= */

SELECT 
    s1.Name AS Student1, 
    s2.Name AS Student2, 
    a1.RoomID
FROM Allocation a1
JOIN Allocation a2 
    ON a1.RoomID = a2.RoomID 
    AND a1.StudentID <> a2.StudentID
JOIN Student s1 
    ON a1.StudentID = s1.StudentID
JOIN Student s2 
    ON a2.StudentID = s2.StudentID;


/*
Expected Output:

+---------------+---------------+--------+
| Student1      | Student2      | RoomID |
+---------------+---------------+--------+
| Amit Kumar    | Ravi Singh    | R1     |
| Ravi Singh    | Amit Kumar    | R1     |
+---------------+---------------+--------+

Explanation:
- Room R1 has 2 students → Amit & Ravi
- So pairs are formed:
    (Amit, Ravi)
    (Ravi, Amit)
*/

