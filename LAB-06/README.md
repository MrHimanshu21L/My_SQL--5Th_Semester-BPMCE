# 📊 SQL Aggregation Lab — GROUP BY & HAVING

A practical demonstration of **SQL aggregation operations** using a relational **college database schema**.

This project shows how meaningful insights can be generated from raw data using **aggregate functions, GROUP BY, HAVING, and JOIN operations**.

---

## 📌 Objective

The purpose of this lab is to understand how data can be summarized and analyzed without modifying the database using SQL aggregation techniques.

Using aggregation, we can:

* Count records
* Calculate totals and averages
* Find maximum and minimum values
* Analyze grouped data
* Filter grouped results

---

## 🗂 Database Schema

The database represents a simplified **college management system**.

### Tables Included

| Table      | Description                                      |
| ---------- | ------------------------------------------------ |
| Department | Stores department details                        |
| Faculty    | Stores faculty information                       |
| Student    | Stores student data                              |
| Course     | Stores course information                        |
| Enrollment | Stores which student is enrolled in which course |

---

## 🧩 Table Relationships

Tables are connected through **Primary Keys and Foreign Keys**.

```
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
```

These relationships allow aggregation across multiple tables.

---

## ⚙️ Technologies Used

* **Oracle Database 21c Express Edition**
* **SQL (Structured Query Language)**

---

## 🔎 Key SQL Concepts Covered

### 1️⃣ Aggregate Functions

Aggregate functions perform calculations on multiple rows and return a single value.

Common functions:

* COUNT() → counts number of rows
* SUM() → calculates total
* AVG() → calculates average
* MAX() → finds maximum value
* MIN() → finds minimum value

```sql
SELECT COUNT(*) AS Total_Students
FROM Student;
```

This query returns the total number of students.

---

### 2️⃣ GROUP BY Clause

GROUP BY is used to divide rows into groups based on column values.

```sql
SELECT Dept_ID, COUNT(*) AS Total_Students
FROM Student
GROUP BY Dept_ID;
```

This groups students according to their department and counts them.

---

### 3️⃣ GROUP BY with Multiple Columns

Grouping can also be performed using more than one column.

```sql
SELECT Semester, Grade, COUNT(*) AS Total_Students
FROM Enrollment
GROUP BY Semester, Grade;
```

This groups data based on both semester and grade.

---

### 4️⃣ HAVING Clause

HAVING is used to filter grouped results.

```sql
SELECT Dept_ID, COUNT(*) AS Total_Students
FROM Student
GROUP BY Dept_ID
HAVING COUNT(*) > 3;
```

This displays only departments having more than 3 students.

---

### 5️⃣ GROUP BY with JOIN

GROUP BY can be combined with JOIN operations to analyze data from multiple tables.

```sql
SELECT c.Course_Name, COUNT(e.Student_ID) AS Enrolled_Students
FROM Course c
INNER JOIN Enrollment e
ON c.Course_ID = e.Course_ID
GROUP BY c.Course_Name;
```

This query shows how many students are enrolled in each course.

---

### 6️⃣ WHERE vs HAVING

WHERE filters individual rows before grouping  
HAVING filters grouped results after aggregation

---

## 📊 Lab Tasks Covered

The lab contains aggregation queries organized into sections.

### Part A — Basic Aggregation

* Total number of students
* Total number of faculty
* Total number of courses
* Maximum and minimum values

### Part B — GROUP BY

* Students per department
* Faculty per department
* Courses per department
* Enrollments per semester
* Students per grade

### Part C — HAVING

* Departments with more than a specific number of students
* Semesters with high enrollments
* Grades assigned to multiple students
* Departments offering multiple courses

### Part D — Aggregation with JOIN

* Students enrolled in each course
* Course-wise enrollment count
* Department-wise student count
* Faculty-wise course count

### Part E — Analytical Queries

* Maximum grade per course
* Total courses per department
* Students per semester
* Courses with high enrollment

---

## 🧠 Key Learning Outcomes

After completing this lab, you will understand:

* How aggregate functions summarize data
* How GROUP BY organizes data into logical groups
* How HAVING filters grouped results
* Difference between WHERE and HAVING
* How JOIN + GROUP BY enables real-world analytics

---

## 📂 Project Structure

```
SQL-AGGREGATION-Lab

├── schema.sql
├── aggregation_lab.sql
└── README.md
```

---

## 🚀 How to Run

Open Oracle SQL*Plus or Oracle SQL Developer

Navigate to the respective lab folder and execute the SQL file.

### ▶️ Example (LAB-03)

```sql
@lab3.sql
```

Similarly, for other labs:

- LAB-01 → run corresponding `.sql` file  
- LAB-02 → run corresponding `.sql` file  
- LAB-03 → `@lab3.sql`  
- LAB-04 → run `lab_queries.sql`  
- LAB-05 → run corresponding `.sql` file  

Ensure you are inside the correct directory before executing the file.
---

## 🎯 Conclusion

Aggregation is a fundamental concept in SQL because raw data alone is not useful.

Using GROUP BY and HAVING, we can convert raw data into structured insights such as counts, summaries, and filtered reports.

These techniques are essential for data analysis and reporting in real-world database systems.

---

## 👨‍💻 Author

Himanshu  
CSE (Artificial Intelligence & Machine Learning Student)

GitHub: https://github.com/MrHimanshu21L

---

## 📄 License

This project is licensed under the MIT License.

Copyright (c) 2026 Himanshu
