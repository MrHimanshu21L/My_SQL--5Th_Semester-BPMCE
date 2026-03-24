/* 
   EXPERIMENT: DATA RETRIEVAL USING SQL (READ ONLY QUERIES)
   PURPOSE: Practice SELECT queries without modifying data
    */


/* 
   PART A — BASIC DATA DISPLAY WITH ALIASES
    */

/* 1. Display all columns from Student with aliases */
SELECT 
    Student_ID AS Roll_No,
    Name AS Student_Name,
    DOB AS Date_of_Birth,
    Gender AS Gender,
    Contact_No AS Contact_Number,
    Dept_ID AS Department
FROM Student;

-- Roll_No | Student_Name      | Date_of_Birth | Gender | Contact_Number | Department
-- ------------------------------------------------------------------------------
-- S101    | Rahul Kumar       | 12-JAN-04     | Male   | 9123456781     | D001
-- S102    | Aman Singh        | 22-MAR-04     | Male   | 9234567812     | D001
-- S103    | Priya Sharma      | 10-FEB-04     | Female | 9345678123     | D001
-- S104    | Neha Kumari       | 17-MAY-04     | Female | 9456781234     | D001
-- S105    | Vikas Raj         | 01-JUL-04     | Male   | 9567812345     | D001
-- S106    | Pooja Singh       | 11-APR-04     | Female | 9678123456     | D001
-- S107    | Rohit Yadav       | 19-AUG-04     | Male   | 9781234567     | D001
-- S108    | Soni Kumari       | 09-SEP-04     | Female | 9892345678     | D001
-- S109    | Deepak Kumar      | 25-JUN-04     | Male   | 9913456789     | D001
-- S110    | Anjali Verma      | 30-NOV-04     | Female | 9024567891     | D001

-- S201    | Aditya Kumar      | 15-FEB-04     | Male   | 9135678912     | D002
-- S202    | Riya Sharma       | 19-MAR-04     | Female | 9246789123     | D002
-- S203    | Kunal Singh       | 05-MAY-04     | Male   | 9357891234     | D002
-- S204    | Sneha Kumari      | 18-JUN-04     | Female | 9468912345     | D002
-- S205    | Harsh Raj         | 27-JUL-04     | Male   | 9579123456     | D002
-- S206    | Komal Singh       | 11-AUG-04     | Female | 9681234567     | D002
-- S207    | Nitesh Kumar      | 03-JAN-04     | Male   | 9792345678     | D002
-- S208    | Shivani Singh     | 14-SEP-04     | Female | 9813456789     | D002
-- S209    | Abhishek Raj      | 21-OCT-04     | Male   | 9924567891     | D002
-- S210    | Muskan Kumari     | 02-DEC-04     | Female | 9035678912     | D002

-- S301    | Kishan Kumar      | 08-JAN-04     | Male   | 9179123456     | D003
-- S302    | Ranjan Singh      | 14-FEB-04     | Male   | 9281234567     | D003
-- S303    | Neetu Kumari      | 18-MAR-04     | Female | 9392345678     | D003
-- S304    | Sandeep Kumar     | 27-APR-04     | Male   | 9413456789     | D003
-- S305    | Sarla Kumari      | 05-MAY-04     | Female | 9524567891     | D003
-- S306    | Ravi Raj          | 09-JUN-04     | Male   | 9635678912     | D003
-- S307    | Pinky Kumari      | 12-JUL-04     | Female | 9746789123     | D003
-- S308    | Manoj Kumar       | 19-AUG-04     | Male   | 9857891234     | D003
-- S309    | Seema Singh       | 25-SEP-04     | Female | 9968912345     | D003
-- S310    | Ashok Kumar       | 03-OCT-04     | Male   | 9079123456     | D003

-- S401    | Manish Kumar      | 08-FEB-04     | Male   | 9146789123     | D004
-- S402    | Ravi Kumar        | 18-MAR-04     | Male   | 9257891234     | D004
-- S403    | Priti Kumari      | 21-APR-04     | Female | 9368912345     | D004
-- S404    | Sunil Yadav       | 25-MAY-04     | Male   | 9479123456     | D004
-- S405    | Anita Kumari      | 29-JUN-04     | Female | 9581234567     | D004
-- S406    | Vivek Singh       | 12-JUL-04     | Male   | 9692345678     | D004
-- S407    | Rakesh Kumar      | 15-AUG-04     | Male   | 9713456789     | D004
-- S408    | Kavita Sharma     | 22-SEP-04     | Female | 9824567891     | D004
-- S409    | Mukesh Kumar      | 11-OCT-04     | Male   | 9935678912     | D004
-- S410    | Suman Kumari      | 09-DEC-04     | Female | 9046789123     | D004

-- S601    | Ankit Kumar       | 10-FEB-04     | Male   | 9168912345     | D005
-- S602    | Rohit Singh       | 16-MAR-04     | Male   | 9279123456     | D005
-- S603    | Komal Kumari      | 18-APR-04     | Female | 9381234567     | D005
-- S604    | Shubham Raj       | 21-MAY-04     | Male   | 9492345678     | D005
-- S605    | Meena Kumari      | 07-JUN-04     | Female | 9513456789     | D005
-- S606    | Ritesh Kumar      | 25-JUL-04     | Male   | 9624567891     | D005
-- S607    | Vandana Singh     | 28-AUG-04     | Female | 9735678912     | D005
-- S608    | Arun Kumar        | 11-SEP-04     | Male   | 9846789123     | D005
-- S609    | Rekha Kumari      | 13-OCT-04     | Female | 9957891234     | D005
-- S610    | Dilip Kumar       | 19-DEC-04     | Male   | 9068912345     | D005

-- S501    | Saurabh Kumar     | 17-JAN-04     | Male   | 9157891234     | D006
-- S502    | Ritu Kumari       | 23-FEB-04     | Female | 9268912345     | D006
-- S503    | Gaurav Singh      | 12-MAR-04     | Male   | 9379123456     | D006
-- S504    | Pallavi Sharma    | 06-APR-04     | Female | 9481234567     | D006
-- S505    | Nikhil Raj        | 29-MAY-04     | Male   | 9592345678     | D006
-- S506    | Jyoti Kumari      | 14-JUN-04     | Female | 9613456789     | D006
-- S507    | Ankur Kumar       | 20-JUL-04     | Male   | 9724567891     | D006
-- S508    | Rashmi Singh      | 05-AUG-04     | Female | 9835678912     | D006
-- S509    | Prakash Kumar     | 09-SEP-04     | Male   | 9946789123     | D006
-- S510    | Shalini Kumari    | 30-OCT-04     | Female | 9057891234     | D006

-- S901    | Ravi Kumar        | 13-JAN-04     | Male   | 9181234567     | D009
-- S902    | Neha Kumari       | 19-FEB-04     | Female | 9292345678     | D009
-- S903    | Arvind Raj        | 21-MAR-04     | Male   | 9313456789     | D009
-- S904    | Pooja Singh       | 24-APR-04     | Female | 9424567891     | D009
-- S905    | Vikash Kumar      | 29-MAY-04     | Male   | 9535678912     | D009
-- S906    | Suman Kumari      | 11-JUN-04     | Female | 9646789123     | D009
-- S907    | Rajesh Kumar      | 16-JUL-04     | Male   | 9757891234     | D009
-- S908    | Anjali Singh      | 22-AUG-04     | Female | 9868912345     | D009
-- S909    | Kundan Kumar      | 27-SEP-04     | Male   | 9979123456     | D009
-- S910    | Ritu Kumari       | 01-NOV-04     | Female | 9081234567     | D009



/* 2. StudentID, Name, Dept */
SELECT 
    Student_ID AS Roll_No,
    Name AS Student_Name,
    Dept_ID
FROM Student;

-- Roll_No | Student_Name      | Dept_ID
-- ------------------------------------
-- S101    | Rahul Kumar       | D001
-- S102    | Aman Singh        | D001
-- S103    | Priya Sharma      | D001
-- S104    | Neha Kumari       | D001
-- S105    | Vikas Raj         | D001
-- S106    | Pooja Singh       | D001
-- S107    | Rohit Yadav       | D001
-- S108    | Soni Kumari       | D001
-- S109    | Deepak Kumar      | D001
-- S110    | Anjali Verma      | D001

-- S201    | Aditya Kumar      | D002
-- S202    | Riya Sharma       | D002
-- S203    | Kunal Singh       | D002
-- S204    | Sneha Kumari      | D002
-- S205    | Harsh Raj         | D002
-- S206    | Komal Singh       | D002
-- S207    | Nitesh Kumar      | D002
-- S208    | Shivani Singh     | D002
-- S209    | Abhishek Raj      | D002
-- S210    | Muskan Kumari     | D002

-- S301    | Kishan Kumar      | D003
-- S302    | Ranjan Singh      | D003
-- S303    | Neetu Kumari      | D003
-- S304    | Sandeep Kumar     | D003
-- S305    | Sarla Kumari      | D003
-- S306    | Ravi Raj          | D003
-- S307    | Pinky Kumari      | D003
-- S308    | Manoj Kumar       | D003
-- S309    | Seema Singh       | D003
-- S310    | Ashok Kumar       | D003

-- S401    | Manish Kumar      | D004
-- S402    | Ravi Kumar        | D004
-- S403    | Priti Kumari      | D004
-- S404    | Sunil Yadav       | D004
-- S405    | Anita Kumari      | D004
-- S406    | Vivek Singh       | D004
-- S407    | Rakesh Kumar      | D004
-- S408    | Kavita Sharma     | D004
-- S409    | Mukesh Kumar      | D004
-- S410    | Suman Kumari      | D004

-- S601    | Ankit Kumar       | D005
-- S602    | Rohit Singh       | D005
-- S603    | Komal Kumari      | D005
-- S604    | Shubham Raj       | D005
-- S605    | Meena Kumari      | D005
-- S606    | Ritesh Kumar      | D005
-- S607    | Vandana Singh     | D005
-- S608    | Arun Kumar        | D005
-- S609    | Rekha Kumari      | D005
-- S610    | Dilip Kumar       | D005

-- S501    | Saurabh Kumar     | D006
-- S502    | Ritu Kumari       | D006
-- S503    | Gaurav Singh      | D006
-- S504    | Pallavi Sharma    | D006
-- S505    | Nikhil Raj        | D006
-- S506    | Jyoti Kumari      | D006
-- S507    | Ankur Kumar       | D006
-- S508    | Rashmi Singh      | D006
-- S509    | Prakash Kumar     | D006
-- S510    | Shalini Kumari    | D006

-- S901    | Ravi Kumar        | D009
-- S902    | Neha Kumari       | D009
-- S903    | Arvind Raj        | D009
-- S904    | Pooja Singh       | D009
-- S905    | Vikash Kumar      | D009
-- S906    | Suman Kumari      | D009
-- S907    | Rajesh Kumar      | D009
-- S908    | Anjali Singh      | D009
-- S909    | Kundan Kumar      | D009
-- S910    | Ritu Kumari       | D009



/* 3. Faculty */
SELECT 
    Faculty_ID,
    Name AS Faculty_Name,
    Designation,
    Email
FROM Faculty;

-- Faculty_ID | Faculty_Name             | Designation   | Email
-- ----------------------------------------------------------------------
-- F101       | Murlidhar Prasad Singh   | AsstPro HoD   | singhmurlidhar@gmail.com
-- F102       | Md Ehtashamoul Haque     | Asst Pro      | ehtasham47@gmail.com
-- F103       | Amit Kumar               | Asst Pro      | amitbcebhagalpur@gmail.com
-- F104       | Md Izhar                 | Asst Pro      | mdizhar1996@gmail.com
-- F105       | Manisha Kumari Singh     | Asst Pro      | manisha.ks241@gmail.com

-- F201       | Md Ehteshamoul Hoque     | AsstPro HoD   | ehtasham47@gmail.com
-- F202       | Sujeet Kumar             | Asst Pro      | ksujeet.cs@gmail.com
-- F203       | Praveen Kumar            | Asst Pro      | praveenkumaryadav782@gmail.com
-- F204       | Manisha Kumari Singh     | Asst Pro      | manisha.ks241@gmail.com
-- F205       | Md Izhar                 | Asst Pro      | mdizhar1996@gmail.com

-- F301       | Hare Krishna Mishra      | Asst Pro      | hare.dbit@gmail.com
-- F302       | Ashish Kumar Suman       | Asst Pro      | sumanashish.rkt@gmail.com
-- F303       | Mitesh Kumar             | Asst Pro      | mitesh.sva@gmail.com
-- F304       | Nitish Kumar             | Asst Pro      | nitianj@gmail.com
-- F305       | Mithlesh Kumar           | AsstPro HoD   | bpmceeee110@gmail.com

-- F401       | Akhilesh Kumar           | Asst Pro      | akhileshkumar3804@gmail.com
-- F402       | Kunal Kumar              | AsstPro HoD   | kunal1989kumar@gmail.com
-- F403       | Nishikant Kumar          | Asst Pro      | nishikantbpmce32@gmail.com
-- F404       | Raushan Anand            | Asst Pro      | raushanbpmc@gmail.com
-- F405       | Vicky Anand              | Asst Pro      | Vickya.pg18.ce@Nitp.ac.in

-- F601       | Arbind Kumar Amar        | PrincipalIC   | ak_amar73@yahoo.com
-- F602       | Ajay Giri                | AsstPro HoD   | ajay_giri05@rediffmail.com
-- F603       | Uttam Kumar              | Asst Pro      | uttamiitp1@gmail.com
-- F604       | Firoz Akhtar             | Asst Pro      | firozakhtar1581@gmail.com
-- F605       | Rahul Ranjan Bharti      | Asst Pro      | 15rahulbharti@gmail.com

-- F501       | Akhilesh Kumar           | AsstPro HoD   | akhileshkumar3804@gmail.com
-- F502       | Kunal Kumar              | Asst Pro      | kunal1989kumar@gmail.com
-- F503       | Nishikant Kumar          | Asst Pro      | nishikantbpmce32@gmail.com
-- F504       | Vicky Anand              | Asst Pro      | Vickya.pg18@Nitp.ac.in
-- F505       | Pankaj Kumar             | Asst Pro      | pankajkumarpk8888@gmail.com

-- F901       | Murlidhar Prasad Singh   | AsstPro HoD   | singhmurlidhar@gmail.com
-- F902       | Md Ehteshamoul Hoque     | Asst Pro      | ehtasham47@gmail.com
-- F903       | Sujeet Kumar             | Asst Pro      | ksujeet.cs@gmail.com
-- F904       | Praveen Kumar            | Asst Pro      | praveenkumaryadav782@gmail.com
-- F905       | Manisha Kumari Singh     | Asst Pro      | manisha.ks241@gmail.com



/* 4. Course */
SELECT 
    Course_ID,
    Course_Name,
    Credits,
    Dept_ID,
    Faculty_ID
FROM Course;

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

/* 5. Display Enrollment table with aliases */
SELECT 
    Student_ID AS Student,
    Course_ID AS Course,
    Semester AS Sem,
    Grade AS Final_Grade
FROM Enrollment;

-- Student | Course | Sem | Final_Grade
-- ------------------------------------
-- S101    | C101   | S1  | A
-- S102    | C102   | S2  | B
-- S103    | C103   | S3  | A
-- S104    | C104   | S4  | B
-- S105    | C105   | S5  | A
-- S106    | C101   | S6  | B
-- S107    | C102   | S7  | A
-- S108    | C103   | S8  | B
-- S109    | C104   | S2  | A
-- S110    | C105   | S4  | B

-- S201    | C201   | S1  | A
-- S202    | C202   | S2  | B
-- S203    | C203   | S3  | A
-- S204    | C204   | S4  | B
-- S205    | C205   | S5  | A
-- S206    | C201   | S6  | B
-- S207    | C202   | S7  | A
-- S208    | C203   | S8  | B
-- S209    | C204   | S2  | A
-- S210    | C205   | S5  | B

-- S301    | C301   | S1  | A
-- S302    | C302   | S2  | B
-- S303    | C303   | S3  | A
-- S304    | C304   | S4  | B
-- S305    | C305   | S5  | A
-- S306    | C301   | S6  | B
-- S307    | C302   | S7  | A
-- S308    | C303   | S8  | B
-- S309    | C304   | S3  | A
-- S310    | C305   | S6  | B

-- S401    | C401   | S1  | A
-- S402    | C402   | S2  | B
-- S403    | C403   | S3  | A
-- S404    | C404   | S4  | B
-- S405    | C405   | S5  | A
-- S406    | C401   | S6  | B
-- S407    | C402   | S7  | A
-- S408    | C403   | S8  | B
-- S409    | C404   | S4  | A
-- S410    | C405   | S7  | B

-- S601    | C601   | S1  | A
-- S602    | C602   | S2  | B
-- S603    | C603   | S3  | A
-- S604    | C604   | S4  | B
-- S605    | C605   | S5  | A
-- S606    | C601   | S6  | B
-- S607    | C602   | S7  | A
-- S608    | C603   | S8  | B
-- S609    | C604   | S5  | A
-- S610    | C605   | S2  | B

-- S501    | C501   | S1  | A
-- S502    | C502   | S2  | B
-- S503    | C503   | S3  | A
-- S504    | C504   | S4  | B
-- S505    | C505   | S5  | A
-- S506    | C501   | S6  | B
-- S507    | C502   | S7  | A
-- S508    | C503   | S8  | B
-- S509    | C504   | S6  | A
-- S510    | C505   | S3  | B

-- S901    | C901   | S1  | A
-- S902    | C902   | S2  | B
-- S903    | C903   | S3  | A
-- S904    | C904   | S4  | B
-- S905    | C905   | S5  | A
-- S906    | C901   | S6  | B
-- S907    | C902   | S7  | A
-- S908    | C903   | S8  | B
-- S909    | C904   | S7  | A
-- S910    | C905   | S2  | B



/* 
   PART B — CONDITIONAL DATA DISPLAY (WHERE CLAUSE)
   */
/* 6. Students from department D001 */
SELECT * FROM Student
WHERE Dept_ID = 'D001';

-- Student_ID | Name            | DOB        | Gender | Contact_No | Dept_ID
-- ------------------------------------------------------------------------
-- S101       | Rahul Kumar     | 12-JAN-04  | Male   | 9123456781 | D001
-- S102       | Aman Singh      | 22-MAR-04  | Male   | 9234567812 | D001
-- S103       | Priya Sharma    | 10-FEB-04  | Female | 9345678123 | D001
-- S104       | Neha Kumari     | 17-MAY-04  | Female | 9456781234 | D001
-- S105       | Vikas Raj       | 01-JUL-04  | Male   | 9567812345 | D001
-- S106       | Pooja Singh     | 11-APR-04  | Female | 9678123456 | D001
-- S107       | Rohit Yadav     | 19-AUG-04  | Male   | 9781234567 | D001
-- S108       | Soni Kumari     | 09-SEP-04  | Female | 9892345678 | D001
-- S109       | Deepak Kumar    | 25-JUN-04  | Male   | 9913456789 | D001
-- S110       | Anjali Verma    | 30-NOV-04  | Female | 9024567891 | D001



/* 7. Female students */
SELECT * FROM Student
WHERE Gender = 'Female';

-- Student_ID | Name             | DOB        | Gender | Contact_No | Dept_ID
-- -------------------------------------------------------------------------
-- S103       | Priya Sharma     | 10-FEB-04  | Female | 9345678123 | D001
-- S104       | Neha Kumari      | 17-MAY-04  | Female | 9456781234 | D001
-- S106       | Pooja Singh      | 11-APR-04  | Female | 9678123456 | D001
-- S108       | Soni Kumari      | 09-SEP-04  | Female | 9892345678 | D001
-- S110       | Anjali Verma     | 30-NOV-04  | Female | 9024567891 | D001

-- S202       | Riya Sharma      | 19-MAR-04  | Female | 9246789123 | D002
-- S204       | Sneha Kumari     | 18-JUN-04  | Female | 9468912345 | D002
-- S206       | Komal Singh      | 11-AUG-04  | Female | 9681234567 | D002
-- S208       | Shivani Singh    | 14-SEP-04  | Female | 9813456789 | D002
-- S210       | Muskan Kumari    | 02-DEC-04  | Female | 9035678912 | D002

-- S303       | Neetu Kumari     | 18-MAR-04  | Female | 9392345678 | D003
-- S305       | Sarla Kumari     | 05-MAY-04  | Female | 9524567891 | D003
-- S307       | Pinky Kumari     | 12-JUL-04  | Female | 9746789123 | D003
-- S309       | Seema Singh      | 25-SEP-04  | Female | 9968912345 | D003

-- S403       | Priti Kumari     | 21-APR-04  | Female | 9368912345 | D004
-- S405       | Anita Kumari     | 29-JUN-04  | Female | 9581234567 | D004
-- S408       | Kavita Sharma    | 22-SEP-04  | Female | 9824567891 | D004
-- S410       | Suman Kumari     | 09-DEC-04  | Female | 9046789123 | D004

-- S603       | Komal Kumari     | 18-APR-04  | Female | 9381234567 | D005
-- S605       | Meena Kumari     | 07-JUN-04  | Female | 9513456789 | D005
-- S607       | Vandana Singh    | 28-AUG-04  | Female | 9735678912 | D005
-- S609       | Rekha Kumari     | 13-OCT-04  | Female | 9957891234 | D005

-- S502       | Ritu Kumari      | 23-FEB-04  | Female | 9268912345 | D006
-- S504       | Pallavi Sharma   | 06-APR-04  | Female | 9481234567 | D006
-- S506       | Jyoti Kumari     | 14-JUN-04  | Female | 9613456789 | D006
-- S508       | Rashmi Singh     | 05-AUG-04  | Female | 9835678912 | D006
-- S510       | Shalini Kumari   | 30-OCT-04  | Female | 9057891234 | D006

-- S902       | Neha Kumari      | 19-FEB-04  | Female | 9292345678 | D009
-- S904       | Pooja Singh      | 24-APR-04  | Female | 9424567891 | D009
-- S906       | Suman Kumari     | 11-JUN-04  | Female | 9646789123 | D009
-- S908       | Anjali Singh     | 22-AUG-04  | Female | 9868912345 | D009
-- S910       | Ritu Kumari      | 01-NOV-04  | Female | 9081234567 | D009



/* 8. Faculty with designation Asst Pro */
SELECT * FROM Faculty
WHERE Designation = 'Asst Pro';

-- Faculty_ID | Name                      | Designation | Email                           | Dept_ID
-- ------------------------------------------------------------------------------------------
-- F102       | Md Ehtashamoul Haque      | Asst Pro    | ehtasham47@gmail.com            | D001
-- F103       | Amit Kumar                | Asst Pro    | amitbcebhagalpur@gmail.com      | D001
-- F104       | Md Izhar                  | Asst Pro    | mdizhar1996@gmail.com           | D001
-- F105       | Manisha Kumari Singh      | Asst Pro    | manisha.ks241@gmail.com         | D001

-- F202       | Sujeet Kumar              | Asst Pro    | ksujeet.cs@gmail.com            | D002
-- F203       | Praveen Kumar             | Asst Pro    | praveenkumaryadav782@gmail.com  | D002
-- F204       | Manisha Kumari Singh      | Asst Pro    | manisha.ks241@gmail.com         | D002
-- F205       | Md Izhar                  | Asst Pro    | mdizhar1996@gmail.com           | D002

-- F301       | Hare Krishna Mishra       | Asst Pro    | hare.dbit@gmail.com             | D003
-- F302       | Ashish Kumar Suman        | Asst Pro    | sumanashish.rkt@gmail.com       | D003
-- F303       | Mitesh Kumar              | Asst Pro    | mitesh.sva@gmail.com            | D003
-- F304       | Nitish Kumar              | Asst Pro    | nitianj@gmail.com               | D003

-- F401       | Akhilesh Kumar            | Asst Pro    | akhileshkumar3804@gmail.com     | D004
-- F403       | Nishikant Kumar           | Asst Pro    | nishikantbpmce32@gmail.com      | D004
-- F404       | Raushan Anand             | Asst Pro    | raushanbpmc@gmail.com           | D004
-- F405       | Vicky Anand               | Asst Pro    | Vickya.pg18.ce@Nitp.ac.in       | D004

-- F603       | Uttam Kumar               | Asst Pro    | uttamiitp1@gmail.com            | D005
-- F604       | Firoz Akhtar              | Asst Pro    | firozakhtar1581@gmail.com       | D005
-- F605       | Rahul Ranjan Bharti       | Asst Pro    | 15rahulbharti@gmail.com         | D005

-- F502       | Kunal Kumar               | Asst Pro    | kunal1989kumar@gmail.com        | D006
-- F503       | Nishikant Kumar           | Asst Pro    | nishikantbpmce32@gmail.com      | D006
-- F504       | Vicky Anand               | Asst Pro    | Vickya.pg18@Nitp.ac.in          | D006
-- F505       | Pankaj Kumar              | Asst Pro    | pankajkumarpk8888@gmail.com     | D006

-- F902       | Md Ehteshamoul Hoque      | Asst Pro    | ehtasham47@gmail.com            | D009
-- F903       | Sujeet Kumar              | Asst Pro    | ksujeet.cs@gmail.com            | D009
-- F904       | Praveen Kumar             | Asst Pro    | praveenkumaryadav782@gmail.com  | D009
-- F905       | Manisha Kumari Singh      | Asst Pro    | manisha.ks241@gmail.com         | D009



/* 9. Faculty from department D002 */
SELECT * FROM Faculty
WHERE Dept_ID = 'D002';

-- Faculty_ID | Name                      | Designation   | Email                           | Dept_ID
-- ------------------------------------------------------------------------------------------
-- F201       | Md Ehteshamoul Hoque      | AsstPro HoD   | ehtasham47@gmail.com            | D002
-- F202       | Sujeet Kumar              | Asst Pro      | ksujeet.cs@gmail.com            | D002
-- F203       | Praveen Kumar             | Asst Pro      | praveenkumaryadav782@gmail.com  | D002
-- F204       | Manisha Kumari Singh      | Asst Pro      | manisha.ks241@gmail.com         | D002
-- F205       | Md Izhar                  | Asst Pro      | mdizhar1996@gmail.com           | D002



/* 10. Courses with credits >= 4 */
SELECT * FROM Course
WHERE Credits >= 4;

-- Course_ID | Course_Name | Credits | Dept_ID | Faculty_ID
-- --------------------------------------------------------
-- C101      | DBMS        | 4       | D001    | F101
-- C102      | OS          | 4       | D001    | F102
-- C103      | CN          | 4       | D001    | F103
-- C105      | DSA         | 4       | D001    | F105

-- C201      | ML          | 4       | D002    | F201
-- C202      | DL          | 4       | D002    | F202
-- C203      | DataMining  | 4       | D002    | F203

-- C301      | Circuit     | 4       | D003    | F301
-- C302      | Machines    | 4       | D003    | F302
-- C303      | PowerSys    | 4       | D003    | F303

-- C401      | Survey      | 4       | D004    | F401
-- C402      | Soil        | 4       | D004    | F402
-- C403      | Structure   | 4       | D004    | F403

-- C601      | Thermo      | 4       | D005    | F601
-- C602      | Fluid       | 4       | D005    | F602
-- C603      | Machine     | 4       | D005    | F603

-- C504      | DBMS        | 4       | D006    | F504

-- C901      | Graphics    | 4       | D009    | F901
-- C903      | Model3D     | 4       | D009    | F903



/* 11. Students born after 1 Jan 2003 */
SELECT * FROM Student
WHERE DOB > DATE '2003-01-01';

-- Student_ID | Name            | DOB        | Gender | Contact_No | Dept_ID
-- ------------------------------------------------------------------------
-- ALL 70 STUDENTS (S101 to S910)
-- (All rows same as Student table since all DOB are in 2004)



/* 12. Enrollment records for semester S3 */
SELECT * FROM Enrollment
WHERE Semester = 'S3';

-- Student_ID | Course_ID | Semester | Grade
-- -----------------------------------------
-- S103       | C103      | S3       | A
-- S203       | C203      | S3       | A
-- S303       | C303      | S3       | A
-- S309       | C304      | S3       | A
-- S403       | C403      | S3       | A
-- S503       | C503      | S3       | A
-- S903       | C903      | S3       | A

/* 
   PART C — SORTING AND LIMITING RESULTS
    */

/* 13. Students sorted by name ascending */

SELECT * FROM Student
ORDER BY Name ASC;

-- Student_ID | Name             | DOB        | Gender | Contact_No | Dept_ID
-- -------------------------------------------------------------------------
-- S209       | Abhishek Raj     | 21-OCT-04  | Male   | 9924567891 | D002
-- S201       | Aditya Kumar     | 15-FEB-04  | Male   | 9135678912 | D002
-- S102       | Aman Singh       | 22-MAR-04  | Male   | 9234567812 | D001
-- S405       | Anita Kumari     | 29-JUN-04  | Female | 9581234567 | D004
-- S908       | Anjali Singh     | 22-AUG-04  | Female | 9868912345 | D009
-- S110       | Anjali Verma     | 30-NOV-04  | Female | 9024567891 | D001
-- S601       | Ankit Kumar      | 10-FEB-04  | Male   | 9168912345 | D005
-- S507       | Ankur Kumar      | 20-JUL-04  | Male   | 9724567891 | D006
-- S608       | Arun Kumar       | 11-SEP-04  | Male   | 9846789123 | D005
-- S903       | Arvind Raj       | 21-MAR-04  | Male   | 9313456789 | D009
-- S310       | Ashok Kumar      | 03-OCT-04  | Male   | 9079123456 | D003
-- S109       | Deepak Kumar     | 25-JUN-04  | Male   | 9913456789 | D001
-- S610       | Dilip Kumar      | 19-DEC-04  | Male   | 9068912345 | D005
-- S503       | Gaurav Singh     | 12-MAR-04  | Male   | 9379123456 | D006
-- S301       | Kishan Kumar     | 08-JAN-04  | Male   | 9179123456 | D003
-- S603       | Komal Kumari     | 18-APR-04  | Female | 9381234567 | D005
-- S206       | Komal Singh      | 11-AUG-04  | Female | 9681234567 | D002
-- S203       | Kunal Singh      | 05-MAY-04  | Male   | 9357891234 | D002
-- S408       | Kavita Sharma    | 22-SEP-04  | Female | 9824567891 | D004
-- S401       | Manish Kumar     | 08-FEB-04  | Male   | 9146789123 | D004
-- S308       | Manoj Kumar      | 19-AUG-04  | Male   | 9857891234 | D003
-- S605       | Meena Kumari     | 07-JUN-04  | Female | 9513456789 | D005
-- S409       | Mukesh Kumar     | 11-OCT-04  | Male   | 9935678912 | D004
-- S210       | Muskan Kumari    | 02-DEC-04  | Female | 9035678912 | D002
-- S303       | Neetu Kumari     | 18-MAR-04  | Female | 9392345678 | D003
-- S104       | Neha Kumari      | 17-MAY-04  | Female | 9456781234 | D001
-- S902       | Neha Kumari      | 19-FEB-04  | Female | 9292345678 | D009
-- S207       | Nitesh Kumar     | 03-JAN-04  | Male   | 9792345678 | D002
-- S505       | Nikhil Raj       | 29-MAY-04  | Male   | 9592345678 | D006
-- S509       | Prakash Kumar    | 09-SEP-04  | Male   | 9946789123 | D006
-- S403       | Priti Kumari     | 21-APR-04  | Female | 9368912345 | D004
-- S103       | Priya Sharma     | 10-FEB-04  | Female | 9345678123 | D001
-- S106       | Pooja Singh      | 11-APR-04  | Female | 9678123456 | D001
-- S904       | Pooja Singh      | 24-APR-04  | Female | 9424567891 | D009
-- S101       | Rahul Kumar      | 12-JAN-04  | Male   | 9123456781 | D001
-- S901       | Ravi Kumar       | 13-JAN-04  | Male   | 9181234567 | D009
-- S402       | Ravi Kumar       | 18-MAR-04  | Male   | 9257891234 | D004
-- S306       | Ravi Raj         | 09-JUN-04  | Male   | 9635678912 | D003
-- S302       | Ranjan Singh     | 14-FEB-04  | Male   | 9281234567 | D003
-- S609       | Rekha Kumari     | 13-OCT-04  | Female | 9957891234 | D005
-- S602       | Rohit Singh      | 16-MAR-04  | Male   | 9279123456 | D005
-- S107       | Rohit Yadav      | 19-AUG-04  | Male   | 9781234567 | D001
-- S202       | Riya Sharma      | 19-MAR-04  | Female | 9246789123 | D002
-- S502       | Ritu Kumari      | 23-FEB-04  | Female | 9268912345 | D006
-- S910       | Ritu Kumari      | 01-NOV-04  | Female | 9081234567 | D009
-- S305       | Sarla Kumari     | 05-MAY-04  | Female | 9524567891 | D003
-- S309       | Seema Singh      | 25-SEP-04  | Female | 9968912345 | D003
-- S208       | Shivani Singh    | 14-SEP-04  | Female | 9813456789 | D002
-- S510       | Shalini Kumari   | 30-OCT-04  | Female | 9057891234 | D006
-- S604       | Shubham Raj      | 21-MAY-04  | Male   | 9492345678 | D005
-- S204       | Sneha Kumari     | 18-JUN-04  | Female | 9468912345 | D002
-- S108       | Soni Kumari      | 09-SEP-04  | Female | 9892345678 | D001
-- S404       | Sunil Yadav      | 25-MAY-04  | Male   | 9479123456 | D004
-- S410       | Suman Kumari     | 09-DEC-04  | Female | 9046789123 | D004
-- S906       | Suman Kumari     | 11-JUN-04  | Female | 9646789123 | D009
-- S105       | Vikas Raj        | 01-JUL-04  | Male   | 9567812345 | D001
-- S905       | Vikash Kumar     | 29-MAY-04  | Male   | 9535678912 | D009
-- S607       | Vandana Singh    | 28-AUG-04  | Female | 9735678912 | D005


/* 14. Students sorted by DOB descending */
SELECT * FROM Student
ORDER BY DOB DESC;

-- Student_ID | Name             | DOB        | Gender | Contact_No | Dept_ID
-- -------------------------------------------------------------------------
-- S610       | Dilip Kumar      | 19-DEC-04  | Male   | 9068912345 | D005
-- S210       | Muskan Kumari    | 02-DEC-04  | Female | 9035678912 | D002
-- S110       | Anjali Verma     | 30-NOV-04  | Female | 9024567891 | D001
-- S510       | Shalini Kumari   | 30-OCT-04  | Female | 9057891234 | D006
-- S609       | Rekha Kumari     | 13-OCT-04  | Female | 9957891234 | D005
-- S409       | Mukesh Kumar     | 11-OCT-04  | Male   | 9935678912 | D004
-- S310       | Ashok Kumar      | 03-OCT-04  | Male   | 9079123456 | D003
-- S309       | Seema Singh      | 25-SEP-04  | Female | 9968912345 | D003
-- S408       | Kavita Sharma    | 22-SEP-04  | Female | 9824567891 | D004
-- S608       | Arun Kumar       | 11-SEP-04  | Male   | 9846789123 | D005
-- S108       | Soni Kumari      | 09-SEP-04  | Female | 9892345678 | D001
-- S509       | Prakash Kumar    | 09-SEP-04  | Male   | 9946789123 | D006
-- S208       | Shivani Singh    | 14-SEP-04  | Female | 9813456789 | D002
-- S607       | Vandana Singh    | 28-AUG-04  | Female | 9735678912 | D005
-- S107       | Rohit Yadav      | 19-AUG-04  | Male   | 9781234567 | D001
-- S308       | Manoj Kumar      | 19-AUG-04  | Male   | 9857891234 | D003
-- S908       | Anjali Singh     | 22-AUG-04  | Female | 9868912345 | D009
-- S206       | Komal Singh      | 11-AUG-04  | Female | 9681234567 | D002
-- S508       | Rashmi Singh     | 05-AUG-04  | Female | 9835678912 | D006
-- S507       | Ankur Kumar      | 20-JUL-04  | Male   | 9724567891 | D006
-- S606       | Ritesh Kumar     | 25-JUL-04  | Male   | 9624567891 | D005
-- S105       | Vikas Raj        | 01-JUL-04  | Male   | 9567812345 | D001
-- S307       | Pinky Kumari     | 12-JUL-04  | Female | 9746789123 | D003
-- S406       | Vivek Singh      | 12-JUL-04  | Male   | 9692345678 | D004
-- S306       | Ravi Raj         | 09-JUN-04  | Male   | 9635678912 | D003
-- S605       | Meena Kumari     | 07-JUN-04  | Female | 9513456789 | D005
-- S906       | Suman Kumari     | 11-JUN-04  | Female | 9646789123 | D009
-- S506       | Jyoti Kumari     | 14-JUN-04  | Female | 9613456789 | D006
-- S109       | Deepak Kumar     | 25-JUN-04  | Male   | 9913456789 | D001
-- S405       | Anita Kumari     | 29-JUN-04  | Female | 9581234567 | D004
-- S204       | Sneha Kumari     | 18-JUN-04  | Female | 9468912345 | D002
-- S604       | Shubham Raj      | 21-MAY-04  | Male   | 9492345678 | D005
-- S505       | Nikhil Raj       | 29-MAY-04  | Male   | 9592345678 | D006
-- S905       | Vikash Kumar     | 29-MAY-04  | Male   | 9535678912 | D009
-- S404       | Sunil Yadav      | 25-MAY-04  | Male   | 9479123456 | D004
-- S104       | Neha Kumari      | 17-MAY-04  | Female | 9456781234 | D001
-- S305       | Sarla Kumari     | 05-MAY-04  | Female | 9524567891 | D003
-- S203       | Kunal Singh      | 05-MAY-04  | Male   | 9357891234 | D002
-- S403       | Priti Kumari     | 21-APR-04  | Female | 9368912345 | D004
-- S904       | Pooja Singh      | 24-APR-04  | Female | 9424567891 | D009
-- S106       | Pooja Singh      | 11-APR-04  | Female | 9678123456 | D001
-- S504       | Pallavi Sharma   | 06-APR-04  | Female | 9481234567 | D006
-- S603       | Komal Kumari     | 18-APR-04  | Female | 9381234567 | D005
-- S304       | Sandeep Kumar    | 27-APR-04  | Male   | 9413456789 | D003
-- S303       | Neetu Kumari     | 18-MAR-04  | Female | 9392345678 | D003
-- S202       | Riya Sharma      | 19-MAR-04  | Female | 9246789123 | D002
-- S402       | Ravi Kumar       | 18-MAR-04  | Male   | 9257891234 | D004
-- S903       | Arvind Raj       | 21-MAR-04  | Male   | 9313456789 | D009
-- S102       | Aman Singh       | 22-MAR-04  | Male   | 9234567812 | D001
-- S503       | Gaurav Singh     | 12-MAR-04  | Male   | 9379123456 | D006
-- S602       | Rohit Singh      | 16-MAR-04  | Male   | 9279123456 | D005
-- S502       | Ritu Kumari      | 23-FEB-04  | Female | 9268912345 | D006
-- S902       | Neha Kumari      | 19-FEB-04  | Female | 9292345678 | D009
-- S201       | Aditya Kumar     | 15-FEB-04  | Male   | 9135678912 | D002
-- S302       | Ranjan Singh     | 14-FEB-04  | Male   | 9281234567 | D003
-- S103       | Priya Sharma     | 10-FEB-04  | Female | 9345678123 | D001
-- S601       | Ankit Kumar      | 10-FEB-04  | Male   | 9168912345 | D005
-- S401       | Manish Kumar     | 08-FEB-04  | Male   | 9146789123 | D004
-- S301       | Kishan Kumar     | 08-JAN-04  | Male   | 9179123456 | D003
-- S901       | Ravi Kumar       | 13-JAN-04  | Male   | 9181234567 | D009
-- S101       | Rahul Kumar      | 12-JAN-04  | Male   | 9123456781 | D001
-- S501       | Saurabh Kumar    | 17-JAN-04  | Male   | 9157891234 | D006
-- S207       | Nitesh Kumar     | 03-JAN-04  | Male   | 9792345678 | D002

/* 15. Faculty sorted by designation (ascending order) */
SELECT * FROM Faculty
ORDER BY Designation ASC;

-- Output:
-- +------------+--------------------------+--------------+--------------------------------+---------+
-- | Faculty_ID | Name                     | Designation  | Email                          | Dept_ID |
-- +------------+--------------------------+--------------+--------------------------------+---------+
-- | F102       | Md Ehtashamoul Haque     | Asst Pro     | ehtasham47@gmail.com           | D001    |
-- | F103       | Amit Kumar               | Asst Pro     | amitbcebhagalpur@gmail.com     | D001    |
-- | F104       | Md Izhar                 | Asst Pro     | mdizhar1996@gmail.com          | D001    |
-- | F105       | Manisha Kumari Singh     | Asst Pro     | manisha.ks241@gmail.com        | D001    |
-- | F202       | Sujeet Kumar             | Asst Pro     | ksujeet.cs@gmail.com           | D002    |
-- | F203       | Praveen Kumar            | Asst Pro     | praveenkumaryadav782@gmail.com | D002    |
-- | F204       | Manisha Kumari Singh     | Asst Pro     | manisha.ks241@gmail.com        | D002    |
-- | F205       | Md Izhar                 | Asst Pro     | mdizhar1996@gmail.com          | D002    |
-- | F301       | Hare Krishna Mishra      | Asst Pro     | hare.dbit@gmail.com            | D003    |
-- | F302       | Ashish Kumar Suman       | Asst Pro     | sumanashish.rkt@gmail.com      | D003    |
-- | F303       | Mitesh Kumar             | Asst Pro     | mitesh.sva@gmail.com           | D003    |
-- | F304       | Nitish Kumar             | Asst Pro     | nitianj@gmail.com              | D003    |
-- | F401       | Akhilesh Kumar           | Asst Pro     | akhileshkumar3804@gmail.com    | D004    |
-- | F403       | Nishikant Kumar          | Asst Pro     | nishikantbpmce32@gmail.com     | D004    |
-- | F404       | Raushan Anand            | Asst Pro     | raushanbpmc@gmail.com          | D004    |
-- | F405       | Vicky Anand              | Asst Pro     | Vickya.pg18.ce@Nitp.ac.in      | D004    |
-- | F603       | Uttam Kumar              | Asst Pro     | uttamiitp1@gmail.com           | D005    |
-- | F604       | Firoz Akhtar             | Asst Pro     | firozakhtar1581@gmail.com      | D005    |
-- | F605       | Rahul Ranjan Bharti      | Asst Pro     | 15rahulbharti@gmail.com        | D005    |
-- | F502       | Kunal Kumar              | Asst Pro     | kunal1989kumar@gmail.com       | D006    |
-- | F503       | Nishikant Kumar          | Asst Pro     | nishikantbpmce32@gmail.com     | D006    |
-- | F504       | Vicky Anand              | Asst Pro     | Vickya.pg18@Nitp.ac.in         | D006    |
-- | F505       | Pankaj Kumar             | Asst Pro     | pankajkumarpk8888@gmail.com    | D006    |
-- | F902       | Md Ehteshamoul Hoque     | Asst Pro     | ehtasham47@gmail.com           | D009    |
-- | F903       | Sujeet Kumar             | Asst Pro     | ksujeet.cs@gmail.com           | D009    |
-- | F904       | Praveen Kumar            | Asst Pro     | praveenkumaryadav782@gmail.com | D009    |
-- | F905       | Manisha Kumari Singh     | Asst Pro     | manisha.ks241@gmail.com        | D009    |
-- | F101       | Murlidhar Prasad Singh   | AsstPro HoD  | singhmurlidhar@gmail.com       | D001    |
-- | F201       | Md Ehteshamoul Hoque     | AsstPro HoD  | ehtasham47@gmail.com           | D002    |
-- | F305       | Mithlesh Kumar           | AsstPro HoD  | bpmceeee110@gmail.com          | D003    |
-- | F402       | Kunal Kumar              | AsstPro HoD  | kunal1989kumar@gmail.com       | D004    |
-- | F602       | Ajay Giri                | AsstPro HoD  | ajay_giri05@rediffmail.com     | D005    |
-- | F501       | Akhilesh Kumar           | AsstPro HoD  | akhileshkumar3804@gmail.com    | D006    |
-- | F901       | Murlidhar Prasad Singh   | AsstPro HoD  | singhmurlidhar@gmail.com       | D009    |
-- | F601       | Arbind Kumar Amar        | PrincipalIC  | ak_amar73@yahoo.com            | D005    |
-- +------------+--------------------------+--------------+--------------------------------+---------+


/* 16. Courses sorted by credits descending */
SELECT * FROM Course
ORDER BY Credits DESC;

-- Output:
-- +-----------+-------------+---------+---------+------------+
-- | Course_ID | Course_Name | Credits | Dept_ID | Faculty_ID |
-- +-----------+-------------+---------+---------+------------+
-- | C101      | DBMS        | 4       | D001    | F101       |
-- | C102      | OS          | 4       | D001    | F102       |
-- | C103      | CN          | 4       | D001    | F103       |
-- | C105      | DSA         | 4       | D001    | F105       |
-- | C201      | ML          | 4       | D002    | F201       |
-- | C202      | DL          | 4       | D002    | F202       |
-- | C203      | DataMining  | 4       | D002    | F203       |
-- | C301      | Circuit     | 4       | D003    | F301       |
-- | C302      | Machines    | 4       | D003    | F302       |
-- | C303      | PowerSys    | 4       | D003    | F303       |
-- | C401      | Survey      | 4       | D004    | F401       |
-- | C402      | Soil        | 4       | D004    | F402       |
-- | C403      | Structure   | 4       | D004    | F403       |
-- | C601      | Thermo      | 4       | D005    | F601       |
-- | C602      | Fluid       | 4       | D005    | F602       |
-- | C603      | Machine     | 4       | D005    | F603       |
-- | C504      | DBMS        | 4       | D006    | F504       |
-- | C901      | Graphics    | 4       | D009    | F901       |
-- | C903      | Model3D     | 4       | D009    | F903       |
-- | C104      | SE          | 3       | D001    | F104       |
-- | C204      | PythonAI    | 3       | D002    | F204       |
-- | C205      | NLP         | 3       | D002    | F205       |
-- | C304      | Control     | 3       | D003    | F304       |
-- | C305      | Electro     | 3       | D003    | F305       |
-- | C404      | Concrete    | 3       | D004    | F404       |
-- | C405      | Hydrology   | 3       | D004    | F405       |
-- | C604      | Manufact    | 3       | D005    | F604       |
-- | C605      | AutoCAD     | 3       | D005    | F605       |
-- | C501      | CAD         | 3       | D006    | F501       |
-- | C502      | GIS         | 3       | D006    | F502       |
-- | C503      | Python      | 3       | D006    | F503       |
-- | C505      | WebTech     | 3       | D006    | F505       |
-- | C902      | Anim        | 3       | D009    | F902       |
-- | C904      | VFX         | 3       | D009    | F904       |
-- | C905      | Render      | 3       | D009    | F905       |
-- +-----------+-------------+---------+---------+------------+

/* 17. First 3 students */
SELECT * FROM Student
FETCH FIRST 3 ROWS ONLY;

-- Output:
-- +------------+--------------+------------+--------+------------+---------+
-- | Student_ID | Name         | DOB        | Gender | Contact_No | Dept_ID |
-- +------------+--------------+------------+--------+------------+---------+
-- | S101       | Rahul Kumar  | 12-JAN-04  | Male   | 9123456781 | D001    |
-- | S102       | Aman Singh   | 22-MAR-04  | Male   | 9234567812 | D001    |
-- | S103       | Priya Sharma | 10-FEB-04  | Female | 9345678123 | D001    |
-- +------------+--------------+------------+--------+------------+---------+


/* 18. First 5 courses */
SELECT * FROM Course
FETCH FIRST 5 ROWS ONLY;

-- Output:
-- +-----------+-------------+---------+---------+------------+
-- | Course_ID | Course_Name | Credits | Dept_ID | Faculty_ID |
-- +-----------+-------------+---------+---------+------------+
-- | C101      | DBMS        | 4       | D001    | F101       |
-- | C102      | OS          | 4       | D001    | F102       |
-- | C103      | CN          | 4       | D001    | F103       |
-- | C104      | SE          | 3       | D001    | F104       |
-- | C105      | DSA         | 4       | D001    | F105       |
-- +-----------+-------------+---------+---------+------------+



/* 
   PART D — DERIVED / COMPUTED OUTPUT
    */

/* 19. Student name with calculated age */
SELECT
    Name,
    FLOOR(MONTHS_BETWEEN(SYSDATE, DOB)/12) AS Years
FROM Student;

-- Output (approx based on year ~2026):
-- +------------------+-------+
-- | Name             | Years |
-- +------------------+-------+
-- | Rahul Kumar      | 22    |
-- | Aman Singh       | 22    |
-- | Priya Sharma     | 22    |
-- | Neha Kumari      | 21    |
-- | Vikas Raj        | 21    |
-- | Pooja Singh      | 21    |
-- | Rohit Yadav      | 21    |
-- | Soni Kumari      | 21    |
-- | Deepak Kumar     | 21    |
-- | Anjali Verma     | 21    |
-- | Aditya Kumar     | 22    |
-- | Riya Sharma      | 22    |
-- | Kunal Singh      | 21    |
-- | Sneha Kumari     | 21    |
-- | Harsh Raj        | 21    |
-- | Komal Singh      | 21    |
-- | Nitesh Kumar     | 22    |
-- | Shivani Singh    | 21    |
-- | Abhishek Raj     | 21    |
-- | Muskan Kumari    | 21    |
-- | Kishan Kumar     | 22    |
-- | Ranjan Singh     | 22    |
-- | Neetu Kumari     | 22    |
-- | Sandeep Kumar    | 21    |
-- | Sarla Kumari     | 21    |
-- | Ravi Raj         | 21    |
-- | Pinky Kumari     | 21    |
-- | Manoj Kumar      | 21    |
-- | Seema Singh      | 21    |
-- | Ashok Kumar      | 21    |
-- | Manish Kumar     | 22    |
-- | Ravi Kumar       | 22    |
-- | Priti Kumari     | 21    |
-- | Sunil Yadav      | 21    |
-- | Anita Kumari     | 21    |
-- | Vivek Singh      | 21    |
-- | Rakesh Kumar     | 21    |
-- | Kavita Sharma    | 21    |
-- | Mukesh Kumar     | 21    |
-- | Suman Kumari     | 21    |
-- | Ankit Kumar      | 22    |
-- | Rohit Singh      | 22    |
-- | Komal Kumari     | 21    |
-- | Shubham Raj      | 21    |
-- | Meena Kumari     | 21    |
-- | Ritesh Kumar     | 21    |
-- | Vandana Singh    | 21    |
-- | Arun Kumar       | 21    |
-- | Rekha Kumari     | 21    |
-- | Dilip Kumar      | 21    |
-- | Saurabh Kumar    | 22    |
-- | Ritu Kumari      | 22    |
-- | Gaurav Singh     | 22    |
-- | Pallavi Sharma   | 21    |
-- | Nikhil Raj       | 21    |
-- | Jyoti Kumari     | 21    |
-- | Ankur Kumar      | 21    |
-- | Rashmi Singh     | 21    |
-- | Prakash Kumar    | 21    |
-- | Shalini Kumari   | 21    |
-- | Ravi Kumar       | 22    |
-- | Neha Kumari      | 22    |
-- | Arvind Raj       | 21    |
-- | Pooja Singh      | 21    |
-- | Vikash Kumar     | 21    |
-- | Suman Kumari     | 21    |
-- | Rajesh Kumar     | 21    |
-- | Anjali Singh     | 21    |
-- | Kundan Kumar     | 21    |
-- | Ritu Kumari      | 21    |
-- +------------------+-------+

/* 20. Course name with updated credits */
SELECT 
    Course_Name,
    Credits + 1 AS Updated_Credits
FROM Course;

-- Output:
-- +-------------+------------------+
-- | Course_Name | Updated_Credits  |
-- +-------------+------------------+
-- | DBMS        | 5                |
-- | OS          | 5                |
-- | CN          | 5                |
-- | SE          | 4                |
-- | DSA         | 5                |
-- | ML          | 5                |
-- | DL          | 5                |
-- | DataMining  | 5                |
-- | PythonAI    | 4                |
-- | NLP         | 4                |
-- | Circuit     | 5                |
-- | Machines    | 5                |
-- | PowerSys    | 5                |
-- | Control     | 4                |
-- | Electro     | 4                |
-- | Survey      | 5                |
-- | Soil        | 5                |
-- | Structure   | 5                |
-- | Concrete    | 4                |
-- | Hydrology   | 4                |
-- | Thermo      | 5                |
-- | Fluid       | 5                |
-- | Machine     | 5                |
-- | Manufact    | 4                |
-- | AutoCAD     | 4                |
-- | CAD         | 4                |
-- | GIS         | 4                |
-- | Python      | 4                |
-- | DBMS        | 5                |
-- | WebTech     | 4                |
-- | Graphics    | 5                |
-- | Anim        | 4                |
-- | Model3D     | 5                |
-- | VFX         | 4                |
-- | Render      | 4                |
-- +-------------+------------------+

/* 21. Enrollment with grade renamed */
SELECT 
    Student_ID,
    Course_ID,
    Semester,
    Grade AS Final_Grade
FROM Enrollment;

-- Output:
-- +------------+-----------+----------+-------------+
-- | Student_ID | Course_ID | Semester | Final_Grade |
-- +------------+-----------+----------+-------------+
-- | S101       | C101      | S1       | A           |
-- | S102       | C102      | S2       | B           |
-- | S103       | C103      | S3       | A           |
-- | S104       | C104      | S4       | B           |
-- | S105       | C105      | S5       | A           |
-- | S106       | C101      | S6       | B           |
-- | S107       | C102      | S7       | A           |
-- | S108       | C103      | S8       | B           |
-- | S109       | C104      | S2       | A           |
-- | S110       | C105      | S4       | B           |
-- | S201       | C201      | S1       | A           |
-- | S202       | C202      | S2       | B           |
-- | S203       | C203      | S3       | A           |
-- | S204       | C204      | S4       | B           |
-- | S205       | C205      | S5       | A           |
-- | S206       | C201      | S6       | B           |
-- | S207       | C202      | S7       | A           |
-- | S208       | C203      | S8       | B           |
-- | S209       | C204      | S2       | A           |
-- | S210       | C205      | S5       | B           |
-- | S301       | C301      | S1       | A           |
-- | S302       | C302      | S2       | B           |
-- | S303       | C303      | S3       | A           |
-- | S304       | C304      | S4       | B           |
-- | S305       | C305      | S5       | A           |
-- | S306       | C301      | S6       | B           |
-- | S307       | C302      | S7       | A           |
-- | S308       | C303      | S8       | B           |
-- | S309       | C304      | S3       | A           |
-- | S310       | C305      | S6       | B           |
-- | S401       | C401      | S1       | A           |
-- | S402       | C402      | S2       | B           |
-- | S403       | C403      | S3       | A           |
-- | S404       | C404      | S4       | B           |
-- | S405       | C405      | S5       | A           |
-- | S406       | C401      | S6       | B           |
-- | S407       | C402      | S7       | A           |
-- | S408       | C403      | S8       | B           |
-- | S409       | C404      | S4       | A           |
-- | S410       | C405      | S7       | B           |
-- | S601       | C601      | S1       | A           |
-- | S602       | C602      | S2       | B           |
-- | S603       | C603      | S3       | A           |
-- | S604       | C604      | S4       | B           |
-- | S605       | C605      | S5       | A           |
-- | S606       | C601      | S6       | B           |
-- | S607       | C602      | S7       | A           |
-- | S608       | C603      | S8       | B           |
-- | S609       | C604      | S5       | A           |
-- | S610       | C605      | S2       | B           |
-- | S501       | C501      | S1       | A           |
-- | S502       | C502      | S2       | B           |
-- | S503       | C503      | S3       | A           |
-- | S504       | C504      | S4       | B           |
-- | S505       | C505      | S5       | A           |
-- | S506       | C501      | S6       | B           |
-- | S507       | C502      | S7       | A           |
-- | S508       | C503      | S8       | B           |
-- | S509       | C504      | S6       | A           |
-- | S510       | C505      | S3       | B           |
-- | S901       | C901      | S1       | A           |
-- | S902       | C902      | S2       | B           |
-- | S903       | C903      | S3       | A           |
-- | S904       | C904      | S4       | B           |
-- | S905       | C905      | S5       | A           |
-- | S906       | C901      | S6       | B           |
-- | S907       | C902      | S7       | A           |
-- | S908       | C903      | S8       | B           |
-- | S909       | C904      | S7       | A           |
-- | S910       | C905      | S2       | B           |
-- +------------+-----------+----------+-------------|


/* 22. Student name with birth year */
SELECT 
    Name,
    EXTRACT(YEAR FROM DOB) AS Birth_Year
FROM Student;

-- Output:
-- +------------------+------------+
-- | Name             | Birth_Year |
-- +------------------+------------+
-- | Rahul Kumar      | 2004       |
-- | Aman Singh       | 2004       |
-- | Priya Sharma     | 2004       |
-- | Neha Kumari      | 2004       |
-- | Vikas Raj        | 2004       |
-- | Pooja Singh      | 2004       |
-- | Rohit Yadav      | 2004       |
-- | Soni Kumari      | 2004       |
-- | Deepak Kumar     | 2004       |
-- | Anjali Verma     | 2004       |
-- | Aditya Kumar     | 2004       |
-- | Riya Sharma      | 2004       |
-- | Kunal Singh      | 2004       |
-- | Sneha Kumari     | 2004       |
-- | Harsh Raj        | 2004       |
-- | Komal Singh      | 2004       |
-- | Nitesh Kumar     | 2004       |
-- | Shivani Singh    | 2004       |
-- | Abhishek Raj     | 2004       |
-- | Muskan Kumari    | 2004       |
-- | Kishan Kumar     | 2004       |
-- | Ranjan Singh     | 2004       |
-- | Neetu Kumari     | 2004       |
-- | Sandeep Kumar    | 2004       |
-- | Sarla Kumari     | 2004       |
-- | Ravi Raj         | 2004       |
-- | Pinky Kumari     | 2004       |
-- | Manoj Kumar      | 2004       |
-- | Seema Singh      | 2004       |
-- | Ashok Kumar      | 2004       |
-- | Manish Kumar     | 2004       |
-- | Ravi Kumar       | 2004       |
-- | Priti Kumari     | 2004       |
-- | Sunil Yadav      | 2004       |
-- | Anita Kumari     | 2004       |
-- | Vivek Singh      | 2004       |
-- | Rakesh Kumar     | 2004       |
-- | Kavita Sharma    | 2004       |
-- | Mukesh Kumar     | 2004       |
-- | Suman Kumari     | 2004       |
-- | Ankit Kumar      | 2004       |
-- | Rohit Singh      | 2004       |
-- | Komal Kumari     | 2004       |
-- | Shubham Raj      | 2004       |
-- | Meena Kumari     | 2004       |
-- | Ritesh Kumar     | 2004       |
-- | Vandana Singh    | 2004       |
-- | Arun Kumar       | 2004       |
-- | Rekha Kumari     | 2004       |
-- | Dilip Kumar      | 2004       |
-- | Saurabh Kumar    | 2004       |
-- | Ritu Kumari      | 2004       |
-- | Gaurav Singh     | 2004       |
-- | Pallavi Sharma   | 2004       |
-- | Nikhil Raj       | 2004       |
-- | Jyoti Kumari     | 2004       |
-- | Ankur Kumar      | 2004       |
-- | Rashmi Singh     | 2004       |
-- | Prakash Kumar    | 2004       |
-- | Shalini Kumari   | 2004       |
-- | Ravi Kumar       | 2004       |
-- | Neha Kumari      | 2004       |
-- | Arvind Raj       | 2004       |
-- | Pooja Singh      | 2004       |
-- | Vikash Kumar     | 2004       |
-- | Suman Kumari     | 2004       |
-- | Rajesh Kumar     | 2004       |
-- | Anjali Singh     | 2004       |
-- | Kundan Kumar     | 2004       |
-- | Ritu Kumari      | 2004       |
-- +------------------+------------+


/* 23. Faculty name with email domain */
SELECT 
    Name,
    SUBSTR(Email, INSTR(Email,'@')+1) AS Email_Domain
FROM Faculty;

-- Output:
-- +--------------------------+----------------------+
-- | Name                     | Email_Domain         |
-- +--------------------------+----------------------+
-- | Murlidhar Prasad Singh   | gmail.com            |
-- | Md Ehtashamoul Haque     | gmail.com            |
-- | Amit Kumar               | gmail.com            |
-- | Md Izhar                 | gmail.com            |
-- | Manisha Kumari Singh     | gmail.com            |
-- | Md Ehteshamoul Hoque     | gmail.com            |
-- | Sujeet Kumar             | gmail.com            |
-- | Praveen Kumar            | gmail.com            |
-- | Manisha Kumari Singh     | gmail.com            |
-- | Md Izhar                 | gmail.com            |
-- | Hare Krishna Mishra      | gmail.com            |
-- | Ashish Kumar Suman       | gmail.com            |
-- | Mitesh Kumar             | gmail.com            |
-- | Nitish Kumar             | gmail.com            |
-- | Mithlesh Kumar           | gmail.com            |
-- | Akhilesh Kumar           | gmail.com            |
-- | Kunal Kumar              | gmail.com            |
-- | Nishikant Kumar          | gmail.com            |
-- | Raushan Anand            | gmail.com            |
-- | Vicky Anand              | Nitp.ac.in           |
-- | Arbind Kumar Amar        | yahoo.com            |
-- | Ajay Giri                | rediffmail.com       |
-- | Uttam Kumar              | gmail.com            |
-- | Firoz Akhtar             | gmail.com            |
-- | Rahul Ranjan Bharti      | gmail.com            |
-- | Akhilesh Kumar           | gmail.com            |
-- | Kunal Kumar              | gmail.com            |
-- | Nishikant Kumar          | gmail.com            |
-- | Vicky Anand              | Nitp.ac.in           |
-- | Pankaj Kumar             | gmail.com            |
-- | Murlidhar Prasad Singh   | gmail.com            |
-- | Md Ehteshamoul Hoque     | gmail.com            |
-- | Sujeet Kumar             | gmail.com            |
-- | Praveen Kumar            | gmail.com            |
-- | Manisha Kumari Singh     | gmail.com            |
-- +--------------------------+----------------------+
