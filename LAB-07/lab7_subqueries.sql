-- =========================================
-- SUBQUERIES LAB - COMPLETE SOLUTION
-- =========================================

-- =========================================
-- Part A: Basic Subqueries
-- =========================================


-- =========================================
-- Q1: Same department as S401
-- =========================================

SELECT Name
FROM Student
WHERE Dept_ID = (
    SELECT Dept_ID FROM Student WHERE Student_ID = 'S401'
);

-- Output:
-- +------------------+
-- | Name             |
-- +------------------+
-- | Manish Kumar     |
-- | Ravi Kumar       |
-- | Priti Kumari     |
-- | Sunil Yadav      |
-- | Anita Kumari     |
-- | Vivek Singh      |
-- | Rakesh Kumar     |
-- | Kavita Sharma    |
-- | Mukesh Kumar     |
-- | Suman Kumari     |
-- +------------------+


-- =========================================
-- Q2: Same gender as S402
-- =========================================

SELECT Name
FROM Student
WHERE Gender = (
    SELECT Gender FROM Student WHERE Student_ID = 'S402'
);

-- Output:
-- +------------------+
-- | Name             |
-- +------------------+
-- | Rahul Kumar      |
-- | Aman Singh       |
-- | Vikas Raj        |
-- | Rohit Yadav      |
-- | Deepak Kumar     |
-- | Aditya Kumar     |
-- | Kunal Singh      |
-- | Harsh Raj        |
-- | Nitesh Kumar     |
-- | Abhishek Raj     |
-- | Kishan Kumar     |
-- | Ranjan Singh     |
-- | Sandeep Kumar    |
-- | Ravi Raj         |
-- | Manoj Kumar      |
-- | Ashok Kumar      |
-- | Manish Kumar     |
-- | Ravi Kumar       |
-- | Sunil Yadav      |
-- | Vivek Singh      |
-- | Rakesh Kumar     |
-- | Mukesh Kumar     |
-- | Ankit Kumar      |
-- | Rohit Singh      |
-- | Shubham Raj      |
-- | Ritesh Kumar     |
-- | Arun Kumar       |
-- | Dilip Kumar      |
-- | Saurabh Kumar    |
-- | Gaurav Singh     |
-- | Nikhil Raj       |
-- | Ankur Kumar      |
-- | Prakash Kumar    |
-- | Ravi Kumar       |
-- | Arvind Raj       |
-- | Vikash Kumar     |
-- | Rajesh Kumar     |
-- | Kundan Kumar     |
-- +------------------+


-- =========================================
-- Q3: Same department as S403
-- =========================================

SELECT Name
FROM Student
WHERE Dept_ID = (
    SELECT Dept_ID FROM Student WHERE Student_ID = 'S403'
);

-- Output:
-- +------------------+
-- | Name             |
-- +------------------+
-- | Manish Kumar     |
-- | Ravi Kumar       |
-- | Priti Kumari     |
-- | Sunil Yadav      |
-- | Anita Kumari     |
-- | Vivek Singh      |
-- | Rakesh Kumar     |
-- | Kavita Sharma    |
-- | Mukesh Kumar     |
-- | Suman Kumari     |
-- +------------------+


-- =========================================
-- Q4: Students from departments having female students
-- =========================================

-- =========================================
-- Q4: Students from departments having female students
-- =========================================

SELECT Name
FROM Student
WHERE Dept_ID IN (
    SELECT Dept_ID
    FROM Student
    WHERE Gender = 'Female'
);

-- Output:
-- +------------------+
-- | Name             |
-- +------------------+
-- | Rahul Kumar      |
-- | Aman Singh       |
-- | Priya Sharma     |
-- | Neha Kumari      |
-- | Vikas Raj        |
-- | Pooja Singh      |
-- | Rohit Yadav      |
-- | Soni Kumari      |
-- | Deepak Kumar     |
-- | Anjali Verma     |
-- | Aditya Kumar     |
-- | Riya Sharma      |
-- | Kunal Singh      |
-- | Sneha Kumari     |
-- | Harsh Raj        |
-- | Komal Singh      |
-- | Nitesh Kumar     |
-- | Shivani Singh    |
-- | Abhishek Raj     |
-- | Muskan Kumari    |
-- | Kishan Kumar     |
-- | Ranjan Singh     |
-- | Neetu Kumari     |
-- | Sandeep Kumar    |
-- | Sarla Kumari     |
-- | Ravi Raj         |
-- | Pinky Kumari     |
-- | Manoj Kumar      |
-- | Seema Singh      |
-- | Ashok Kumar      |
-- | Manish Kumar     |
-- | Ravi Kumar       |
-- | Priti Kumari     |
-- | Sunil Yadav      |
-- | Anita Kumari     |
-- | Vivek Singh      |
-- | Rakesh Kumar     |
-- | Kavita Sharma    |
-- | Mukesh Kumar     |
-- | Suman Kumari     |
-- | Ankit Kumar      |
-- | Rohit Singh      |
-- | Komal Kumari     |
-- | Shubham Raj      |
-- | Meena Kumari     |
-- | Ritesh Kumar     |
-- | Vandana Singh    |
-- | Arun Kumar       |
-- | Rekha Kumari     |
-- | Dilip Kumar      |
-- | Saurabh Kumar    |
-- | Ritu Kumari      |
-- | Gaurav Singh     |
-- | Pallavi Sharma   |
-- | Nikhil Raj       |
-- | Jyoti Kumari     |
-- | Ankur Kumar      |
-- | Rashmi Singh     |
-- | Prakash Kumar    |
-- | Shalini Kumari   |
-- | Ravi Kumar       |
-- | Neha Kumari      |
-- | Arvind Raj       |
-- | Pooja Singh      |
-- | Vikash Kumar     |
-- | Suman Kumari     |
-- | Rajesh Kumar     |
-- | Anjali Singh     |
-- | Kundan Kumar     |
-- | Ritu Kumari      |
-- +------------------+


-- =========================================
-- Q5: Students whose Student_ID appears in Enrollment
-- =========================================

SELECT Name
FROM Student
WHERE Student_ID IN (
    SELECT Student_ID
    FROM Enrollment
);

-- Output:
-- +------------------+
-- | Name             |
-- +------------------+
-- | Rahul Kumar      |
-- | Aman Singh       |
-- | Priya Sharma     |
-- | Neha Kumari      |
-- | Vikas Raj        |
-- | Pooja Singh      |
-- | Rohit Yadav      |
-- | Soni Kumari      |
-- | Deepak Kumar     |
-- | Anjali Verma     |
-- | Aditya Kumar     |
-- | Riya Sharma      |
-- | Kunal Singh      |
-- | Sneha Kumari     |
-- | Harsh Raj        |
-- | Komal Singh      |
-- | Nitesh Kumar     |
-- | Shivani Singh    |
-- | Abhishek Raj     |
-- | Muskan Kumari    |
-- | Kishan Kumar     |
-- | Ranjan Singh     |
-- | Neetu Kumari     |
-- | Sandeep Kumar    |
-- | Sarla Kumari     |
-- | Ravi Raj         |
-- | Pinky Kumari     |
-- | Manoj Kumar      |
-- | Seema Singh      |
-- | Ashok Kumar      |
-- | Manish Kumar     |
-- | Ravi Kumar       |
-- | Priti Kumari     |
-- | Sunil Yadav      |
-- | Anita Kumari     |
-- | Vivek Singh      |
-- | Rakesh Kumar     |
-- | Kavita Sharma    |
-- | Mukesh Kumar     |
-- | Suman Kumari     |
-- | Ankit Kumar      |
-- | Rohit Singh      |
-- | Komal Kumari     |
-- | Shubham Raj      |
-- | Meena Kumari     |
-- | Ritesh Kumar     |
-- | Vandana Singh    |
-- | Arun Kumar       |
-- | Rekha Kumari     |
-- | Dilip Kumar      |
-- | Saurabh Kumar    |
-- | Ritu Kumari      |
-- | Gaurav Singh     |
-- | Pallavi Sharma   |
-- | Nikhil Raj       |
-- | Jyoti Kumari     |
-- | Ankur Kumar      |
-- | Rashmi Singh     |
-- | Prakash Kumar    |
-- | Shalini Kumari   |
-- | Ravi Kumar       |
-- | Neha Kumari      |
-- | Arvind Raj       |
-- | Pooja Singh      |
-- | Vikash Kumar     |
-- | Suman Kumari     |
-- | Rajesh Kumar     |
-- | Anjali Singh     |
-- | Kundan Kumar     |
-- | Ritu Kumari      |
-- +------------------+


-- =========================================
-- Q6: Students enrolled in any course
-- =========================================

SELECT Name
FROM Student
WHERE Student_ID IN (
    SELECT Student_ID
    FROM Enrollment
);

-- Output:
-- +------------------+
-- | Name             |
-- +------------------+
-- | Rahul Kumar      |
-- | Aman Singh       |
-- | Priya Sharma     |
-- | Neha Kumari      |
-- | Vikas Raj        |
-- | Pooja Singh      |
-- | Rohit Yadav      |
-- | Soni Kumari      |
-- | Deepak Kumar     |
-- | Anjali Verma     |
-- | Aditya Kumar     |
-- | Riya Sharma      |
-- | Kunal Singh      |
-- | Sneha Kumari     |
-- | Harsh Raj        |
-- | Komal Singh      |
-- | Nitesh Kumar     |
-- | Shivani Singh    |
-- | Abhishek Raj     |
-- | Muskan Kumari    |
-- | Kishan Kumar     |
-- | Ranjan Singh     |
-- | Neetu Kumari     |
-- | Sandeep Kumar    |
-- | Sarla Kumari     |
-- | Ravi Raj         |
-- | Pinky Kumari     |
-- | Manoj Kumar      |
-- | Seema Singh      |
-- | Ashok Kumar      |
-- | Manish Kumar     |
-- | Ravi Kumar       |
-- | Priti Kumari     |
-- | Sunil Yadav      |
-- | Anita Kumari     |
-- | Vivek Singh      |
-- | Rakesh Kumar     |
-- | Kavita Sharma    |
-- | Mukesh Kumar     |
-- | Suman Kumari     |
-- | Ankit Kumar      |
-- | Rohit Singh      |
-- | Komal Kumari     |
-- | Shubham Raj      |
-- | Meena Kumari     |
-- | Ritesh Kumar     |
-- | Vandana Singh    |
-- | Arun Kumar       |
-- | Rekha Kumari     |
-- | Dilip Kumar      |
-- | Saurabh Kumar    |
-- | Ritu Kumari      |
-- | Gaurav Singh     |
-- | Pallavi Sharma   |
-- | Nikhil Raj       |
-- | Jyoti Kumari     |
-- | Ankur Kumar      |
-- | Rashmi Singh     |
-- | Prakash Kumar    |
-- | Shalini Kumari   |
-- | Ravi Kumar       |
-- | Neha Kumari      |
-- | Arvind Raj       |
-- | Pooja Singh      |
-- | Vikash Kumar     |
-- | Suman Kumari     |
-- | Rajesh Kumar     |
-- | Anjali Singh     |
-- | Kundan Kumar     |
-- | Ritu Kumari      |
-- +------------------+

-- =========================================
-- Q7: Courses with credits > average
-- =========================================

SELECT Course_Name
FROM Course
WHERE Credits > (
    SELECT AVG(Credits) FROM Course
);

-- Output:
-- +--------------+
-- | Course_Name  |
-- +--------------+
-- | DBMS         |
-- | OS           |
-- | CN           |
-- | DSA          |
-- | ML           |
-- | DL           |
-- | DataMining   |
-- | Circuit      |
-- | Machines     |
-- | PowerSys     |
-- | Survey       |
-- | Soil         |
-- | Structure    |
-- | Thermo       |
-- | Fluid        |
-- | Machine      |
-- | DBMS         |
-- | Graphics     |
-- | Model3D      |
-- +--------------+


-- =========================================
-- Q8: Students whose Student_ID is greater than average Student_ID
-- =========================================

SELECT Name
FROM Student
WHERE Student_ID > (
    SELECT AVG(Student_ID)
    FROM Student
);

-- Output:
-- +------------------+
-- | Name             |
-- +------------------+
-- | Saurabh Kumar    |
-- | Ritu Kumari      |
-- | Gaurav Singh     |
-- | Pallavi Sharma   |
-- | Nikhil Raj       |
-- | Jyoti Kumari     |
-- | Ankur Kumar      |
-- | Rashmi Singh     |
-- | Prakash Kumar    |
-- | Shalini Kumari   |
-- | Ankit Kumar      |
-- | Rohit Singh      |
-- | Komal Kumari     |
-- | Shubham Raj      |
-- | Meena Kumari     |
-- | Ritesh Kumar     |
-- | Vandana Singh    |
-- | Arun Kumar       |
-- | Rekha Kumari     |
-- | Dilip Kumar      |
-- | Ravi Kumar       |
-- | Neha Kumari      |
-- | Arvind Raj       |
-- | Pooja Singh      |
-- | Vikash Kumar     |
-- | Suman Kumari     |
-- | Rajesh Kumar     |
-- | Anjali Singh     |
-- | Kundan Kumar     |
-- | Ritu Kumari      |
-- +------------------+


-- =========================================
-- Q9: Departments > average students
-- =========================================

SELECT Dept_ID
FROM Student
GROUP BY Dept_ID
HAVING COUNT(*) > (
    SELECT AVG(cnt)
    FROM (
        SELECT COUNT(*) cnt
        FROM Student
        GROUP BY Dept_ID
    )
);

-- Output:
-- +----------+
-- | Dept_ID  |
-- +----------+
-- | NONE     |
-- +----------+


-- =========================================
-- Q10: Display names of students who are enrolled in courses (without JOIN)
-- =========================================

SELECT Name
FROM Student
WHERE Student_ID IN (
    SELECT Student_ID
    FROM Enrollment
);

-- Output:
-- +------------------+
-- | Name             |
-- +------------------+
-- | Rahul Kumar      |
-- | Aman Singh       |
-- | Priya Sharma     |
-- | Neha Kumari      |
-- | Vikas Raj        |
-- | Pooja Singh      |
-- | Rohit Yadav      |
-- | Soni Kumari      |
-- | Deepak Kumar     |
-- | Anjali Verma     |
-- | Aditya Kumar     |
-- | Riya Sharma      |
-- | Kunal Singh      |
-- | Sneha Kumari     |
-- | Harsh Raj        |
-- | Komal Singh      |
-- | Nitesh Kumar     |
-- | Shivani Singh    |
-- | Abhishek Raj     |
-- | Muskan Kumari    |
-- | Kishan Kumar     |
-- | Ranjan Singh     |
-- | Neetu Kumari     |
-- | Sandeep Kumar    |
-- | Sarla Kumari     |
-- | Ravi Raj         |
-- | Pinky Kumari     |
-- | Manoj Kumar      |
-- | Seema Singh      |
-- | Ashok Kumar      |
-- | Manish Kumar     |
-- | Ravi Kumar       |
-- | Priti Kumari     |
-- | Sunil Yadav      |
-- | Anita Kumari     |
-- | Vivek Singh      |
-- | Rakesh Kumar     |
-- | Kavita Sharma    |
-- | Mukesh Kumar     |
-- | Suman Kumari     |
-- | Ankit Kumar      |
-- | Rohit Singh      |
-- | Komal Kumari     |
-- | Shubham Raj      |
-- | Meena Kumari     |
-- | Ritesh Kumar     |
-- | Vandana Singh    |
-- | Arun Kumar       |
-- | Rekha Kumari     |
-- | Dilip Kumar      |
-- | Saurabh Kumar    |
-- | Ritu Kumari      |
-- | Gaurav Singh     |
-- | Pallavi Sharma   |
-- | Nikhil Raj       |
-- | Jyoti Kumari     |
-- | Ankur Kumar      |
-- | Rashmi Singh     |
-- | Prakash Kumar    |
-- | Shalini Kumari   |
-- | Ravi Kumar       |
-- | Neha Kumari      |
-- | Arvind Raj       |
-- | Pooja Singh      |
-- | Vikash Kumar     |
-- | Suman Kumari     |
-- | Rajesh Kumar     |
-- | Anjali Singh     |
-- | Kundan Kumar     |
-- | Ritu Kumari      |
-- +------------------+


-- =========================================
-- Q11: Display students who are allocated to any department
-- =========================================

SELECT Name
FROM Student
WHERE Dept_ID IS NOT NULL;

-- Output:
-- +------------------+
-- | Name             |
-- +------------------+
-- | Rahul Kumar      |
-- | Aman Singh       |
-- | Priya Sharma     |
-- | Neha Kumari      |
-- | Vikas Raj        |
-- | Pooja Singh      |
-- | Rohit Yadav      |
-- | Soni Kumari      |
-- | Deepak Kumar     |
-- | Anjali Verma     |
-- | Aditya Kumar     |
-- | Riya Sharma      |
-- | Kunal Singh      |
-- | Sneha Kumari     |
-- | Harsh Raj        |
-- | Komal Singh      |
-- | Nitesh Kumar     |
-- | Shivani Singh    |
-- | Abhishek Raj     |
-- | Muskan Kumari    |
-- | Kishan Kumar     |
-- | Ranjan Singh     |
-- | Neetu Kumari     |
-- | Sandeep Kumar    |
-- | Sarla Kumari     |
-- | Ravi Raj         |
-- | Pinky Kumari     |
-- | Manoj Kumar      |
-- | Seema Singh      |
-- | Ashok Kumar      |
-- | Manish Kumar     |
-- | Ravi Kumar       |
-- | Priti Kumari     |
-- | Sunil Yadav      |
-- | Anita Kumari     |
-- | Vivek Singh      |
-- | Rakesh Kumar     |
-- | Kavita Sharma    |
-- | Mukesh Kumar     |
-- | Suman Kumari     |
-- | Ankit Kumar      |
-- | Rohit Singh      |
-- | Komal Kumari     |
-- | Shubham Raj      |
-- | Meena Kumari     |
-- | Ritesh Kumar     |
-- | Vandana Singh    |
-- | Arun Kumar       |
-- | Rekha Kumari     |
-- | Dilip Kumar      |
-- | Saurabh Kumar    |
-- | Ritu Kumari      |
-- | Gaurav Singh     |
-- | Pallavi Sharma   |
-- | Nikhil Raj       |
-- | Jyoti Kumari     |
-- | Ankur Kumar      |
-- | Rashmi Singh     |
-- | Prakash Kumar    |
-- | Shalini Kumari   |
-- | Ravi Kumar       |
-- | Neha Kumari      |
-- | Arvind Raj       |
-- | Pooja Singh      |
-- | Vikash Kumar     |
-- | Suman Kumari     |
-- | Rajesh Kumar     |
-- | Anjali Singh     |
-- | Kundan Kumar     |
-- | Ritu Kumari      |
-- +------------------+


-- =========================================
-- Q12: Display courses that have at least one student enrolled
-- =========================================

SELECT Course_Name
FROM Course
WHERE Course_ID IN (
    SELECT Course_ID
    FROM Enrollment
);

-- Output:
-- +--------------+
-- | Course_Name  |
-- +--------------+
-- | DBMS         |
-- | OS           |
-- | CN           |
-- | SE           |
-- | DSA          |
-- | ML           |
-- | DL           |
-- | DataMining   |
-- | PythonAI     |
-- | NLP          |
-- | Circuit      |
-- | Machines     |
-- | PowerSys     |
-- | Control      |
-- | Electro      |
-- | Survey       |
-- | Soil         |
-- | Structure    |
-- | Concrete     |
-- | Hydrology    |
-- | Thermo       |
-- | Fluid        |
-- | Machine      |
-- | Manufact     |
-- | AutoCAD      |
-- | CAD          |
-- | GIS          |
-- | Python       |
-- | DBMS         |
-- | WebTech      |
-- | Graphics     |
-- | Anim         |
-- | Model3D      |
-- | VFX          |
-- | Render       |
-- +--------------+


-- =========================================
-- Q13: Display the course with maximum credits
-- =========================================

SELECT Course_Name
FROM Course
WHERE Credits = (
    SELECT MAX(Credits)
    FROM Course
);

-- Output:
-- +--------------+
-- | Course_Name  |
-- +--------------+
-- | DBMS         |
-- | OS           |
-- | CN           |
-- | DSA          |
-- | ML           |
-- | DL           |
-- | DataMining   |
-- | Circuit      |
-- | Machines     |
-- | PowerSys     |
-- | Survey       |
-- | Soil         |
-- | Structure    |
-- | Thermo       |
-- | Fluid        |
-- | Machine      |
-- | DBMS         |
-- | Graphics     |
-- | Model3D      |
-- +--------------+


-- =========================================
-- Q14: Students with >1 course
-- =========================================

SELECT Name
FROM Student
WHERE Student_ID IN (
    SELECT Student_ID
    FROM Enrollment
    GROUP BY Student_ID
    HAVING COUNT(*) > 1
);

-- Output:
-- +------------------+
-- | Name             |
-- +------------------+
-- | NONE             |
-- +------------------+


-- =========================================
-- Q15: Dept with max students
-- =========================================

SELECT Dept_ID
FROM Student
GROUP BY Dept_ID
HAVING COUNT(*) = (
    SELECT MAX(cnt)
    FROM (
        SELECT COUNT(*) cnt
        FROM Student
        GROUP BY Dept_ID
    )
);

-- Output:
-- +----------+
-- | Dept_ID  |
-- +----------+
-- | D001     |
-- | D002     |
-- | D003     |
-- | D004     |
-- | D005     |
-- | D006     |
-- | D009     |
-- +----------+


-- =========================================
-- Q16: Same course as S401
-- =========================================

SELECT Name
FROM Student
WHERE Student_ID IN (
    SELECT Student_ID
    FROM Enrollment
    WHERE Course_ID IN (
        SELECT Course_ID
        FROM Enrollment
        WHERE Student_ID = 'S401'
    )
);

-- Output:
-- +------------------+
-- | Name             |
-- +------------------+
-- | Manish Kumar     |
-- | Vivek Singh      |
-- +------------------+


-- =========================================
-- Q17: Students not enrolled
-- =========================================

SELECT Name
FROM Student
WHERE Student_ID NOT IN (
    SELECT Student_ID FROM Enrollment
);

-- Output:
-- +------------------+
-- | Name             |
-- +------------------+
-- | NONE             |
-- +------------------+


-- =========================================
-- Q18: Courses with no students
-- =========================================

SELECT Course_Name
FROM Course
WHERE Course_ID NOT IN (
    SELECT Course_ID FROM Enrollment
);

-- Output:
-- +--------------+
-- | Course_Name  |
-- +--------------+
-- | NONE         |
-- +--------------+