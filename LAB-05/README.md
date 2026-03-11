# 🔗 SQL JOIN Lab — Data Retrieval from Multiple Tables

A practical demonstration of **SQL INNER JOIN operations** using a relational **college database schema**.

This project shows how meaningful information can be retrieved by combining multiple related tables using **primary–foreign key relationships**.

---

## 📌 Objective

The purpose of this lab is to understand how relational databases store data across multiple tables and how **JOIN operations** retrieve combined information without modifying the database.

Using SQL `INNER JOIN`, we can merge data from different tables such as:

- **Student**
- **Course**
- **Faculty**
- **Enrollment**
- **Department**

---

## 🗂 Database Schema

The database represents a simplified **college management system**.

### Tables Included

| Table | Description |
|------|-------------|
| Department | Stores department details |
| Faculty | Stores faculty information |
| Student | Stores student data |
| Course | Stores course information |
| Enrollment | Stores which student is enrolled in which course |

---

## 🧩 Table Relationships

Tables are connected through **Primary Keys and Foreign Keys**.

Student                                                                                           
│ Student_ID                                                                                    
▼                                                                                     
Enrollment                                                                                                                
│ Course_ID                                                                                    
▼                                                                                                                 
Course                                                                                                                
│ Faculty_ID                                                                                     
▼                                                                                                                 
Faculty                                                                                                                
│ Dept_ID                                                                                                                 
▼                                                                                                                 
Department                                                                                                                


These relationships allow SQL queries to combine information from multiple tables using JOIN operations.

---

## ⚙️ Technologies Used

- **Oracle Database 21c Express Edition**
- **SQL (Structured Query Language)**

---

## 🔎 Key SQL Concepts Covered

### 1️⃣ INNER JOIN

`INNER JOIN` returns only rows where matching values exist in both tables.

```sql
SELECT S.Name, C.Course_Name
FROM Student S
INNER JOIN Enrollment E
ON S.Student_ID = E.Student_ID
INNER JOIN Course C
ON E.Course_ID = C.Course_ID;
```
This query retrieves the student names and the courses they are enrolled in.

---

### 2️⃣ JOIN Conditions
JOIN conditions define how two tables are related.

Example:

```sql
Student.Student_ID = Enrollment.Student_ID
```
---

### 3️⃣ Table Aliases

Aliases simplify queries and improve readability.

Example:

-Student → S
-Enrollment → E
-Course → C
Using aliases:

```sql
SELECT S.Name, C.Course_Name
FROM Student S
INNER JOIN Enrollment E
ON S.Student_ID = E.Student_ID
INNER JOIN Course C
ON E.Course_ID = C.Course_ID;
```

---

### 4️⃣ Multi-Table JOIN
SQL allows joining multiple tables in a single query.

Example relationship chain:
```sql
Student → Enrollment → Course
```
This enables retrieval of combined information such as:
```sql
Student Name + Course Name + Semester + Grade
```

---

### 📊 Lab Tasks Covered

The lab contains 20 SQL queries organized into sections.

## Part A — Student & Enrollment

- Student names with enrolled courses
- Student names with semester information
- Student grades per course

## Part B — Course & Faculty

- Courses with faculty names
- Courses taught by a specific faculty
- Faculty designation with courses

## Part C — Student–Course–Enrollment

- Students with course names
- Students with semester details
- Courses taken by a specific student

## Part D — Department Queries

- Students with department and course
- Department-wise course lists
- Faculty with department names

## Part E — Filtering & Sorting

- Students belonging to a specific department
- Sorted student course lists
- Courses sorted by credits

## Part F — Analytical Queries

- Number of students per course
- Courses taught by each faculty
- Department-wise student counts
- Maximum grade per course

---

### 🧠 Key Learning Outcomes

After completing this lab you will understand:
- Why relational databases store data in multiple tables
- How INNER JOIN combines related tables
- The role of primary and foreign keys
- Writing multi-table SQL queries
- Using aliases, filtering, sorting, and aggregation

---

### 📂 Project Structure

SQL-JOIN-Lab                                                                                  
│                                                                                                                           
├── schema.sql                                                                                  
├── join_lab.sql                                                                                  
└── README.md    

---

### 🚀 How to Run

1. Open Oracle SQL*Plus or Oracle SQL Developer

2. Run the schema file
```sql
@schema.sql
```
3. Execute the JOIN queries
```sql
@join_lab.sql
```

---

### 🎯 Conclusion
JOIN operations are fundamental in relational databases because real-world data is distributed across multiple related tables.

Understanding INNER JOIN and relational keys allows us to reconstruct meaningful information from normalized database structures.

---

## 👨‍💻 Author

Himanshu  
CSE(Artificial Intelligence & Machine Learning Student)

GitHub: https://github.com/MrHimanshu21L

---

## 📄 License

This project is licensed under the MIT License.

Copyright (c) 2026 Himanshu
