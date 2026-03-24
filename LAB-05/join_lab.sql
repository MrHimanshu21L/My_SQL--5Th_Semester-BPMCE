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

-- Output:
-- +------------+------------------+-----------+
-- | Student_ID | Name             | Course_ID |
-- +------------+------------------+-----------+
-- | S101       | Rahul Kumar      | C101      |
-- | S102       | Aman Singh       | C102      |
-- | S103       | Priya Sharma     | C103      |
-- | S104       | Neha Kumari      | C104      |
-- | S105       | Vikas Raj        | C105      |
-- | S106       | Pooja Singh      | C101      |
-- | S107       | Rohit Yadav      | C102      |
-- | S108       | Soni Kumari      | C103      |
-- | S109       | Deepak Kumar     | C104      |
-- | S110       | Anjali Verma     | C105      |
-- | S201       | Aditya Kumar     | C201      |
-- | S202       | Riya Sharma      | C202      |
-- | S203       | Kunal Singh      | C203      |
-- | S204       | Sneha Kumari     | C204      |
-- | S205       | Harsh Raj        | C205      |
-- | S206       | Komal Singh      | C201      |
-- | S207       | Nitesh Kumar     | C202      |
-- | S208       | Shivani Singh    | C203      |
-- | S209       | Abhishek Raj     | C204      |
-- | S210       | Muskan Kumari    | C205      |
-- | S301       | Kishan Kumar     | C301      |
-- | S302       | Ranjan Singh     | C302      |
-- | S303       | Neetu Kumari     | C303      |
-- | S304       | Sandeep Kumar    | C304      |
-- | S305       | Sarla Kumari     | C305      |
-- | S306       | Ravi Raj         | C301      |
-- | S307       | Pinky Kumari     | C302      |
-- | S308       | Manoj Kumar      | C303      |
-- | S309       | Seema Singh      | C304      |
-- | S310       | Ashok Kumar      | C305      |
-- | S401       | Manish Kumar     | C401      |
-- | S402       | Ravi Kumar       | C402      |
-- | S403       | Priti Kumari     | C403      |
-- | S404       | Sunil Yadav      | C404      |
-- | S405       | Anita Kumari     | C405      |
-- | S406       | Vivek Singh      | C401      |
-- | S407       | Rakesh Kumar     | C402      |
-- | S408       | Kavita Sharma    | C403      |
-- | S409       | Mukesh Kumar     | C404      |
-- | S410       | Suman Kumari     | C405      |
-- | S601       | Ankit Kumar      | C601      |
-- | S602       | Rohit Singh      | C602      |
-- | S603       | Komal Kumari     | C603      |
-- | S604       | Shubham Raj      | C604      |
-- | S605       | Meena Kumari     | C605      |
-- | S606       | Ritesh Kumar     | C601      |
-- | S607       | Vandana Singh    | C602      |
-- | S608       | Arun Kumar       | C603      |
-- | S609       | Rekha Kumari     | C604      |
-- | S610       | Dilip Kumar      | C605      |
-- | S501       | Saurabh Kumar    | C501      |
-- | S502       | Ritu Kumari      | C502      |
-- | S503       | Gaurav Singh     | C503      |
-- | S504       | Pallavi Sharma   | C504      |
-- | S505       | Nikhil Raj       | C505      |
-- | S506       | Jyoti Kumari     | C501      |
-- | S507       | Ankur Kumar      | C502      |
-- | S508       | Rashmi Singh     | C503      |
-- | S509       | Prakash Kumar    | C504      |
-- | S510       | Shalini Kumari   | C505      |
-- | S901       | Ravi Kumar       | C901      |
-- | S902       | Neha Kumari      | C902      |
-- | S903       | Arvind Raj       | C903      |
-- | S904       | Pooja Singh      | C904      |
-- | S905       | Vikash Kumar     | C905      |
-- | S906       | Suman Kumari     | C901      |
-- | S907       | Rajesh Kumar     | C902      |
-- | S908       | Anjali Singh     | C903      |
-- | S909       | Kundan Kumar     | C904      |
-- | S910       | Ritu Kumari      | C905      |
-- +------------+------------------+-----------+


/* 2. Display student Name and Semester */
SELECT S.Name, E.Semester
FROM Student S
INNER JOIN Enrollment E
ON S.Student_ID = E.Student_ID;

-- Output:
-- +------------------+----------+
-- | Name             | Semester |
-- +------------------+----------+
-- | Rahul Kumar      | S1       |
-- | Aman Singh       | S2       |
-- | Priya Sharma     | S3       |
-- | Neha Kumari      | S4       |
-- | Vikas Raj        | S5       |
-- | Pooja Singh      | S6       |
-- | Rohit Yadav      | S7       |
-- | Soni Kumari      | S8       |
-- | Deepak Kumar     | S2       |
-- | Anjali Verma     | S4       |
-- | Aditya Kumar     | S1       |
-- | Riya Sharma      | S2       |
-- | Kunal Singh      | S3       |
-- | Sneha Kumari     | S4       |
-- | Harsh Raj        | S5       |
-- | Komal Singh      | S6       |
-- | Nitesh Kumar     | S7       |
-- | Shivani Singh    | S8       |
-- | Abhishek Raj     | S2       |
-- | Muskan Kumari    | S5       |
-- | Kishan Kumar     | S1       |
-- | Ranjan Singh     | S2       |
-- | Neetu Kumari     | S3       |
-- | Sandeep Kumar    | S4       |
-- | Sarla Kumari     | S5       |
-- | Ravi Raj         | S6       |
-- | Pinky Kumari     | S7       |
-- | Manoj Kumar      | S8       |
-- | Seema Singh      | S3       |
-- | Ashok Kumar      | S6       |
-- | Manish Kumar     | S1       |
-- | Ravi Kumar       | S2       |
-- | Priti Kumari     | S3       |
-- | Sunil Yadav      | S4       |
-- | Anita Kumari     | S5       |
-- | Vivek Singh      | S6       |
-- | Rakesh Kumar     | S7       |
-- | Kavita Sharma    | S8       |
-- | Mukesh Kumar     | S4       |
-- | Suman Kumari     | S7       |
-- | Ankit Kumar      | S1       |
-- | Rohit Singh      | S2       |
-- | Komal Kumari     | S3       |
-- | Shubham Raj      | S4       |
-- | Meena Kumari     | S5       |
-- | Ritesh Kumar     | S6       |
-- | Vandana Singh    | S7       |
-- | Arun Kumar       | S8       |
-- | Rekha Kumari     | S5       |
-- | Dilip Kumar      | S2       |
-- | Saurabh Kumar    | S1       |
-- | Ritu Kumari      | S2       |
-- | Gaurav Singh     | S3       |
-- | Pallavi Sharma   | S4       |
-- | Nikhil Raj       | S5       |
-- | Jyoti Kumari     | S6       |
-- | Ankur Kumar      | S7       |
-- | Rashmi Singh     | S8       |
-- | Prakash Kumar    | S6       |
-- | Shalini Kumari   | S3       |
-- | Ravi Kumar       | S1       |
-- | Neha Kumari      | S2       |
-- | Arvind Raj       | S3       |
-- | Pooja Singh      | S4       |
-- | Vikash Kumar     | S5       |
-- | Suman Kumari     | S6       |
-- | Rajesh Kumar     | S7       |
-- | Anjali Singh     | S8       |
-- | Kundan Kumar     | S7       |
-- | Ritu Kumari      | S2       |
-- +------------------+----------+


/* 3. Display student Name and Grade obtained */
SELECT S.Name, E.Grade
FROM Student S
INNER JOIN Enrollment E
ON S.Student_ID = E.Student_ID;

-- Output:
-- +------------------+-------+
-- | Name             | Grade |
-- +------------------+-------+
-- | Rahul Kumar      | A     |
-- | Aman Singh       | B     |
-- | Priya Sharma     | A     |
-- | Neha Kumari      | B     |
-- | Vikas Raj        | A     |
-- | Pooja Singh      | B     |
-- | Rohit Yadav      | A     |
-- | Soni Kumari      | B     |
-- | Deepak Kumar     | A     |
-- | Anjali Verma     | B     |
-- | Aditya Kumar     | A     |
-- | Riya Sharma      | B     |
-- | Kunal Singh      | A     |
-- | Sneha Kumari     | B     |
-- | Harsh Raj        | A     |
-- | Komal Singh      | B     |
-- | Nitesh Kumar     | A     |
-- | Shivani Singh    | B     |
-- | Abhishek Raj     | A     |
-- | Muskan Kumari    | B     |
-- | Kishan Kumar     | A     |
-- | Ranjan Singh     | B     |
-- | Neetu Kumari     | A     |
-- | Sandeep Kumar    | B     |
-- | Sarla Kumari     | A     |
-- | Ravi Raj         | B     |
-- | Pinky Kumari     | A     |
-- | Manoj Kumar      | B     |
-- | Seema Singh      | A     |
-- | Ashok Kumar      | B     |
-- | Manish Kumar     | A     |
-- | Ravi Kumar       | B     |
-- | Priti Kumari     | A     |
-- | Sunil Yadav      | B     |
-- | Anita Kumari     | A     |
-- | Vivek Singh      | B     |
-- | Rakesh Kumar     | A     |
-- | Kavita Sharma    | B     |
-- | Mukesh Kumar     | A     |
-- | Suman Kumari     | B     |
-- | Ankit Kumar      | A     |
-- | Rohit Singh      | B     |
-- | Komal Kumari     | A     |
-- | Shubham Raj      | B     |
-- | Meena Kumari     | A     |
-- | Ritesh Kumar     | B     |
-- | Vandana Singh    | A     |
-- | Arun Kumar       | B     |
-- | Rekha Kumari     | A     |
-- | Dilip Kumar      | B     |
-- | Saurabh Kumar    | A     |
-- | Ritu Kumari      | B     |
-- | Gaurav Singh     | A     |
-- | Pallavi Sharma   | B     |
-- | Nikhil Raj       | A     |
-- | Jyoti Kumari     | B     |
-- | Ankur Kumar      | A     |
-- | Rashmi Singh     | B     |
-- | Prakash Kumar    | A     |
-- | Shalini Kumari   | B     |
-- | Ravi Kumar       | A     |
-- | Neha Kumari      | B     |
-- | Arvind Raj       | A     |
-- | Pooja Singh      | B     |
-- | Vikash Kumar     | A     |
-- | Suman Kumari     | B     |
-- | Rajesh Kumar     | A     |
-- | Anjali Singh     | B     |
-- | Kundan Kumar     | A     |
-- | Ritu Kumari      | B     |
-- +------------------+-------+



/* =========================================================
   PART B — COURSE–FACULTY RELATIONSHIP
   ========================================================= */
/* 4. Course_Name, Credits, Faculty Name */
SELECT C.Course_Name, C.Credits, F.Name AS Faculty_Name
FROM Course C
INNER JOIN Faculty F
ON C.Faculty_ID = F.Faculty_ID;

-- Output:
-- +-------------+---------+--------------------------+
-- | Course_Name | Credits | Faculty_Name             |
-- +-------------+---------+--------------------------+
-- | DBMS        | 4       | Murlidhar Prasad Singh   |
-- | OS          | 4       | Md Ehtashamoul Haque     |
-- | CN          | 4       | Amit Kumar               |
-- | SE          | 3       | Md Izhar                 |
-- | DSA         | 4       | Manisha Kumari Singh     |
-- | ML          | 4       | Md Ehteshamoul Hoque     |
-- | DL          | 4       | Sujeet Kumar             |
-- | DataMining  | 4       | Praveen Kumar            |
-- | PythonAI    | 3       | Manisha Kumari Singh     |
-- | NLP         | 3       | Md Izhar                 |
-- | Circuit     | 4       | Hare Krishna Mishra      |
-- | Machines    | 4       | Ashish Kumar Suman       |
-- | PowerSys    | 4       | Mitesh Kumar             |
-- | Control     | 3       | Nitish Kumar             |
-- | Electro     | 3       | Mithlesh Kumar           |
-- | Survey      | 4       | Akhilesh Kumar           |
-- | Soil        | 4       | Kunal Kumar              |
-- | Structure   | 4       | Nishikant Kumar          |
-- | Concrete    | 3       | Raushan Anand            |
-- | Hydrology   | 3       | Vicky Anand              |
-- | Thermo      | 4       | Arbind Kumar Amar        |
-- | Fluid       | 4       | Ajay Giri                |
-- | Machine     | 4       | Uttam Kumar              |
-- | Manufact    | 3       | Firoz Akhtar             |
-- | AutoCAD     | 3       | Rahul Ranjan Bharti      |
-- | CAD         | 3       | Akhilesh Kumar           |
-- | GIS         | 3       | Kunal Kumar              |
-- | Python      | 3       | Nishikant Kumar          |
-- | DBMS        | 4       | Vicky Anand              |
-- | WebTech     | 3       | Pankaj Kumar             |
-- | Graphics    | 4       | Murlidhar Prasad Singh   |
-- | Anim        | 3       | Md Ehteshamoul Hoque     |
-- | Model3D     | 4       | Sujeet Kumar             |
-- | VFX         | 3       | Praveen Kumar            |
-- | Render      | 3       | Manisha Kumari Singh     |
-- +-------------+---------+--------------------------+

/* 5. Courses taught by Faculty_ID 'F201' */
SELECT C.Course_Name
FROM Course C
INNER JOIN Faculty F
ON C.Faculty_ID = F.Faculty_ID
WHERE F.Faculty_ID = 'F201';

-- Output:
-- +-------------+
-- | Course_Name |
-- +-------------+
-- | ML          |
-- +-------------+


/* 6. Faculty Name, Designation, Course_Name */
SELECT F.Name, F.Designation, C.Course_Name
FROM Faculty F
INNER JOIN Course C
ON F.Faculty_ID = C.Faculty_ID;

-- Output:
-- +--------------------------+--------------+-------------+
-- | Name                     | Designation  | Course_Name |
-- +--------------------------+--------------+-------------+
-- | Murlidhar Prasad Singh   | AsstPro HoD  | DBMS        |
-- | Md Ehtashamoul Haque     | Asst Pro     | OS          |
-- | Amit Kumar               | Asst Pro     | CN          |
-- | Md Izhar                 | Asst Pro     | SE          |
-- | Manisha Kumari Singh     | Asst Pro     | DSA         |
-- | Md Ehteshamoul Hoque     | AsstPro HoD  | ML          |
-- | Sujeet Kumar             | Asst Pro     | DL          |
-- | Praveen Kumar            | Asst Pro     | DataMining  |
-- | Manisha Kumari Singh     | Asst Pro     | PythonAI    |
-- | Md Izhar                 | Asst Pro     | NLP         |
-- | Hare Krishna Mishra      | Asst Pro     | Circuit     |
-- | Ashish Kumar Suman       | Asst Pro     | Machines    |
-- | Mitesh Kumar             | Asst Pro     | PowerSys    |
-- | Nitish Kumar             | Asst Pro     | Control     |
-- | Mithlesh Kumar           | AsstPro HoD  | Electro     |
-- | Akhilesh Kumar           | Asst Pro     | Survey      |
-- | Kunal Kumar              | AsstPro HoD  | Soil        |
-- | Nishikant Kumar          | Asst Pro     | Structure   |
-- | Raushan Anand            | Asst Pro     | Concrete    |
-- | Vicky Anand              | Asst Pro     | Hydrology   |
-- | Arbind Kumar Amar        | PrincipalIC  | Thermo      |
-- | Ajay Giri                | AsstPro HoD  | Fluid       |
-- | Uttam Kumar              | Asst Pro     | Machine     |
-- | Firoz Akhtar             | Asst Pro     | Manufact    |
-- | Rahul Ranjan Bharti      | Asst Pro     | AutoCAD     |
-- | Akhilesh Kumar           | AsstPro HoD  | CAD         |
-- | Kunal Kumar              | Asst Pro     | GIS         |
-- | Nishikant Kumar          | Asst Pro     | Python      |
-- | Vicky Anand              | Asst Pro     | DBMS        |
-- | Pankaj Kumar             | Asst Pro     | WebTech     |
-- | Murlidhar Prasad Singh   | AsstPro HoD  | Graphics    |
-- | Md Ehteshamoul Hoque     | Asst Pro     | Anim        |
-- | Sujeet Kumar             | Asst Pro     | Model3D     |
-- | Praveen Kumar            | Asst Pro     | VFX         |
-- | Manisha Kumari Singh     | Asst Pro     | Render      |
-- +--------------------------+--------------+-------------+



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

-- Output:
-- +------------------+-------------+
-- | Name             | Course_Name |
-- +------------------+-------------+
-- | Rahul Kumar      | DBMS        |
-- | Aman Singh       | OS          |
-- | Priya Sharma     | CN          |
-- | Neha Kumari      | SE          |
-- | Vikas Raj        | DSA         |
-- | Pooja Singh      | DBMS        |
-- | Rohit Yadav      | OS          |
-- | Soni Kumari      | CN          |
-- | Deepak Kumar     | SE          |
-- | Anjali Verma     | DSA         |
-- | Aditya Kumar     | ML          |
-- | Riya Sharma      | DL          |
-- | Kunal Singh      | DataMining  |
-- | Sneha Kumari     | PythonAI    |
-- | Harsh Raj        | NLP         |
-- | Komal Singh      | ML          |
-- | Nitesh Kumar     | DL          |
-- | Shivani Singh    | DataMining  |
-- | Abhishek Raj     | PythonAI    |
-- | Muskan Kumari    | NLP         |
-- | Kishan Kumar     | Circuit     |
-- | Ranjan Singh     | Machines    |
-- | Neetu Kumari     | PowerSys    |
-- | Sandeep Kumar    | Control     |
-- | Sarla Kumari     | Electro     |
-- | Ravi Raj         | Circuit     |
-- | Pinky Kumari     | Machines    |
-- | Manoj Kumar      | PowerSys    |
-- | Seema Singh      | Control     |
-- | Ashok Kumar      | Electro     |
-- | Manish Kumar     | Survey      |
-- | Ravi Kumar       | Soil        |
-- | Priti Kumari     | Structure   |
-- | Sunil Yadav      | Concrete    |
-- | Anita Kumari     | Hydrology   |
-- | Vivek Singh      | Survey      |
-- | Rakesh Kumar     | Soil        |
-- | Kavita Sharma    | Structure   |
-- | Mukesh Kumar     | Concrete    |
-- | Suman Kumari     | Hydrology   |
-- | Ankit Kumar      | Thermo      |
-- | Rohit Singh      | Fluid       |
-- | Komal Kumari     | Machine     |
-- | Shubham Raj      | Manufact    |
-- | Meena Kumari     | AutoCAD     |
-- | Ritesh Kumar     | Thermo      |
-- | Vandana Singh    | Fluid       |
-- | Arun Kumar       | Machine     |
-- | Rekha Kumari     | Manufact    |
-- | Dilip Kumar      | AutoCAD     |
-- | Saurabh Kumar    | CAD         |
-- | Ritu Kumari      | GIS         |
-- | Gaurav Singh     | Python      |
-- | Pallavi Sharma   | DBMS        |
-- | Nikhil Raj       | WebTech     |
-- | Jyoti Kumari     | CAD         |
-- | Ankur Kumar      | GIS         |
-- | Rashmi Singh     | Python      |
-- | Prakash Kumar    | DBMS        |
-- | Shalini Kumari   | WebTech     |
-- | Ravi Kumar       | Graphics    |
-- | Neha Kumari      | Anim        |
-- | Arvind Raj       | Model3D     |
-- | Pooja Singh      | VFX         |
-- | Vikash Kumar     | Render      |
-- | Suman Kumari     | Graphics    |
-- | Rajesh Kumar     | Anim        |
-- | Anjali Singh     | Model3D     |
-- | Kundan Kumar     | VFX         |
-- | Ritu Kumari      | Render      |
-- +------------------+-------------+

/* 8. Student Name, Course_Name, Semester */
SELECT S.Name, C.Course_Name, E.Semester
FROM Student S
INNER JOIN Enrollment E
ON S.Student_ID = E.Student_ID
INNER JOIN Course C
ON E.Course_ID = C.Course_ID;

-- Output:
-- +------------------+-------------+----------+
-- | Name             | Course_Name | Semester |
-- +------------------+-------------+----------+
-- | Rahul Kumar      | DBMS        | S1       |
-- | Aman Singh       | OS          | S2       |
-- | Priya Sharma     | CN          | S3       |
-- | Neha Kumari      | SE          | S4       |
-- | Vikas Raj        | DSA         | S5       |
-- | Pooja Singh      | DBMS        | S6       |
-- | Rohit Yadav      | OS          | S7       |
-- | Soni Kumari      | CN          | S8       |
-- | Deepak Kumar     | SE          | S2       |
-- | Anjali Verma     | DSA         | S4       |

-- | Aditya Kumar     | ML          | S1       |
-- | Riya Sharma      | DL          | S2       |
-- | Kunal Singh      | DataMining  | S3       |
-- | Sneha Kumari     | PythonAI    | S4       |
-- | Harsh Raj        | NLP         | S5       |
-- | Komal Singh      | ML          | S6       |
-- | Nitesh Kumar     | DL          | S7       |
-- | Shivani Singh    | DataMining  | S8       |
-- | Abhishek Raj     | PythonAI    | S2       |
-- | Muskan Kumari    | NLP         | S5       |

-- | Kishan Kumar     | Circuit     | S1       |
-- | Ranjan Singh     | Machines    | S2       |
-- | Neetu Kumari     | PowerSys    | S3       |
-- | Sandeep Kumar    | Control     | S4       |
-- | Sarla Kumari     | Electro     | S5       |
-- | Ravi Raj         | Circuit     | S6       |
-- | Pinky Kumari     | Machines    | S7       |
-- | Manoj Kumar      | PowerSys    | S8       |
-- | Seema Singh      | Control     | S3       |
-- | Ashok Kumar      | Electro     | S6       |

-- | Manish Kumar     | Survey      | S1       |
-- | Ravi Kumar       | Soil        | S2       |
-- | Priti Kumari     | Structure   | S3       |
-- | Sunil Yadav      | Concrete    | S4       |
-- | Anita Kumari     | Hydrology   | S5       |
-- | Vivek Singh      | Survey      | S6       |
-- | Rakesh Kumar     | Soil        | S7       |
-- | Kavita Sharma    | Structure   | S8       |
-- | Mukesh Kumar     | Concrete    | S4       |
-- | Suman Kumari     | Hydrology   | S7       |

-- | Ankit Kumar      | Thermo      | S1       |
-- | Rohit Singh      | Fluid       | S2       |
-- | Komal Kumari     | Machine     | S3       |
-- | Shubham Raj      | Manufact    | S4       |
-- | Meena Kumari     | AutoCAD     | S5       |
-- | Ritesh Kumar     | Thermo      | S6       |
-- | Vandana Singh    | Fluid       | S7       |
-- | Arun Kumar       | Machine     | S8       |
-- | Rekha Kumari     | Manufact    | S5       |
-- | Dilip Kumar      | AutoCAD     | S2       |

-- | Saurabh Kumar    | CAD         | S1       |
-- | Ritu Kumari      | GIS         | S2       |
-- | Gaurav Singh     | Python      | S3       |
-- | Pallavi Sharma   | DBMS        | S4       |
-- | Nikhil Raj       | WebTech     | S5       |
-- | Jyoti Kumari     | CAD         | S6       |
-- | Ankur Kumar      | GIS         | S7       |
-- | Rashmi Singh     | Python      | S8       |
-- | Prakash Kumar    | DBMS        | S6       |
-- | Shalini Kumari   | WebTech     | S3       |

-- | Ravi Kumar       | Graphics    | S1       |
-- | Neha Kumari      | Anim        | S2       |
-- | Arvind Raj       | Model3D     | S3       |
-- | Pooja Singh      | VFX         | S4       |
-- | Vikash Kumar     | Render      | S5       |
-- | Suman Kumari     | Graphics    | S6       |
-- | Rajesh Kumar     | Anim        | S7       |
-- | Anjali Singh     | Model3D     | S8       |
-- | Kundan Kumar     | VFX         | S7       |
-- | Ritu Kumari      | Render      | S2       |
-- +------------------+-------------+----------+

/* 9. Student Name, Course_Name, Grade (Semester 4 only) */
SELECT S.Name, C.Course_Name, E.Grade
FROM Student S
INNER JOIN Enrollment E
ON S.Student_ID = E.Student_ID
INNER JOIN Course C
ON E.Course_ID = C.Course_ID
WHERE E.Semester = 'S4';

-- Output:
-- +------------------+-------------+-------+
-- | Name             | Course_Name | Grade |
-- +------------------+-------------+-------+
-- | Neha Kumari      | SE          | B     |
-- | Anjali Verma     | DSA         | B     |
-- | Sneha Kumari     | PythonAI    | B     |
-- | Sandeep Kumar    | Control     | B     |
-- | Sunil Yadav      | Concrete    | B     |
-- | Mukesh Kumar     | Concrete    | A     |
-- | Shubham Raj      | Manufact    | B     |
-- | Pallavi Sharma   | DBMS        | B     |
-- | Pooja Singh      | VFX         | B     |
-- +------------------+-------------+-------+

/* 10. Courses taken by Student_ID 'S401' */
SELECT C.Course_Name
FROM Student S
INNER JOIN Enrollment E
ON S.Student_ID = E.Student_ID
INNER JOIN Course C
ON E.Course_ID = C.Course_ID
WHERE S.Student_ID = 'S401';

-- Output:
-- +-------------+
-- | Course_Name |
-- +-------------+
-- | Survey      |
-- +-------------+



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

-- Output:
-- +------------------+---------+-------------+
-- | Name             | Dept_ID | Course_Name |
-- +------------------+---------+-------------+
-- | Rahul Kumar      | D001    | DBMS        |
-- | Aman Singh       | D001    | OS          |
-- | Priya Sharma     | D001    | CN          |
-- | Neha Kumari      | D001    | SE          |
-- | Vikas Raj        | D001    | DSA         |
-- | Pooja Singh      | D001    | DBMS        |
-- | Rohit Yadav      | D001    | OS          |
-- | Soni Kumari      | D001    | CN          |
-- | Deepak Kumar     | D001    | SE          |
-- | Anjali Verma     | D001    | DSA         |
-- | Aditya Kumar     | D002    | ML          |
-- | Riya Sharma      | D002    | DL          |
-- | Kunal Singh      | D002    | DataMining  |
-- | Sneha Kumari     | D002    | PythonAI    |
-- | Harsh Raj        | D002    | NLP         |
-- | Komal Singh      | D002    | ML          |
-- | Nitesh Kumar     | D002    | DL          |
-- | Shivani Singh    | D002    | DataMining  |
-- | Abhishek Raj     | D002    | PythonAI    |
-- | Muskan Kumari    | D002    | NLP         |
-- | Kishan Kumar     | D003    | Circuit     |
-- | Ranjan Singh     | D003    | Machines    |
-- | Neetu Kumari     | D003    | PowerSys    |
-- | Sandeep Kumar    | D003    | Control     |
-- | Sarla Kumari     | D003    | Electro     |
-- | Ravi Raj         | D003    | Circuit     |
-- | Pinky Kumari     | D003    | Machines    |
-- | Manoj Kumar      | D003    | PowerSys    |
-- | Seema Singh      | D003    | Control     |
-- | Ashok Kumar      | D003    | Electro     |
-- | Manish Kumar     | D004    | Survey      |
-- | Ravi Kumar       | D004    | Soil        |
-- | Priti Kumari     | D004    | Structure   |
-- | Sunil Yadav      | D004    | Concrete    |
-- | Anita Kumari     | D004    | Hydrology   |
-- | Vivek Singh      | D004    | Survey      |
-- | Rakesh Kumar     | D004    | Soil        |
-- | Kavita Sharma    | D004    | Structure   |
-- | Mukesh Kumar     | D004    | Concrete    |
-- | Suman Kumari     | D004    | Hydrology   |
-- | Ankit Kumar      | D005    | Thermo      |
-- | Rohit Singh      | D005    | Fluid       |
-- | Komal Kumari     | D005    | Machine     |
-- | Shubham Raj      | D005    | Manufact    |
-- | Meena Kumari     | D005    | AutoCAD     |
-- | Ritesh Kumar     | D005    | Thermo      |
-- | Vandana Singh    | D005    | Fluid       |
-- | Arun Kumar       | D005    | Machine     |
-- | Rekha Kumari     | D005    | Manufact    |
-- | Dilip Kumar      | D005    | AutoCAD     |
-- | Saurabh Kumar    | D006    | CAD         |
-- | Ritu Kumari      | D006    | GIS         |
-- | Gaurav Singh     | D006    | Python      |
-- | Pallavi Sharma   | D006    | DBMS        |
-- | Nikhil Raj       | D006    | WebTech     |
-- | Jyoti Kumari     | D006    | CAD         |
-- | Ankur Kumar      | D006    | GIS         |
-- | Rashmi Singh     | D006    | Python      |
-- | Prakash Kumar    | D006    | DBMS        |
-- | Shalini Kumari   | D006    | WebTech     |
-- | Ravi Kumar       | D009    | Graphics    |
-- | Neha Kumari      | D009    | Anim        |
-- | Arvind Raj       | D009    | Model3D     |
-- | Pooja Singh      | D009    | VFX         |
-- | Vikash Kumar     | D009    | Render      |
-- | Suman Kumari     | D009    | Graphics    |
-- | Rajesh Kumar     | D009    | Anim        |
-- | Anjali Singh     | D009    | Model3D     |
-- | Kundan Kumar     | D009    | VFX         |
-- | Ritu Kumari      | D009    | Render      |
-- +------------------+---------+-------------+

/* 12. Department-wise list of courses */
SELECT D.Dept_Name, C.Course_Name
FROM Department D
INNER JOIN Course C
ON D.Dept_ID = C.Dept_ID;

-- Output:
-- +-------------+-------------+
-- | Dept_Name   | Course_Name |
-- +-------------+-------------+
-- | CSE         | DBMS        |
-- | CSE         | OS          |
-- | CSE         | CN          |
-- | CSE         | SE          |
-- | CSE         | DSA         |
-- | CSE(AIML)   | ML          |
-- | CSE(AIML)   | DL          |
-- | CSE(AIML)   | DataMining  |
-- | CSE(AIML)   | PythonAI    |
-- | CSE(AIML)   | NLP         |
-- | EEE         | Circuit     |
-- | EEE         | Machines    |
-- | EEE         | PowerSys    |
-- | EEE         | Control     |
-- | EEE         | Electro     |
-- | CE          | Survey      |
-- | CE          | Soil        |
-- | CE          | Structure   |
-- | CE          | Concrete    |
-- | CE          | Hydrology   |
-- | ME          | Thermo      |
-- | ME          | Fluid       |
-- | ME          | Machine     |
-- | ME          | Manufact    |
-- | ME          | AutoCAD     |
-- | CEWCA       | CAD         |
-- | CEWCA       | GIS         |
-- | CEWCA       | Python      |
-- | CEWCA       | DBMS        |
-- | CEWCA       | WebTech     |
-- | 3DAG        | Graphics    |
-- | 3DAG        | Anim        |
-- | 3DAG        | Model3D     |
-- | 3DAG        | VFX         |
-- | 3DAG        | Render      |
-- +-------------+-------------+

/* 13. Faculty Name with Department Name */
SELECT F.Name, D.Dept_Name
FROM Faculty F
INNER JOIN Department D
ON F.Dept_ID = D.Dept_ID;

-- Output:
-- +--------------------------+-------------+
-- | Name                     | Dept_Name   |
-- +--------------------------+-------------+
-- | Murlidhar Prasad Singh   | CSE         |
-- | Md Ehtashamoul Haque     | CSE         |
-- | Amit Kumar               | CSE         |
-- | Md Izhar                 | CSE         |
-- | Manisha Kumari Singh     | CSE         |
-- | Md Ehteshamoul Hoque     | CSE(AIML)   |
-- | Sujeet Kumar             | CSE(AIML)   |
-- | Praveen Kumar            | CSE(AIML)   |
-- | Manisha Kumari Singh     | CSE(AIML)   |
-- | Md Izhar                 | CSE(AIML)   |
-- | Hare Krishna Mishra      | EEE         |
-- | Ashish Kumar Suman       | EEE         |
-- | Mitesh Kumar             | EEE         |
-- | Nitish Kumar             | EEE         |
-- | Mithlesh Kumar           | EEE         |
-- | Akhilesh Kumar           | CE          |
-- | Kunal Kumar              | CE          |
-- | Nishikant Kumar          | CE          |
-- | Raushan Anand            | CE          |
-- | Vicky Anand              | CE          |
-- | Arbind Kumar Amar        | ME          |
-- | Ajay Giri                | ME          |
-- | Uttam Kumar              | ME          |
-- | Firoz Akhtar             | ME          |
-- | Rahul Ranjan Bharti      | ME          |
-- | Akhilesh Kumar           | CEWCA       |
-- | Kunal Kumar              | CEWCA       |
-- | Nishikant Kumar          | CEWCA       |
-- | Vicky Anand              | CEWCA       |
-- | Pankaj Kumar             | CEWCA       |
-- | Murlidhar Prasad Singh   | 3DAG        |
-- | Md Ehteshamoul Hoque     | 3DAG        |
-- | Sujeet Kumar             | 3DAG        |
-- | Praveen Kumar            | 3DAG        |
-- | Manisha Kumari Singh     | 3DAG        |
-- +--------------------------+-------------+



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

-- Output:
-- (No rows selected)


/* 15. Student Name and Course_Name sorted by Name */
SELECT S.Name, C.Course_Name
FROM Student S
INNER JOIN Enrollment E
ON S.Student_ID = E.Student_ID
INNER JOIN Course C
ON E.Course_ID = C.Course_ID
ORDER BY S.Name ASC;

-- Output:
-- +------------------+-------------+
-- | Name             | Course_Name |
-- +------------------+-------------+
-- | Abhishek Raj     | PythonAI    |
-- | Aditya Kumar     | ML          |
-- | Aman Singh       | OS          |
-- | Anjali Singh     | Model3D     |
-- | Anjali Verma     | DSA         |
-- | Ankit Kumar      | Thermo      |
-- | Anita Kumari     | Hydrology   |
-- | Ankur Kumar      | GIS         |
-- | Arvind Raj       | Model3D     |
-- | Ashok Kumar      | Electro     |
-- | Deepak Kumar     | SE          |
-- | Dilip Kumar      | AutoCAD     |
-- | Gaurav Singh     | Python      |
-- | Harsh Raj        | NLP         |
-- | Jyoti Kumari     | CAD         |
-- | Kavita Sharma    | Structure   |
-- | Kishan Kumar     | Circuit     |
-- | Komal Kumari     | Machine     |
-- | Komal Singh      | ML          |
-- | Kundan Kumar     | VFX         |
-- | Manish Kumar     | Survey      |
-- | Manoj Kumar      | PowerSys    |
-- | Meena Kumari     | AutoCAD     |
-- | Mukesh Kumar     | Concrete    |
-- | Muskan Kumari    | NLP         |
-- | Neetu Kumari     | PowerSys    |
-- | Neha Kumari      | SE          |
-- | Neha Kumari      | Anim        |
-- | Nikhil Raj       | WebTech     |
-- | Nitesh Kumar     | DL          |
-- | Pallavi Sharma   | DBMS        |
-- | Pinky Kumari     | Machines    |
-- | Pooja Singh      | DBMS        |
-- | Pooja Singh      | VFX         |
-- | Prakash Kumar    | DBMS        |
-- | Priti Kumari     | Structure   |
-- | Rahul Kumar      | DBMS        |
-- | Rajesh Kumar     | Anim        |
-- | Rakesh Kumar     | Soil        |
-- | Ranjan Singh     | Machines    |
-- | Rashmi Singh     | Python      |
-- | Ravi Kumar       | Soil        |
-- | Ravi Kumar       | Graphics    |
-- | Ravi Raj         | Circuit     |
-- | Rekha Kumari     | Manufact    |
-- | Ritu Kumari      | GIS         |
-- | Ritu Kumari      | Render      |
-- | Rohit Singh      | Fluid       |
-- | Rohit Yadav      | OS          |
-- | Sarla Kumari     | Electro     |
-- | Saurabh Kumar    | CAD         |
-- | Seema Singh      | Control     |
-- | Shalini Kumari   | WebTech     |
-- | Shivani Singh    | DataMining  |
-- | Shubham Raj      | Manufact    |
-- | Soni Kumari      | CN          |
-- | Suman Kumari     | Hydrology   |
-- | Suman Kumari     | Graphics    |
-- | Sunil Yadav      | Concrete    |
-- | Vivek Singh      | Survey      |
-- | Vikash Kumar     | Render      |
-- | Vikas Raj        | DSA         |
-- +------------------+-------------+


/* 16. Faculty Name and Course_Name sorted by Credits */
SELECT F.Name, C.Course_Name
FROM Faculty F
INNER JOIN Course C
ON F.Faculty_ID = C.Faculty_ID
ORDER BY C.Credits DESC;

-- Output:
-- +--------------------------+-------------+
-- | Name                     | Course_Name |
-- +--------------------------+-------------+
-- | Murlidhar Prasad Singh   | DBMS        |
-- | Md Ehtashamoul Haque     | OS          |
-- | Amit Kumar               | CN          |
-- | Manisha Kumari Singh     | DSA         |
-- | Md Ehteshamoul Hoque     | ML          |
-- | Sujeet Kumar             | DL          |
-- | Praveen Kumar            | DataMining  |
-- | Hare Krishna Mishra      | Circuit     |
-- | Ashish Kumar Suman       | Machines    |
-- | Mitesh Kumar             | PowerSys    |
-- | Akhilesh Kumar           | Survey      |
-- | Kunal Kumar              | Soil        |
-- | Nishikant Kumar          | Structure   |
-- | Arbind Kumar Amar        | Thermo      |
-- | Ajay Giri                | Fluid       |
-- | Uttam Kumar              | Machine     |
-- | Vicky Anand              | DBMS        |
-- | Murlidhar Prasad Singh   | Graphics    |
-- | Sujeet Kumar             | Model3D     |

-- | Md Izhar                 | SE          |
-- | Manisha Kumari Singh     | PythonAI    |
-- | Md Izhar                 | NLP         |
-- | Nitish Kumar             | Control     |
-- | Mithlesh Kumar           | Electro     |
-- | Raushan Anand            | Concrete    |
-- | Vicky Anand              | Hydrology   |
-- | Firoz Akhtar             | Manufact    |
-- | Rahul Ranjan Bharti      | AutoCAD     |
-- | Akhilesh Kumar           | CAD         |
-- | Kunal Kumar              | GIS         |
-- | Nishikant Kumar          | Python      |
-- | Pankaj Kumar             | WebTech     |
-- | Md Ehteshamoul Hoque     | Anim        |
-- | Praveen Kumar            | VFX         |
-- | Manisha Kumari Singh     | Render      |
-- +--------------------------+-------------+



/* =========================================================
   PART F — ANALYTICAL JOIN QUERIES
   ========================================================= */
/* 17. Number of students enrolled in each course */
SELECT C.Course_Name, COUNT(E.Student_ID) AS Total_Students
FROM Course C
INNER JOIN Enrollment E
ON C.Course_ID = E.Course_ID
GROUP BY C.Course_Name;

-- Output:
-- +-------------+----------------+
-- | Course_Name | Total_Students |
-- +-------------+----------------+
-- | DBMS        | 4              |
-- | OS          | 4              |
-- | CN          | 4              |
-- | SE          | 4              |
-- | DSA         | 4              |
-- | ML          | 4              |
-- | DL          | 4              |
-- | DataMining  | 4              |
-- | PythonAI    | 4              |
-- | NLP         | 4              |
-- | Circuit     | 4              |
-- | Machines    | 4              |
-- | PowerSys    | 4              |
-- | Control     | 4              |
-- | Electro     | 4              |
-- | Survey      | 4              |
-- | Soil        | 4              |
-- | Structure   | 4              |
-- | Concrete    | 4              |
-- | Hydrology   | 4              |
-- | Thermo      | 4              |
-- | Fluid       | 4              |
-- | Machine     | 4              |
-- | Manufact    | 4              |
-- | AutoCAD     | 4              |
-- | CAD         | 4              |
-- | GIS         | 4              |
-- | Python      | 4              |
-- | WebTech     | 4              |
-- | Graphics    | 4              |
-- | Anim        | 4              |
-- | Model3D     | 4              |
-- | VFX         | 4              |
-- | Render      | 4              |
-- +-------------+----------------+

/* 18. Number of courses taught by each faculty */
SELECT F.Name, COUNT(C.Course_ID) AS Total_Courses
FROM Faculty F
INNER JOIN Course C
ON F.Faculty_ID = C.Faculty_ID
GROUP BY F.Name;

-- Output:
-- +--------------------------+---------------+
-- | Name                     | Total_Courses |
-- +--------------------------+---------------+
-- | Murlidhar Prasad Singh   | 2             |
-- | Md Ehtashamoul Haque     | 1             |
-- | Amit Kumar               | 1             |
-- | Md Izhar                 | 2             |
-- | Manisha Kumari Singh     | 3             |
-- | Md Ehteshamoul Hoque     | 2             |
-- | Sujeet Kumar             | 2             |
-- | Praveen Kumar            | 2             |
-- | Hare Krishna Mishra      | 1             |
-- | Ashish Kumar Suman       | 1             |
-- | Mitesh Kumar             | 1             |
-- | Nitish Kumar             | 1             |
-- | Mithlesh Kumar           | 1             |
-- | Akhilesh Kumar           | 2             |
-- | Kunal Kumar              | 2             |
-- | Nishikant Kumar          | 2             |
-- | Raushan Anand            | 1             |
-- | Vicky Anand              | 2             |
-- | Arbind Kumar Amar        | 1             |
-- | Ajay Giri                | 1             |
-- | Uttam Kumar              | 1             |
-- | Firoz Akhtar             | 1             |
-- | Rahul Ranjan Bharti      | 1             |
-- | Pankaj Kumar             | 1             |
-- +--------------------------+---------------+

/* 19. Department-wise count of students */
SELECT D.Dept_Name, COUNT(S.Student_ID) AS Total_Students
FROM Department D
INNER JOIN Student S
ON D.Dept_ID = S.Dept_ID
GROUP BY D.Dept_Name;

-- Output:
-- +-------------+----------------+
-- | Dept_Name   | Total_Students |
-- +-------------+----------------+
-- | CSE         | 10             |
-- | CSE(AIML)   | 10             |
-- | EEE         | 10             |
-- | CE          | 10             |
-- | ME          | 10             |
-- | CEWCA       | 10             |
-- | 3DAG        | 10             |
-- +-------------+----------------+

/* 20. Course name with maximum grade awarded */
SELECT C.Course_Name, MAX(E.Grade) AS Max_Grade
FROM Course C
INNER JOIN Enrollment E
ON C.Course_ID = E.Course_ID
GROUP BY C.Course_Name;

-- Output:
-- +-------------+-----------+
-- | Course_Name | Max_Grade |
-- +-------------+-----------+
-- | DBMS        | B         |
-- | OS          | B         |
-- | CN          | B         |
-- | SE          | B         |
-- | DSA         | B         |
-- | ML          | B         |
-- | DL          | B         |
-- | DataMining  | B         |
-- | PythonAI    | B         |
-- | NLP         | B         |
-- | Circuit     | B         |
-- | Machines    | B         |
-- | PowerSys    | B         |
-- | Control     | B         |
-- | Electro     | B         |
-- | Survey      | B         |
-- | Soil        | B         |
-- | Structure   | B         |
-- | Concrete    | B         |
-- | Hydrology   | B         |
-- | Thermo      | B         |
-- | Fluid       | B         |
-- | Machine     | B         |
-- | Manufact    | B         |
-- | AutoCAD     | B         |
-- | CAD         | B         |
-- | GIS         | B         |
-- | Python      | B         |
-- | WebTech     | B         |
-- | Graphics    | B         |
-- | Anim        | B         |
-- | Model3D     | B         |
-- | VFX         | B         |
-- | Render      | B         |
-- +-------------+-----------+
