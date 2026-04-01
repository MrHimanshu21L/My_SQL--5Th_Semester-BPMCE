# 🏨 Hostel Management System — SQL Lab

A complete SQL-based implementation of a **Hostel Management System** demonstrating relational database design, data manipulation, and query execution.

This project covers everything from **table creation to advanced SQL queries**, making it ideal for academic labs and concept building.

---

## 📌 Objective

The objective of this project is to:

- Design a relational database schema  
- Establish relationships using **Primary Keys** and **Foreign Keys**  
- Perform data retrieval using SQL  
- Apply **JOIN, GROUP BY, HAVING, and SELF JOIN** concepts  

---

## 🧠 Conceptual Model


Student ─┐
├── Allocation ─── Room
Warden ──┘


### 🔍 Explanation

- **Student** is assigned to a **Room**  
- **Warden** supervises students  
- **Allocation** acts as a **bridge table** connecting all entities  

---

## 🧱 Database Schema

### 📊 Tables

#### 🔹 Student
- `StudentID` (Primary Key)  
- `Name`  
- `Gender`  
- `DepartmentID`  
- `Contact`  

#### 🔹 Room
- `RoomID` (Primary Key)  
- `Block`  
- `Capacity`  

#### 🔹 Warden
- `WardenID` (Primary Key)  
- `Name`  
- `Contact`  

#### 🔹 Allocation
- `StudentID` (FK)  
- `RoomID` (FK)  
- `WardenID` (FK)  
- `AllotmentDate`  

---

## ⚙️ SQL Operations Covered

### 🔹 1. Table Creation
- Defined tables using `CREATE TABLE`  
- Applied constraints:
  - `PRIMARY KEY`  
  - `FOREIGN KEY`  

---

### 🔹 2. Data Insertion
- Inserted sample data using `INSERT INTO`  
- Maintained correct order to avoid foreign key errors  

---

### 🔹 3. Basic Queries
- `SELECT` specific columns  
- `WHERE` for filtering  
- `ORDER BY` for sorting  

---

### 🔹 4. JOIN Operations
- Used `INNER JOIN` to combine tables  
- Retrieved:
  - Student + Room details  
  - Student + Warden details  

---

### 🔹 5. GROUP BY & HAVING

- `GROUP BY` → groups rows  
- `COUNT()` → aggregation  
- `HAVING` → filters grouped data  

---

### 🔹 6. Advanced Queries

#### ✅ Room-wise Summary
- Displays RoomID, Capacity, and number of students  
- Uses `LEFT JOIN` to include empty rooms  

#### ✅ Full Rooms
- Identifies rooms where:

Total Students = Capacity


#### ✅ Warden Analysis
- Finds wardens handling more than one student  

#### ✅ Self Join (Important)
- Identifies students staying in the same room  

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

- Difference between `INNER JOIN` and `LEFT JOIN`  
- Importance of **bridge tables (Allocation)**  
- How `GROUP BY` organizes data  
- Role of `HAVING` vs `WHERE`  
- Concept of **Self Join**  

---

## 🚀 How to Run

1. Run table creation queries  
2. Insert data into tables  
3. Execute SQL queries step-by-step  
4. Verify outputs  

---

## 📌 Use Cases

- Hostel Management Systems  
- College Databases  
- Resource Allocation Systems  

