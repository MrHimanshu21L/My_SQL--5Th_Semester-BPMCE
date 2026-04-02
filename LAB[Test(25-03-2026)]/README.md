# 🏨 Hostel Management System — SQL Lab

A structured SQL-based implementation of a **Hostel Management System** demonstrating core database concepts including:

* Table creation with constraints
* Data insertion
* Basic queries
* JOIN operations
* GROUP BY & HAVING
* Advanced queries (aggregation, self-join)

---

## 📌 Objective

The objective of this project is to understand how relational databases work by:

* Designing multiple related tables
* Establishing relationships using **Primary Keys** and **Foreign Keys**
* Retrieving meaningful insights using **SQL queries**

---

## 🧱 Database Schema

### Tables Used:

1. **Student**
2. **Room**
3. **Warden**
4. **Allocation**

---

### 🔗 Relationships:

* A **Student** is allocated to a **Room**
* A **Warden** supervises students
* **Allocation** acts as a bridge between Student, Room, and Warden

```
Student ─┐
         ├── Allocation ─── Room
Warden ──┘
```

---

## ⚙️ SQL Operations Covered

### 🔹 1. Table Creation

* Defined structure using `CREATE TABLE`
* Applied constraints:

  * `PRIMARY KEY`
  * `FOREIGN KEY`

---

### 🔹 2. Data Insertion

* Inserted sample data into all tables using `INSERT INTO`

---

### 🔹 3. Basic Queries

* Select specific columns
* Filter data using `WHERE`
* Sort data using `ORDER BY`

---

### 🔹 4. JOIN Operations

* Combined multiple tables using:

  * `INNER JOIN`
* Retrieved:

  * Student + Room details
  * Student + Warden details

---

### 🔹 5. GROUP BY & HAVING

Used aggregation functions like:

* `COUNT()`

Key concepts:

* `GROUP BY` → grouping data
* `HAVING` → filtering grouped results

---

### 🔹 6. Advanced Queries

#### ✅ Room-wise Summary

* Count students in each room
* Included empty rooms using `LEFT JOIN`

#### ✅ Full Rooms

* Identified rooms where:

  ```
  Total Students = Capacity
  ```

#### ✅ Warden Analysis

* Found wardens handling more than one student

#### ✅ Self Join (Important)

* Identified students staying in the same room

---

## 📊 Sample Query

```sql
SELECT r.RoomID, r.Capacity, COUNT(a.StudentID) AS TotalStudents
FROM Room r
LEFT JOIN Allocation a ON r.RoomID = a.RoomID
GROUP BY r.RoomID, r.Capacity;
```

---

## 🧠 Key Learnings

* Difference between `INNER JOIN` and `LEFT JOIN`
* Importance of **bridge tables** (Allocation)
* How `GROUP BY` organizes data
* Role of `HAVING` in filtering aggregated results
* Concept of **Self Join**

---

## 🚀 How to Run

1. Open MySQL / SQL environment
2. Run table creation queries
3. Insert data
4. Execute queries step-by-step

---

## 📌 Use Cases

* Hostel Management Systems
* College Database Systems
* Resource Allocation Systems

---

## 🏁 Conclusion

This project builds a strong foundation in SQL by combining:

* Data modeling
* Query writing
* Logical thinking

It is ideal for beginners aiming to master **real-world database operations**.

---

## 🧑‍🎓 Author

- Name - Himanshu Kumar Gupta
- Reg No - 23157128056
- Course - B.tech
- Branch - Cse (AI & ML)
- Subject - Database Lab
- College - BP Mandal college of engineering, Madhepura
