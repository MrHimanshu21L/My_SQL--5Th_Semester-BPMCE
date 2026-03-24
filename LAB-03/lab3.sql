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

-- Departmenat fill

INSERT INTO Department VALUES ('D001','CSE','Block A');
INSERT INTO Department VALUES ('D002','CSE(AIML)','Block B');
INSERT INTO Department VALUES ('D003','EEE','Block C');
INSERT INTO Department VALUES ('D004','CE','Block D');
INSERT INTO Department VALUES ('D005','ME','Block E');
INSERT INTO Department VALUES ('D006','CEWCA','Block E');
INSERT INTO Department VALUES ('D009','3DAG','Block F');


-- Faculty wala

-- ===============================
-- CSE Department Faculty (D001)
-- ===============================

INSERT INTO Faculty VALUES ('F101','Murlidhar Prasad Singh','AsstPro HoD','singhmurlidhar@gmail.com','D001');
INSERT INTO Faculty VALUES ('F102','Md Ehtashamoul Haque','Asst Pro','ehtasham47@gmail.com','D001');
INSERT INTO Faculty VALUES ('F103','Amit Kumar','Asst Pro','amitbcebhagalpur@gmail.com','D001');
INSERT INTO Faculty VALUES ('F104','Md Izhar','Asst Pro','mdizhar1996@gmail.com','D001');
INSERT INTO Faculty VALUES ('F105','Manisha Kumari Singh','Asst Pro','manisha.ks241@gmail.com','D001');


-- ==================================
-- CSE(AIML) Department Faculty (D002)
-- ==================================

INSERT INTO Faculty VALUES ('F201','Md Ehteshamoul Hoque','AsstPro HoD','ehtasham47@gmail.com','D002');
INSERT INTO Faculty VALUES ('F202','Sujeet Kumar','Asst Pro','ksujeet.cs@gmail.com','D002');
INSERT INTO Faculty VALUES ('F203','Praveen Kumar','Asst Pro','praveenkumaryadav782@gmail.com','D002');
INSERT INTO Faculty VALUES ('F204','Manisha Kumari Singh','Asst Pro','manisha.ks241@gmail.com','D002');
INSERT INTO Faculty VALUES ('F205','Md Izhar','Asst Pro','mdizhar1996@gmail.com','D002');


-- ===============================
-- EEE Department Faculty (D003)
-- ===============================

INSERT INTO Faculty VALUES ('F301','Hare Krishna Mishra','Asst Pro','hare.dbit@gmail.com','D003');
INSERT INTO Faculty VALUES ('F302','Ashish Kumar Suman','Asst Pro','sumanashish.rkt@gmail.com','D003');
INSERT INTO Faculty VALUES ('F303','Mitesh Kumar','Asst Pro','mitesh.sva@gmail.com','D003');
INSERT INTO Faculty VALUES ('F304','Nitish Kumar','Asst Pro','nitianj@gmail.com','D003');
INSERT INTO Faculty VALUES ('F305','Mithlesh Kumar','AsstPro HoD','bpmceeee110@gmail.com','D003');


-- ===============================
-- CE (Civil) Department Faculty (D004)
-- ===============================

INSERT INTO Faculty VALUES ('F401','Akhilesh Kumar','Asst Pro','akhileshkumar3804@gmail.com','D004');
INSERT INTO Faculty VALUES ('F402','Kunal Kumar','AsstPro HoD','kunal1989kumar@gmail.com','D004');
INSERT INTO Faculty VALUES ('F403','Nishikant Kumar','Asst Pro','nishikantbpmce32@gmail.com','D004');
INSERT INTO Faculty VALUES ('F404','Raushan Anand','Asst Pro','raushanbpmc@gmail.com','D004');
INSERT INTO Faculty VALUES ('F405','Vicky Anand','Asst Pro','Vickya.pg18.ce@Nitp.ac.in','D004');


-- ===============================
-- ME Department Faculty (D005)
-- ===============================

INSERT INTO Faculty VALUES ('F601','Arbind Kumar Amar','PrincipalIC','ak_amar73@yahoo.com','D005');
INSERT INTO Faculty VALUES ('F602','Ajay Giri','AsstPro HoD','ajay_giri05@rediffmail.com','D005');
INSERT INTO Faculty VALUES ('F603','Uttam Kumar','Asst Pro','uttamiitp1@gmail.com','D005');
INSERT INTO Faculty VALUES ('F604','Firoz Akhtar','Asst Pro','firozakhtar1581@gmail.com','D005');
INSERT INTO Faculty VALUES ('F605','Rahul Ranjan Bharti','Asst Pro','15rahulbharti@gmail.com','D005');


-- ===============================
-- CEWCA Department Faculty (D006)
-- ===============================

INSERT INTO Faculty VALUES ('F501','Akhilesh Kumar','AsstPro HoD','akhileshkumar3804@gmail.com','D006');
INSERT INTO Faculty VALUES ('F502','Kunal Kumar','Asst Pro','kunal1989kumar@gmail.com','D006');
INSERT INTO Faculty VALUES ('F503','Nishikant Kumar','Asst Pro','nishikantbpmce32@gmail.com','D006');
INSERT INTO Faculty VALUES ('F504','Vicky Anand','Asst Pro','Vickya.pg18@Nitp.ac.in','D006');
INSERT INTO Faculty VALUES ('F505','Pankaj Kumar','Asst Pro','pankajkumarpk8888@gmail.com','D006');


-- ===============================
-- 3DAG Department Faculty (D009)
-- ===============================

INSERT INTO Faculty VALUES ('F901','Murlidhar Prasad Singh','AsstPro HoD','singhmurlidhar@gmail.com','D009');
INSERT INTO Faculty VALUES ('F902','Md Ehteshamoul Hoque','Asst Pro','ehtasham47@gmail.com','D009');
INSERT INTO Faculty VALUES ('F903','Sujeet Kumar','Asst Pro','ksujeet.cs@gmail.com','D009');
INSERT INTO Faculty VALUES ('F904','Praveen Kumar','Asst Pro','praveenkumaryadav782@gmail.com','D009');
INSERT INTO Faculty VALUES ('F905','Manisha Kumari Singh','Asst Pro','manisha.ks241@gmail.com','D009');

-- Now Students ka data

-- =================================
-- CSE Department Students (D001)
-- =================================

INSERT INTO Student VALUES ('S101','Rahul Kumar',TO_DATE('12-01-2004','DD-MM-YYYY'),'Male',9123456781,'D001');
INSERT INTO Student VALUES ('S102','Aman Singh',TO_DATE('22-03-2004','DD-MM-YYYY'),'Male',9234567812,'D001');
INSERT INTO Student VALUES ('S103','Priya Sharma',TO_DATE('10-02-2004','DD-MM-YYYY'),'Female',9345678123,'D001');
INSERT INTO Student VALUES ('S104','Neha Kumari',TO_DATE('17-05-2004','DD-MM-YYYY'),'Female',9456781234,'D001');
INSERT INTO Student VALUES ('S105','Vikas Raj',TO_DATE('01-07-2004','DD-MM-YYYY'),'Male',9567812345,'D001');
INSERT INTO Student VALUES ('S106','Pooja Singh',TO_DATE('11-04-2004','DD-MM-YYYY'),'Female',9678123456,'D001');
INSERT INTO Student VALUES ('S107','Rohit Yadav',TO_DATE('19-08-2004','DD-MM-YYYY'),'Male',9781234567,'D001');
INSERT INTO Student VALUES ('S108','Soni Kumari',TO_DATE('09-09-2004','DD-MM-YYYY'),'Female',9892345678,'D001');
INSERT INTO Student VALUES ('S109','Deepak Kumar',TO_DATE('25-06-2004','DD-MM-YYYY'),'Male',9913456789,'D001');
INSERT INTO Student VALUES ('S110','Anjali Verma',TO_DATE('30-11-2004','DD-MM-YYYY'),'Female',9024567891,'D001');


-- =================================
-- CSE(AIML) Department Students (D002)
-- =================================

INSERT INTO Student VALUES ('S201','Aditya Kumar',TO_DATE('15-02-2004','DD-MM-YYYY'),'Male',9135678912,'D002');
INSERT INTO Student VALUES ('S202','Riya Sharma',TO_DATE('19-03-2004','DD-MM-YYYY'),'Female',9246789123,'D002');
INSERT INTO Student VALUES ('S203','Kunal Singh',TO_DATE('05-05-2004','DD-MM-YYYY'),'Male',9357891234,'D002');
INSERT INTO Student VALUES ('S204','Sneha Kumari',TO_DATE('18-06-2004','DD-MM-YYYY'),'Female',9468912345,'D002');
INSERT INTO Student VALUES ('S205','Harsh Raj',TO_DATE('27-07-2004','DD-MM-YYYY'),'Male',9579123456,'D002');
INSERT INTO Student VALUES ('S206','Komal Singh',TO_DATE('11-08-2004','DD-MM-YYYY'),'Female',9681234567,'D002');
INSERT INTO Student VALUES ('S207','Nitesh Kumar',TO_DATE('03-01-2004','DD-MM-YYYY'),'Male',9792345678,'D002');
INSERT INTO Student VALUES ('S208','Shivani Singh',TO_DATE('14-09-2004','DD-MM-YYYY'),'Female',9813456789,'D002');
INSERT INTO Student VALUES ('S209','Abhishek Raj',TO_DATE('21-10-2004','DD-MM-YYYY'),'Male',9924567891,'D002');
INSERT INTO Student VALUES ('S210','Muskan Kumari',TO_DATE('02-12-2004','DD-MM-YYYY'),'Female',9035678912,'D002');


-- =================================
-- EEE Department Students (D003)
-- =================================

INSERT INTO Student VALUES ('S301','Kishan Kumar',TO_DATE('08-01-2004','DD-MM-YYYY'),'Male',9179123456,'D003');
INSERT INTO Student VALUES ('S302','Ranjan Singh',TO_DATE('14-02-2004','DD-MM-YYYY'),'Male',9281234567,'D003');
INSERT INTO Student VALUES ('S303','Neetu Kumari',TO_DATE('18-03-2004','DD-MM-YYYY'),'Female',9392345678,'D003');
INSERT INTO Student VALUES ('S304','Sandeep Kumar',TO_DATE('27-04-2004','DD-MM-YYYY'),'Male',9413456789,'D003');
INSERT INTO Student VALUES ('S305','Sarla Kumari',TO_DATE('05-05-2004','DD-MM-YYYY'),'Female',9524567891,'D003');
INSERT INTO Student VALUES ('S306','Ravi Raj',TO_DATE('09-06-2004','DD-MM-YYYY'),'Male',9635678912,'D003');
INSERT INTO Student VALUES ('S307','Pinky Kumari',TO_DATE('12-07-2004','DD-MM-YYYY'),'Female',9746789123,'D003');
INSERT INTO Student VALUES ('S308','Manoj Kumar',TO_DATE('19-08-2004','DD-MM-YYYY'),'Male',9857891234,'D003');
INSERT INTO Student VALUES ('S309','Seema Singh',TO_DATE('25-09-2004','DD-MM-YYYY'),'Female',9968912345,'D003');
INSERT INTO Student VALUES ('S310','Ashok Kumar',TO_DATE('03-10-2004','DD-MM-YYYY'),'Male',9079123456,'D003');


-- =================================
-- CE (Civil) Department Students (D004)
-- =================================

INSERT INTO Student VALUES ('S401','Manish Kumar',TO_DATE('08-02-2004','DD-MM-YYYY'),'Male',9146789123,'D004');
INSERT INTO Student VALUES ('S402','Ravi Kumar',TO_DATE('18-03-2004','DD-MM-YYYY'),'Male',9257891234,'D004');
INSERT INTO Student VALUES ('S403','Priti Kumari',TO_DATE('21-04-2004','DD-MM-YYYY'),'Female',9368912345,'D004');
INSERT INTO Student VALUES ('S404','Sunil Yadav',TO_DATE('25-05-2004','DD-MM-YYYY'),'Male',9479123456,'D004');
INSERT INTO Student VALUES ('S405','Anita Kumari',TO_DATE('29-06-2004','DD-MM-YYYY'),'Female',9581234567,'D004');
INSERT INTO Student VALUES ('S406','Vivek Singh',TO_DATE('12-07-2004','DD-MM-YYYY'),'Male',9692345678,'D004');
INSERT INTO Student VALUES ('S407','Rakesh Kumar',TO_DATE('15-08-2004','DD-MM-YYYY'),'Male',9713456789,'D004');
INSERT INTO Student VALUES ('S408','Kavita Sharma',TO_DATE('22-09-2004','DD-MM-YYYY'),'Female',9824567891,'D004');
INSERT INTO Student VALUES ('S409','Mukesh Kumar',TO_DATE('11-10-2004','DD-MM-YYYY'),'Male',9935678912,'D004');
INSERT INTO Student VALUES ('S410','Suman Kumari',TO_DATE('09-12-2004','DD-MM-YYYY'),'Female',9046789123,'D004');


-- =================================
-- ME Department Students (D005)  ✔ FIXED
-- =================================

INSERT INTO Student VALUES ('S601','Ankit Kumar',TO_DATE('10-02-2004','DD-MM-YYYY'),'Male',9168912345,'D005');
INSERT INTO Student VALUES ('S602','Rohit Singh',TO_DATE('16-03-2004','DD-MM-YYYY'),'Male',9279123456,'D005');
INSERT INTO Student VALUES ('S603','Komal Kumari',TO_DATE('18-04-2004','DD-MM-YYYY'),'Female',9381234567,'D005');
INSERT INTO Student VALUES ('S604','Shubham Raj',TO_DATE('21-05-2004','DD-MM-YYYY'),'Male',9492345678,'D005');
INSERT INTO Student VALUES ('S605','Meena Kumari',TO_DATE('07-06-2004','DD-MM-YYYY'),'Female',9513456789,'D005');
INSERT INTO Student VALUES ('S606','Ritesh Kumar',TO_DATE('25-07-2004','DD-MM-YYYY'),'Male',9624567891,'D005');
INSERT INTO Student VALUES ('S607','Vandana Singh',TO_DATE('28-08-2004','DD-MM-YYYY'),'Female',9735678912,'D005');
INSERT INTO Student VALUES ('S608','Arun Kumar',TO_DATE('11-09-2004','DD-MM-YYYY'),'Male',9846789123,'D005');
INSERT INTO Student VALUES ('S609','Rekha Kumari',TO_DATE('13-10-2004','DD-MM-YYYY'),'Female',9957891234,'D005');
INSERT INTO Student VALUES ('S610','Dilip Kumar',TO_DATE('19-12-2004','DD-MM-YYYY'),'Male',9068912345,'D005');


-- =================================
-- CEWCA Department Students (D006) ✔ FIXED
-- =================================

INSERT INTO Student VALUES ('S501','Saurabh Kumar',TO_DATE('17-01-2004','DD-MM-YYYY'),'Male',9157891234,'D006');
INSERT INTO Student VALUES ('S502','Ritu Kumari',TO_DATE('23-02-2004','DD-MM-YYYY'),'Female',9268912345,'D006');
INSERT INTO Student VALUES ('S503','Gaurav Singh',TO_DATE('12-03-2004','DD-MM-YYYY'),'Male',9379123456,'D006');
INSERT INTO Student VALUES ('S504','Pallavi Sharma',TO_DATE('06-04-2004','DD-MM-YYYY'),'Female',9481234567,'D006');
INSERT INTO Student VALUES ('S505','Nikhil Raj',TO_DATE('29-05-2004','DD-MM-YYYY'),'Male',9592345678,'D006');
INSERT INTO Student VALUES ('S506','Jyoti Kumari',TO_DATE('14-06-2004','DD-MM-YYYY'),'Female',9613456789,'D006');
INSERT INTO Student VALUES ('S507','Ankur Kumar',TO_DATE('20-07-2004','DD-MM-YYYY'),'Male',9724567891,'D006');
INSERT INTO Student VALUES ('S508','Rashmi Singh',TO_DATE('05-08-2004','DD-MM-YYYY'),'Female',9835678912,'D006');
INSERT INTO Student VALUES ('S509','Prakash Kumar',TO_DATE('09-09-2004','DD-MM-YYYY'),'Male',9946789123,'D006');
INSERT INTO Student VALUES ('S510','Shalini Kumari',TO_DATE('30-10-2004','DD-MM-YYYY'),'Female',9057891234,'D006');


-- =================================
-- 3DAG Department Students (D009)
-- =================================

INSERT INTO Student VALUES ('S901','Ravi Kumar',TO_DATE('13-01-2004','DD-MM-YYYY'),'Male',9181234567,'D009');
INSERT INTO Student VALUES ('S902','Neha Kumari',TO_DATE('19-02-2004','DD-MM-YYYY'),'Female',9292345678,'D009');
INSERT INTO Student VALUES ('S903','Arvind Raj',TO_DATE('21-03-2004','DD-MM-YYYY'),'Male',9313456789,'D009');
INSERT INTO Student VALUES ('S904','Pooja Singh',TO_DATE('24-04-2004','DD-MM-YYYY'),'Female',9424567891,'D009');
INSERT INTO Student VALUES ('S905','Vikash Kumar',TO_DATE('29-05-2004','DD-MM-YYYY'),'Male',9535678912,'D009');
INSERT INTO Student VALUES ('S906','Suman Kumari',TO_DATE('11-06-2004','DD-MM-YYYY'),'Female',9646789123,'D009');
INSERT INTO Student VALUES ('S907','Rajesh Kumar',TO_DATE('16-07-2004','DD-MM-YYYY'),'Male',9757891234,'D009');
INSERT INTO Student VALUES ('S908','Anjali Singh',TO_DATE('22-08-2004','DD-MM-YYYY'),'Female',9868912345,'D009');
INSERT INTO Student VALUES ('S909','Kundan Kumar',TO_DATE('27-09-2004','DD-MM-YYYY'),'Male',9979123456,'D009');
INSERT INTO Student VALUES ('S910','Ritu Kumari',TO_DATE('01-11-2004','DD-MM-YYYY'),'Female',9081234567,'D009');


-- =================================
-- CSE Department Courses (D001)
-- =================================

INSERT INTO Course VALUES ('C101','DBMS',4,'D001','F101');
INSERT INTO Course VALUES ('C102','OS',4,'D001','F102');
INSERT INTO Course VALUES ('C103','CN',4,'D001','F103');
INSERT INTO Course VALUES ('C104','SE',3,'D001','F104');
INSERT INTO Course VALUES ('C105','DSA',4,'D001','F105');


-- =================================
-- CSE(AIML) Department Courses (D002)
-- =================================

INSERT INTO Course VALUES ('C201','ML',4,'D002','F201');
INSERT INTO Course VALUES ('C202','DL',4,'D002','F202');
INSERT INTO Course VALUES ('C203','DataMining',4,'D002','F203');
INSERT INTO Course VALUES ('C204','PythonAI',3,'D002','F204');
INSERT INTO Course VALUES ('C205','NLP',3,'D002','F205');


-- =================================
-- EEE Department Courses (D003)
-- =================================

INSERT INTO Course VALUES ('C301','Circuit',4,'D003','F301');
INSERT INTO Course VALUES ('C302','Machines',4,'D003','F302');
INSERT INTO Course VALUES ('C303','PowerSys',4,'D003','F303');
INSERT INTO Course VALUES ('C304','Control',3,'D003','F304');
INSERT INTO Course VALUES ('C305','Electro',3,'D003','F305');


-- =================================
-- CE (Civil) Department Courses (D004)
-- =================================

INSERT INTO Course VALUES ('C401','Survey',4,'D004','F401');
INSERT INTO Course VALUES ('C402','Soil',4,'D004','F402');
INSERT INTO Course VALUES ('C403','Structure',4,'D004','F403');
INSERT INTO Course VALUES ('C404','Concrete',3,'D004','F404');
INSERT INTO Course VALUES ('C405','Hydrology',3,'D004','F405');


-- =================================
-- ME Department Courses (D005)  ✔ FIXED
-- =================================

INSERT INTO Course VALUES ('C601','Thermo',4,'D005','F601');
INSERT INTO Course VALUES ('C602','Fluid',4,'D005','F602');
INSERT INTO Course VALUES ('C603','Machine',4,'D005','F603');
INSERT INTO Course VALUES ('C604','Manufact',3,'D005','F604');
INSERT INTO Course VALUES ('C605','AutoCAD',3,'D005','F605');


-- =================================
-- CEWCA Department Courses (D006) ✔ FIXED
-- =================================

INSERT INTO Course VALUES ('C501','CAD',3,'D006','F501');
INSERT INTO Course VALUES ('C502','GIS',3,'D006','F502');
INSERT INTO Course VALUES ('C503','Python',3,'D006','F503');
INSERT INTO Course VALUES ('C504','DBMS',4,'D006','F504');
INSERT INTO Course VALUES ('C505','WebTech',3,'D006','F505');


-- =================================
-- 3DAG Department Courses (D009)
-- =================================

INSERT INTO Course VALUES ('C901','Graphics',4,'D009','F901');
INSERT INTO Course VALUES ('C902','Anim',3,'D009','F902');
INSERT INTO Course VALUES ('C903','Model3D',4,'D009','F903');
INSERT INTO Course VALUES ('C904','VFX',3,'D009','F904');
INSERT INTO Course VALUES ('C905','Render',3,'D009','F905');
-- Enrollment waala


-- =================================
-- CSE Enrollment (D001)
-- =================================

INSERT INTO Enrollment VALUES ('S101','C101','S1','A');
INSERT INTO Enrollment VALUES ('S102','C102','S2','B');
INSERT INTO Enrollment VALUES ('S103','C103','S3','A');
INSERT INTO Enrollment VALUES ('S104','C104','S4','B');
INSERT INTO Enrollment VALUES ('S105','C105','S5','A');
INSERT INTO Enrollment VALUES ('S106','C101','S6','B');
INSERT INTO Enrollment VALUES ('S107','C102','S7','A');
INSERT INTO Enrollment VALUES ('S108','C103','S8','B');
INSERT INTO Enrollment VALUES ('S109','C104','S2','A');
INSERT INTO Enrollment VALUES ('S110','C105','S4','B');


-- =================================
-- CSE(AIML) Enrollment (D002)
-- =================================

INSERT INTO Enrollment VALUES ('S201','C201','S1','A');
INSERT INTO Enrollment VALUES ('S202','C202','S2','B');
INSERT INTO Enrollment VALUES ('S203','C203','S3','A');
INSERT INTO Enrollment VALUES ('S204','C204','S4','B');
INSERT INTO Enrollment VALUES ('S205','C205','S5','A');
INSERT INTO Enrollment VALUES ('S206','C201','S6','B');
INSERT INTO Enrollment VALUES ('S207','C202','S7','A');
INSERT INTO Enrollment VALUES ('S208','C203','S8','B');
INSERT INTO Enrollment VALUES ('S209','C204','S2','A');
INSERT INTO Enrollment VALUES ('S210','C205','S5','B');


-- =================================
-- EEE Enrollment (D003)
-- =================================

INSERT INTO Enrollment VALUES ('S301','C301','S1','A');
INSERT INTO Enrollment VALUES ('S302','C302','S2','B');
INSERT INTO Enrollment VALUES ('S303','C303','S3','A');
INSERT INTO Enrollment VALUES ('S304','C304','S4','B');
INSERT INTO Enrollment VALUES ('S305','C305','S5','A');
INSERT INTO Enrollment VALUES ('S306','C301','S6','B');
INSERT INTO Enrollment VALUES ('S307','C302','S7','A');
INSERT INTO Enrollment VALUES ('S308','C303','S8','B');
INSERT INTO Enrollment VALUES ('S309','C304','S3','A');
INSERT INTO Enrollment VALUES ('S310','C305','S6','B');


-- =================================
-- CE (Civil) Enrollment (D004)
-- =================================

INSERT INTO Enrollment VALUES ('S401','C401','S1','A');
INSERT INTO Enrollment VALUES ('S402','C402','S2','B');
INSERT INTO Enrollment VALUES ('S403','C403','S3','A');
INSERT INTO Enrollment VALUES ('S404','C404','S4','B');
INSERT INTO Enrollment VALUES ('S405','C405','S5','A');
INSERT INTO Enrollment VALUES ('S406','C401','S6','B');
INSERT INTO Enrollment VALUES ('S407','C402','S7','A');
INSERT INTO Enrollment VALUES ('S408','C403','S8','B');
INSERT INTO Enrollment VALUES ('S409','C404','S4','A');
INSERT INTO Enrollment VALUES ('S410','C405','S7','B');


-- =================================
-- ME Enrollment (D005)
-- =================================

INSERT INTO Enrollment VALUES ('S601','C601','S1','A');
INSERT INTO Enrollment VALUES ('S602','C602','S2','B');
INSERT INTO Enrollment VALUES ('S603','C603','S3','A');
INSERT INTO Enrollment VALUES ('S604','C604','S4','B');
INSERT INTO Enrollment VALUES ('S605','C605','S5','A');
INSERT INTO Enrollment VALUES ('S606','C601','S6','B');
INSERT INTO Enrollment VALUES ('S607','C602','S7','A');
INSERT INTO Enrollment VALUES ('S608','C603','S8','B');
INSERT INTO Enrollment VALUES ('S609','C604','S5','A');
INSERT INTO Enrollment VALUES ('S610','C605','S2','B');


-- =================================
-- CEWCA Enrollment (D006)
-- =================================

INSERT INTO Enrollment VALUES ('S501','C501','S1','A');
INSERT INTO Enrollment VALUES ('S502','C502','S2','B');
INSERT INTO Enrollment VALUES ('S503','C503','S3','A');
INSERT INTO Enrollment VALUES ('S504','C504','S4','B');
INSERT INTO Enrollment VALUES ('S505','C505','S5','A');
INSERT INTO Enrollment VALUES ('S506','C501','S6','B');
INSERT INTO Enrollment VALUES ('S507','C502','S7','A');
INSERT INTO Enrollment VALUES ('S508','C503','S8','B');
INSERT INTO Enrollment VALUES ('S509','C504','S6','A');
INSERT INTO Enrollment VALUES ('S510','C505','S3','B');


-- =================================
-- 3DAG Enrollment (D009)
-- =================================

INSERT INTO Enrollment VALUES ('S901','C901','S1','A');
INSERT INTO Enrollment VALUES ('S902','C902','S2','B');
INSERT INTO Enrollment VALUES ('S903','C903','S3','A');
INSERT INTO Enrollment VALUES ('S904','C904','S4','B');
INSERT INTO Enrollment VALUES ('S905','C905','S5','A');
INSERT INTO Enrollment VALUES ('S906','C901','S6','B');
INSERT INTO Enrollment VALUES ('S907','C902','S7','A');
INSERT INTO Enrollment VALUES ('S908','C903','S8','B');
INSERT INTO Enrollment VALUES ('S909','C904','S7','A');
INSERT INTO Enrollment VALUES ('S910','C905','S2','B');

-- data dekhne ke kiye

SELECT * FROM Department;
-- Dept_ID | Dept_Name   | Office_Location
-- ---------------------------------------
-- D001    | CSE         | Block A
-- D002    | CSE(AIML)   | Block B
-- D003    | EEE         | Block C
-- D004    | CE          | Block D
-- D005    | ME          | Block E
-- D006    | CEWCA       | Block E
-- D009    | 3DAG        | Block F



SELECT * FROM Faculty;
-- Faculty_ID | Name                      | Designation   | Email                          | Dept_ID
-- --------------------------------------------------------------------------------------------
-- F101       | Murlidhar Prasad Singh    | AsstPro HoD   | singhmurlidhar@gmail.com       | D001
-- F102       | Md Ehtashamoul Haque      | Asst Pro      | ehtasham47@gmail.com           | D001
-- F103       | Amit Kumar                | Asst Pro      | amitbcebhagalpur@gmail.com     | D001
-- F104       | Md Izhar                  | Asst Pro      | mdizhar1996@gmail.com          | D001
-- F105       | Manisha Kumari Singh      | Asst Pro      | manisha.ks241@gmail.com        | D001

-- F201       | Md Ehteshamoul Hoque      | AsstPro HoD   | ehtasham47@gmail.com           | D002
-- F202       | Sujeet Kumar              | Asst Pro      | ksujeet.cs@gmail.com           | D002
-- F203       | Praveen Kumar             | Asst Pro      | praveenkumaryadav782@gmail.com | D002
-- F204       | Manisha Kumari Singh      | Asst Pro      | manisha.ks241@gmail.com        | D002
-- F205       | Md Izhar                  | Asst Pro      | mdizhar1996@gmail.com          | D002

-- F301       | Hare Krishna Mishra       | Asst Pro      | hare.dbit@gmail.com            | D003
-- F302       | Ashish Kumar Suman        | Asst Pro      | sumanashish.rkt@gmail.com      | D003
-- F303       | Mitesh Kumar              | Asst Pro      | mitesh.sva@gmail.com           | D003
-- F304       | Nitish Kumar              | Asst Pro      | nitianj@gmail.com              | D003
-- F305       | Mithlesh Kumar            | AsstPro HoD   | bpmceeee110@gmail.com          | D003

-- F401       | Akhilesh Kumar            | Asst Pro      | akhileshkumar3804@gmail.com    | D004
-- F402       | Kunal Kumar               | AsstPro HoD   | kunal1989kumar@gmail.com       | D004
-- F403       | Nishikant Kumar           | Asst Pro      | nishikantbpmce32@gmail.com     | D004
-- F404       | Raushan Anand             | Asst Pro      | raushanbpmc@gmail.com          | D004
-- F405       | Vicky Anand               | Asst Pro      | Vickya.pg18.ce@Nitp.ac.in      | D004

-- F601       | Arbind Kumar Amar         | PrincipalIC   | ak_amar73@yahoo.com            | D005
-- F602       | Ajay Giri                 | AsstPro HoD   | ajay_giri05@rediffmail.com     | D005
-- F603       | Uttam Kumar               | Asst Pro      | uttamiitp1@gmail.com           | D005
-- F604       | Firoz Akhtar              | Asst Pro      | firozakhtar1581@gmail.com      | D005
-- F605       | Rahul Ranjan Bharti       | Asst Pro      | 15rahulbharti@gmail.com        | D005

-- F501       | Akhilesh Kumar            | AsstPro HoD   | akhileshkumar3804@gmail.com    | D006
-- F502       | Kunal Kumar               | Asst Pro      | kunal1989kumar@gmail.com       | D006
-- F503       | Nishikant Kumar           | Asst Pro      | nishikantbpmce32@gmail.com     | D006
-- F504       | Vicky Anand               | Asst Pro      | Vickya.pg18@Nitp.ac.in         | D006
-- F505       | Pankaj Kumar              | Asst Pro      | pankajkumarpk8888@gmail.com    | D006

-- F901       | Murlidhar Prasad Singh    | AsstPro HoD   | singhmurlidhar@gmail.com       | D009
-- F902       | Md Ehteshamoul Hoque      | Asst Pro      | ehtasham47@gmail.com           | D009
-- F903       | Sujeet Kumar              | Asst Pro      | ksujeet.cs@gmail.com           | D009
-- F904       | Praveen Kumar             | Asst Pro      | praveenkumaryadav782@gmail.com | D009
-- F905       | Manisha Kumari Singh      | Asst Pro      | manisha.ks241@gmail.com        | D009



SELECT * FROM Course;
-- Course_ID | Course_Name | Credits | Dept_ID | Faculty_ID
-- --------------------------------------------------------
-- C101      | DBMS        | 4       | D001    | F101
-- C102      | OS          | 4       | D001    | F102
-- C103      | CN          | 4       | D001    | F103
-- C104      | SE          | 3       | D001    | F104
-- C105      | DSA         | 4       | D001    | F105

-- C201      | ML          | 4       | D002    | F201
-- C202      | DL          | 4       | D002    | F202
-- C203      | DataMining  | 4       | D002    | F203
-- C204      | PythonAI    | 3       | D002    | F204
-- C205      | NLP         | 3       | D002    | F205

-- C301      | Circuit     | 4       | D003    | F301
-- C302      | Machines    | 4       | D003    | F302
-- C303      | PowerSys    | 4       | D003    | F303
-- C304      | Control     | 3       | D003    | F304
-- C305      | Electro     | 3       | D003    | F305

-- C401      | Survey      | 4       | D004    | F401
-- C402      | Soil        | 4       | D004    | F402
-- C403      | Structure   | 4       | D004    | F403
-- C404      | Concrete    | 3       | D004    | F404
-- C405      | Hydrology   | 3       | D004    | F405

-- C601      | Thermo      | 4       | D005    | F601
-- C602      | Fluid       | 4       | D005    | F602
-- C603      | Machine     | 4       | D005    | F603
-- C604      | Manufact    | 3       | D005    | F604
-- C605      | AutoCAD     | 3       | D005    | F605

-- C501      | CAD         | 3       | D006    | F501
-- C502      | GIS         | 3       | D006    | F502
-- C503      | Python      | 3       | D006    | F503
-- C504      | DBMS        | 4       | D006    | F504
-- C505      | WebTech     | 3       | D006    | F505

-- C901      | Graphics    | 4       | D009    | F901
-- C902      | Anim        | 3       | D009    | F902
-- C903      | Model3D     | 4       | D009    | F903
-- C904      | VFX         | 3       | D009    | F904
-- C905      | Render      | 3       | D009    | F905


SELECT * FROM Student;
-- Student_ID | Name             | DOB        | Gender | Contact_No | Dept_ID
-- -------------------------------------------------------------------------
-- S101       | Rahul Kumar      | 12-JAN-04  | Male   | 9123456781 | D001
-- S102       | Aman Singh       | 22-MAR-04  | Male   | 9234567812 | D001
-- S103       | Priya Sharma     | 10-FEB-04  | Female | 9345678123 | D001
-- S104       | Neha Kumari      | 17-MAY-04  | Female | 9456781234 | D001
-- S105       | Vikas Raj        | 01-JUL-04  | Male   | 9567812345 | D001
-- S106       | Pooja Singh      | 11-APR-04  | Female | 9678123456 | D001
-- S107       | Rohit Yadav      | 19-AUG-04  | Male   | 9781234567 | D001
-- S108       | Soni Kumari      | 09-SEP-04  | Female | 9892345678 | D001
-- S109       | Deepak Kumar     | 25-JUN-04  | Male   | 9913456789 | D001
-- S110       | Anjali Verma     | 30-NOV-04  | Female | 9024567891 | D001

-- S201       | Aditya Kumar     | 15-FEB-04  | Male   | 9135678912 | D002
-- S202       | Riya Sharma      | 19-MAR-04  | Female | 9246789123 | D002
-- S203       | Kunal Singh      | 05-MAY-04  | Male   | 9357891234 | D002
-- S204       | Sneha Kumari     | 18-JUN-04  | Female | 9468912345 | D002
-- S205       | Harsh Raj        | 27-JUL-04  | Male   | 9579123456 | D002
-- S206       | Komal Singh      | 11-AUG-04  | Female | 9681234567 | D002
-- S207       | Nitesh Kumar     | 03-JAN-04  | Male   | 9792345678 | D002
-- S208       | Shivani Singh    | 14-SEP-04  | Female | 9813456789 | D002
-- S209       | Abhishek Raj     | 21-OCT-04  | Male   | 9924567891 | D002
-- S210       | Muskan Kumari    | 02-DEC-04  | Female | 9035678912 | D002

-- S301       | Kishan Kumar     | 08-JAN-04  | Male   | 9179123456 | D003
-- S302       | Ranjan Singh     | 14-FEB-04  | Male   | 9281234567 | D003
-- S303       | Neetu Kumari     | 18-MAR-04  | Female | 9392345678 | D003
-- S304       | Sandeep Kumar    | 27-APR-04  | Male   | 9413456789 | D003
-- S305       | Sarla Kumari     | 05-MAY-04  | Female | 9524567891 | D003
-- S306       | Ravi Raj         | 09-JUN-04  | Male   | 9635678912 | D003
-- S307       | Pinky Kumari     | 12-JUL-04  | Female | 9746789123 | D003
-- S308       | Manoj Kumar      | 19-AUG-04  | Male   | 9857891234 | D003
-- S309       | Seema Singh      | 25-SEP-04  | Female | 9968912345 | D003
-- S310       | Ashok Kumar      | 03-OCT-04  | Male   | 9079123456 | D003

-- S401       | Manish Kumar     | 08-FEB-04  | Male   | 9146789123 | D004
-- S402       | Ravi Kumar       | 18-MAR-04  | Male   | 9257891234 | D004
-- S403       | Priti Kumari     | 21-APR-04  | Female | 9368912345 | D004
-- S404       | Sunil Yadav      | 25-MAY-04  | Male   | 9479123456 | D004
-- S405       | Anita Kumari     | 29-JUN-04  | Female | 9581234567 | D004
-- S406       | Vivek Singh      | 12-JUL-04  | Male   | 9692345678 | D004
-- S407       | Rakesh Kumar     | 15-AUG-04  | Male   | 9713456789 | D004
-- S408       | Kavita Sharma    | 22-SEP-04  | Female | 9824567891 | D004
-- S409       | Mukesh Kumar     | 11-OCT-04  | Male   | 9935678912 | D004
-- S410       | Suman Kumari     | 09-DEC-04  | Female | 9046789123 | D004

-- S601       | Ankit Kumar      | 10-FEB-04  | Male   | 9168912345 | D005
-- S602       | Rohit Singh      | 16-MAR-04  | Male   | 9279123456 | D005
-- S603       | Komal Kumari     | 18-APR-04  | Female | 9381234567 | D005
-- S604       | Shubham Raj      | 21-MAY-04  | Male   | 9492345678 | D005
-- S605       | Meena Kumari     | 07-JUN-04  | Female | 9513456789 | D005
-- S606       | Ritesh Kumar     | 25-JUL-04  | Male   | 9624567891 | D005
-- S607       | Vandana Singh    | 28-AUG-04  | Female | 9735678912 | D005
-- S608       | Arun Kumar       | 11-SEP-04  | Male   | 9846789123 | D005
-- S609       | Rekha Kumari     | 13-OCT-04  | Female | 9957891234 | D005
-- S610       | Dilip Kumar      | 19-DEC-04  | Male   | 9068912345 | D005

-- S501       | Saurabh Kumar    | 17-JAN-04  | Male   | 9157891234 | D006
-- S502       | Ritu Kumari      | 23-FEB-04  | Female | 9268912345 | D006
-- S503       | Gaurav Singh     | 12-MAR-04  | Male   | 9379123456 | D006
-- S504       | Pallavi Sharma   | 06-APR-04  | Female | 9481234567 | D006
-- S505       | Nikhil Raj       | 29-MAY-04  | Male   | 9592345678 | D006
-- S506       | Jyoti Kumari     | 14-JUN-04  | Female | 9613456789 | D006
-- S507       | Ankur Kumar      | 20-JUL-04  | Male   | 9724567891 | D006
-- S508       | Rashmi Singh     | 05-AUG-04  | Female | 9835678912 | D006
-- S509       | Prakash Kumar    | 09-SEP-04  | Male   | 9946789123 | D006
-- S510       | Shalini Kumari   | 30-OCT-04  | Female | 9057891234 | D006

-- S901       | Ravi Kumar       | 13-JAN-04  | Male   | 9181234567 | D009
-- S902       | Neha Kumari      | 19-FEB-04  | Female | 9292345678 | D009
-- S903       | Arvind Raj       | 21-MAR-04  | Male   | 9313456789 | D009
-- S904       | Pooja Singh      | 24-APR-04  | Female | 9424567891 | D009
-- S905       | Vikash Kumar     | 29-MAY-04  | Male   | 9535678912 | D009
-- S906       | Suman Kumari     | 11-JUN-04  | Female | 9646789123 | D009
-- S907       | Rajesh Kumar     | 16-JUL-04  | Male   | 9757891234 | D009
-- S908       | Anjali Singh     | 22-AUG-04  | Female | 9868912345 | D009
-- S909       | Kundan Kumar     | 27-SEP-04  | Male   | 9979123456 | D009
-- S910       | Ritu Kumari      | 01-NOV-04  | Female | 9081234567 | D009



SELECT * FROM Enrollment;
-- Student_ID | Course_ID | Semester | Grade
-- -----------------------------------------
-- S101       | C101      | S1       | A
-- S102       | C102      | S2       | B
-- S103       | C103      | S3       | A
-- S104       | C104      | S4       | B
-- S105       | C105      | S5       | A
-- S106       | C101      | S6       | B
-- S107       | C102      | S7       | A
-- S108       | C103      | S8       | B
-- S109       | C104      | S2       | A
-- S110       | C105      | S4       | B

-- S201       | C201      | S1       | A
-- S202       | C202      | S2       | B
-- S203       | C203      | S3       | A
-- S204       | C204      | S4       | B
-- S205       | C205      | S5       | A
-- S206       | C201      | S6       | B
-- S207       | C202      | S7       | A
-- S208       | C203      | S8       | B
-- S209       | C204      | S2       | A
-- S210       | C205      | S5       | B

-- S301       | C301      | S1       | A
-- S302       | C302      | S2       | B
-- S303       | C303      | S3       | A
-- S304       | C304      | S4       | B
-- S305       | C305      | S5       | A
-- S306       | C301      | S6       | B
-- S307       | C302      | S7       | A
-- S308       | C303      | S8       | B
-- S309       | C304      | S3       | A
-- S310       | C305      | S6       | B

-- S401       | C401      | S1       | A
-- S402       | C402      | S2       | B
-- S403       | C403      | S3       | A
-- S404       | C404      | S4       | B
-- S405       | C405      | S5       | A
-- S406       | C401      | S6       | B
-- S407       | C402      | S7       | A
-- S408       | C403      | S8       | B
-- S409       | C404      | S4       | A
-- S410       | C405      | S7       | B

-- S601       | C601      | S1       | A
-- S602       | C602      | S2       | B
-- S603       | C603      | S3       | A
-- S604       | C604      | S4       | B
-- S605       | C605      | S5       | A
-- S606       | C601      | S6       | B
-- S607       | C602      | S7       | A
-- S608       | C603      | S8       | B
-- S609       | C604      | S5       | A
-- S610       | C605      | S2       | B

-- S501       | C501      | S1       | A
-- S502       | C502      | S2       | B
-- S503       | C503      | S3       | A
-- S504       | C504      | S4       | B
-- S505       | C505      | S5       | A
-- S506       | C501      | S6       | B
-- S507       | C502      | S7       | A
-- S508       | C503      | S8       | B
-- S509       | C504      | S6       | A
-- S510       | C505      | S3       | B

-- S901       | C901      | S1       | A
-- S902       | C902      | S2       | B
-- S903       | C903      | S3       | A
-- S904       | C904      | S4       | B
-- S905       | C905      | S5       | A
-- S906       | C901      | S6       | B
-- S907       | C902      | S7       | A
-- S908       | C903      | S8       | B
-- S909       | C904      | S7       | A
-- S910       | C905      | S2       | B
