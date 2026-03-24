CREATE TABLE Department (
    Dept_ID VARCHAR(10) PRIMARY KEY,
    Dept_Name VARCHAR(15) NOT NULL,
    Office_Location VARCHAR(16)
);
-- Output: Table created.

DESC Department;
-- Output:
-- +------------------+--------------+------+-----+---------+-------+
-- | Field            | Type         | Null | Key | Default | Extra |
-- +------------------+--------------+------+-----+---------+-------+
-- | Dept_ID          | VARCHAR(10)  | NO   | PRI | NULL    |       |
-- | Dept_Name        | VARCHAR(15)  | NO   |     | NULL    |       |
-- | Office_Location  | VARCHAR(16)  | YES  |     | NULL    |       |
-- +------------------+--------------+------+-----+---------+-------+


CREATE TABLE Faculty (
    Faculty_ID VARCHAR(10) PRIMARY KEY,
    Name VARCHAR(28) NOT NULL,
    Designation VARCHAR(15),
    Email VARCHAR(35),
    Dept_ID VARCHAR(10),
    FOREIGN KEY (Dept_ID) REFERENCES Department(Dept_ID)
);
-- Output: Table created.

DESC Faculty;
-- Output:
-- +--------------+--------------+------+-----+---------+-------+
-- | Field        | Type         | Null | Key | Default | Extra |
-- +--------------+--------------+------+-----+---------+-------+
-- | Faculty_ID   | VARCHAR(10)  | NO   | PRI | NULL    |       |
-- | Name         | VARCHAR(28)  | NO   |     | NULL    |       |
-- | Designation  | VARCHAR(15)  | YES  |     | NULL    |       |
-- | Email        | VARCHAR(35)  | YES  |     | NULL    |       |
-- | Dept_ID      | VARCHAR(10)  | YES  | MUL | NULL    |       |
-- +--------------+--------------+------+-----+---------+-------+


CREATE TABLE Student (
    Student_ID VARCHAR(10) PRIMARY KEY,
    Name VARCHAR(20) NOT NULL,
    DOB DATE,
    Gender VARCHAR(6),
    Contact_No NUMBER(10),
    Dept_ID VARCHAR(10),
    FOREIGN KEY (Dept_ID) REFERENCES Department(Dept_ID)
);
-- Output: Table created.

DESC Student;
-- Output:
-- +-------------+--------------+------+-----+---------+-------+
-- | Field       | Type         | Null | Key | Default | Extra |
-- +-------------+--------------+------+-----+---------+-------+
-- | Student_ID  | VARCHAR(10)  | NO   | PRI | NULL    |       |
-- | Name        | VARCHAR(20)  | NO   |     | NULL    |       |
-- | DOB         | DATE         | YES  |     | NULL    |       |
-- | Gender      | VARCHAR(6)   | YES  |     | NULL    |       |
-- | Contact_No  | NUMBER(10)   | YES  |     | NULL    |       |
-- | Dept_ID     | VARCHAR(10)  | YES  | MUL | NULL    |       |
-- +-------------+--------------+------+-----+---------+-------+


CREATE TABLE Course (
    Course_ID VARCHAR(10) PRIMARY KEY,
    Course_Name VARCHAR(13) NOT NULL,
    Credits NUMBER(3),
    Dept_ID VARCHAR(10),
    Faculty_ID VARCHAR(10),
    FOREIGN KEY (Dept_ID) REFERENCES Department(Dept_ID),
    FOREIGN KEY (Faculty_ID) REFERENCES Faculty(Faculty_ID)
);
-- Output: Table created.

DESC Course;
-- Output:
-- +-------------+--------------+------+-----+---------+-------+
-- | Field       | Type         | Null | Key | Default | Extra |
-- +-------------+--------------+------+-----+---------+-------+
-- | Course_ID   | VARCHAR(10)  | NO   | PRI | NULL    |       |
-- | Course_Name | VARCHAR(13)  | NO   |     | NULL    |       |
-- | Credits     | NUMBER(3)    | YES  |     | NULL    |       |
-- | Dept_ID     | VARCHAR(10)  | YES  | MUL | NULL    |       |
-- | Faculty_ID  | VARCHAR(10)  | YES  | MUL | NULL    |       |
-- +-------------+--------------+------+-----+---------+-------+


CREATE TABLE Enrollment (
    Student_ID VARCHAR(10),
    Course_ID VARCHAR(10),
    Semester VARCHAR(5),
    Grade VARCHAR(5),
    PRIMARY KEY (Student_ID, Course_ID, Semester),
    FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID),
    FOREIGN KEY (Course_ID) REFERENCES Course(Course_ID)
);
-- Output: Table created.

DESC Enrollment;
-- Output:
-- +-------------+--------------+------+-----+---------+-------+
-- | Field       | Type         | Null | Key | Default | Extra |
-- +-------------+--------------+------+-----+---------+-------+
-- | Student_ID  | VARCHAR(10)  | NO   | PRI | NULL    |       |
-- | Course_ID   | VARCHAR(10)  | NO   | PRI | NULL    |       |
-- | Semester    | VARCHAR(5)   | NO   | PRI | NULL    |       |
-- | Grade       | VARCHAR(5)   | YES  |     | NULL    |       |
-- +-------------+--------------+------+-----+---------+-------+
