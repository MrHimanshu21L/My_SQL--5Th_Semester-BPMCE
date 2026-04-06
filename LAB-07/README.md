# 📘 SQL Subquery Lab – Nested Queries

A practical demonstration of **SQL subqueries** using a relational **college database schema**. 

This project demonstrates how nested queries can be used to **retrieve, filter, and analyze data** without modifying the underlying database.

---

## 🎯 Objective

The goal of this lab is to understand how **subqueries** work and how they help solve analytical SQL problems.

Using subqueries, you can:

* 🔹 Compare rows with a single returned value
* 🔹 Filter rows using multiple values
* 🔹 Use aggregate functions inside conditions
* 🔹 Check existence using `EXISTS`
* 🔹 Solve queries without relying heavily on `JOIN`

---

## 🗄️ Database Schema

A simplified **college management system** consisting of:

### 📊 Tables Included

| Table      | Description                            |
| ---------- | -------------------------------------- |
| Department | Stores department details              |
| Faculty    | Stores faculty information             |
| Student    | Stores student details                 |
| Course     | Stores course information              |
| Enrollment | Stores student-course-semester mapping |

---

### 🔑 Important Columns

| Table      | Key Columns                                                    |
| ---------- | -------------------------------------------------------------- |
| Department | `Dept_ID`, `Dept_Name`, `Office_Location`                      |
| Faculty    | `Faculty_ID`, `Name`, `Designation`, `Email`, `Dept_ID`        |
| Student    | `Student_ID`, `Name`, `DOB`, `Gender`, `Contact_No`, `Dept_ID` |
| Course     | `Course_ID`, `Course_Name`, `Credits`, `Dept_ID`, `Faculty_ID` |
| Enrollment | `Student_ID`, `Course_ID`, `Semester`, `Grade`                 |

---

## 🔗 Table Relationships

The database follows a **relational structure** where tables are connected using **Primary Keys (PK)** and **Foreign Keys (FK)**.

```text
Department (Dept_ID) [PK]
│
├── Faculty (Dept_ID) [FK]
├── Student (Dept_ID) [FK]
└── Course  (Dept_ID) [FK]

Faculty (Faculty_ID) [PK]
│
└── Course (Faculty_ID) [FK]

Student (Student_ID) [PK]
│
└── Enrollment (Student_ID) [FK]

Course (Course_ID) [PK]
│
└── Enrollment (Course_ID) [FK]
```

### 🧠 Understanding the Flow

* 🏫 **Department** acts as the root entity
* 👨‍🏫 **Faculty, Student, Course** are dependent on Department
* 📘 **Course** is also linked to Faculty (who teaches it)
* 📝 **Enrollment** acts as a bridge between Student and Course

---

### ⚡ Why This Matters

👉 These relationships enable:

* 🔍 Efficient **data filtering across tables**
* 🔗 Logical **data connectivity without explicit JOINs**
* 🧩 Powerful **subquery-based problem solving**
* ✔️ Easy **existence checks using `EXISTS`**

In short, this structure allows you to write **clean, modular, and scalable SQL queries** using subqueries.


## 📈 Data Snapshot

* 🏫 Departments: 7
* 👨‍🏫 Faculty: 35
* 👨‍🎓 Students: 70
* 📚 Courses: 35
* 📝 Enrollments: 70

### 📌 Observations

* Each department has:

  * 5 faculty 👨‍🏫
  * 10 students 👨‍🎓
  * 5 courses 📘
* Every student is enrolled in at least one course
* Every course has enrolled students
* Data is **evenly distributed**, causing ties in queries

---

## ⚙️ Technologies Used

* 🧠 **Oracle Database 21c Express Edition**
* 💻 **SQL (Structured Query Language)**

---

## 🧩 Key SQL Concepts Covered

---

### 1️⃣ What is a Subquery?

A **subquery** is a query inside another query.

👉 Execution Flow:

1. Inner query runs first
2. Output is passed to outer query

```sql
SELECT Name
FROM Student
WHERE Dept_ID = 'D001';
```

---

### 2️⃣ Single-Row Subquery

Returns **exactly one value**.

```sql
SELECT Name
FROM Student
WHERE Dept_ID = (
    SELECT Dept_ID
    FROM Student
    WHERE Student_ID = 'S401'
);
```

🧠 Concept: Outer query depends on a **single scalar result**.

---

### 3️⃣ Multi-Row Subquery (`IN`)

Used when multiple values are returned.

```sql
SELECT Name
FROM Student
WHERE Dept_ID IN (
    SELECT DISTINCT Dept_ID
    FROM Student
    WHERE Gender = 'Female'
);
```

---

### 4️⃣ Subquery with Aggregate Functions

```sql
SELECT Course_Name
FROM Course
WHERE Credits > (
    SELECT AVG(Credits)
    FROM Course
);
```

📊 Uses functions like:

* `AVG()`
* `MAX()`
* `MIN()`

---

### 5️⃣ Subquery with `EXISTS`

Checks whether related rows exist.

```sql
SELECT Name
FROM Student s
WHERE EXISTS (
    SELECT 1
    FROM Enrollment e
    WHERE e.Student_ID = s.Student_ID
);
```

⚡ Efficient for **existence checks**, not value comparison.

---

### 6️⃣ `EXISTS` vs `NOT EXISTS`

| Operator     | Meaning                   |
| ------------ | ------------------------- |
| `EXISTS`     | At least one match exists |
| `NOT EXISTS` | No matching rows exist    |

```sql
SELECT Name
FROM Student s
WHERE NOT EXISTS (
    SELECT 1
    FROM Enrollment e
    WHERE e.Student_ID = s.Student_ID
);
```

---

### 7️⃣ Subquery vs JOIN

| Feature     | JOIN              | Subquery           |
| ----------- | ----------------- | ------------------ |
| Purpose     | Combine tables    | Filter using query |
| Readability | Complex sometimes | More intuitive     |
| Performance | Often faster      | Depends on DB      |

---

### 8️⃣ Important Note ⚠️

`Student_ID` is stored as `VARCHAR`, not numeric.

👉 So numeric comparison requires conversion:

```sql
SELECT Name
FROM Student
WHERE TO_NUMBER(SUBSTR(Student_ID, 2)) > (
    SELECT AVG(TO_NUMBER(SUBSTR(Student_ID, 2)))
    FROM Student
);
```

---

## 🧪 Lab Tasks Covered

### 🅰️ Part A – Basic Subqueries

* Same department as `S401`
* Same gender as `S402`

### 🅱️ Part B – Using `IN`

* Departments with female students
* Students appearing in Enrollment

### 🅲 Part C – Aggregates

* Courses above average credits
* Student_ID > average

### 🅳 Part D – Without JOIN

* Students enrolled in courses
* Courses with at least one student

### 🅴 Part E – Analytical Queries

* Course with max credits
* Students in multiple courses

### 🅵 Part F – Challenging

* Same course as `S401`
* Students with no enrollment

---

## 🔍 Dataset-Based Insights

* 📘 Query 7 → All **4-credit courses**
* 🚫 Query 9 → No result (uniform distribution)
* 🔁 Query 13 → Multiple results (ties)
* ❌ Query 14 → No multi-course students
* 🏫 Query 15 → All departments returned
* 🚫 Query 17 → No unenrolled students
* 🚫 Query 18 → No empty courses

---

## 🎓 Key Learning Outcomes

* ✔️ Execution flow of subqueries
* ✔️ Single vs multi-row logic
* ✔️ Use of `IN`, `EXISTS`, `NOT EXISTS`
* ✔️ Aggregation inside queries
* ✔️ Analytical thinking using SQL

---

## 📁 Project Structure

```text
SQL-SUBQUERY-Lab
|-- DB-Lab-7.pdf
|-- lab7_subqueries.sql
`-- README.md
```

---

## ▶️ How to Run

1. Open Oracle SQL*Plus / SQL Developer
2. Create tables
3. Insert data
4. Run:

```sql
@lab7_subqueries.sql
```

---

## 🧾 Conclusion

Subqueries allow queries to **depend on other queries**, enabling:

* Filtering 🔍
* Comparison ⚖️
* Existence checking ✔️
* Analytical querying 📊

This lab demonstrates real-world usage in a structured college database.

---

## 👤 Author

* **Himanshu Kumar Gupta**
* 🎓 B.Tech – CSE (AI & ML)
* 🏫 BP Mandal College of Engineering

🔗 GitHub: https://github.com/MrHimanshu21L

---

## 📜 License

MIT License © 2026 Himanshu
