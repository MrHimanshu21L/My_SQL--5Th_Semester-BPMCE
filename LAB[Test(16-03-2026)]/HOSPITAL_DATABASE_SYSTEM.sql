/* =========================================================
   Q1: CREATE TABLES FOR HOSPITAL DATABASE SYSTEM
========================================================= */

CREATE TABLE Patient (
    patient_id INT PRIMARY KEY,
    patient_name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    city VARCHAR(50)
);

CREATE TABLE Doctor (
    doctor_id INT PRIMARY KEY,
    doctor_name VARCHAR(50),
    specialization VARCHAR(50),
    experience INT
);

CREATE TABLE Appointment (
    appointment_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    FOREIGN KEY (patient_id) REFERENCES Patient(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctor(doctor_id)
);

CREATE TABLE Bill (
    bill_id INT PRIMARY KEY,
    appointment_id INT,
    amount INT,
    payment_status VARCHAR(20),
    FOREIGN KEY (appointment_id) REFERENCES Appointment(appointment_id)
);


/* ================================
  Q2. INSERT DATA (ALL TABLES)
================================ */

/* ---------- Patient ---------- */

INSERT INTO Patient VALUES (1, 'Rahul Sharma', 35, 'Male', 'Delhi');
INSERT INTO Patient VALUES (2, 'Anita Verma', 28, 'Female', 'Mumbai');
INSERT INTO Patient VALUES (3, 'Suresh Kumar', 42, 'Male', 'Chennai');
INSERT INTO Patient VALUES (4, 'Priya Singh', 30, 'Female', 'Kolkata');
INSERT INTO Patient VALUES (5, 'Amit Das', 50, 'Male', 'Bhubaneswar');


/* ---------- Doctor ---------- */

INSERT INTO Doctor VALUES (101, 'Dr. Mehta', 'Cardiology', 15);
INSERT INTO Doctor VALUES (102, 'Dr. Rao', 'Orthopedics', 10);
INSERT INTO Doctor VALUES (103, 'Dr. Sen', 'Neurology', 12);
INSERT INTO Doctor VALUES (104, 'Dr. Gupta', 'Dermatology', 8);
INSERT INTO Doctor VALUES (105, 'Dr. Iyer', 'General Medicine', 20);


/* ---------- Appointment ---------- */

INSERT INTO Appointment VALUES (1001, 1, 101, '2024-02-10');
INSERT INTO Appointment VALUES (1002, 2, 105, '2024-02-11');
INSERT INTO Appointment VALUES (1003, 3, 102, '2024-02-12');
INSERT INTO Appointment VALUES (1004, 4, 103, '2024-02-13');
INSERT INTO Appointment VALUES (1005, 5, 101, '2024-02-14');


/* ---------- Bill ---------- */

INSERT INTO Bill VALUES (5001, 1001, 2000, 'Paid');
INSERT INTO Bill VALUES (5002, 1002, 1500, 'Pending');
INSERT INTO Bill VALUES (5003, 1003, 3000, 'Paid');
INSERT INTO Bill VALUES (5004, 1004, 4000, 'Paid');
INSERT INTO Bill VALUES (5005, 1005, 2500, 'Pending');


/* =========================================================
   Q3: SQL QUERIES USING JOINS
========================================================= */


/* ---------------------------------------------------------
   Q3.1: DISPLAY PATIENT NAME, DOCTOR NAME, APPOINTMENT DATE
--------------------------------------------------------- */

SELECT p.patient_name, d.doctor_name, a.appointment_date
FROM Patient p
JOIN Appointment a ON p.patient_id = a.patient_id
JOIN Doctor d ON a.doctor_id = d.doctor_id;

/*
+----------------+-------------+------------------+
| patient_name   | doctor_name | appointment_date |
+----------------+-------------+------------------+
| Rahul Sharma   | Dr. Mehta   | 2024-02-10       |
| Anita Verma    | Dr. Iyer    | 2024-02-11       |
| Suresh Kumar   | Dr. Rao     | 2024-02-12       |
| Priya Singh    | Dr. Sen     | 2024-02-13       |
| Amit Das       | Dr. Mehta   | 2024-02-14       |
+----------------+-------------+------------------+
*/


/* ---------------------------------------------------------
   Q3.2: PATIENTS WHO CONSULTED CARDIOLOGY DOCTOR
--------------------------------------------------------- */

SELECT p.patient_name
FROM Patient p
JOIN Appointment a ON p.patient_id = a.patient_id
JOIN Doctor d ON a.doctor_id = d.doctor_id
WHERE d.specialization = 'Cardiology';

/*
+----------------+
| patient_name   |
+----------------+
| Rahul Sharma   |
| Amit Das       |
+----------------+
*/


/* ---------------------------------------------------------
   Q3.3: PATIENT NAME, DOCTOR NAME, BILL AMOUNT (PAID)
--------------------------------------------------------- */

SELECT p.patient_name, d.doctor_name, b.amount
FROM Patient p
JOIN Appointment a ON p.patient_id = a.patient_id
JOIN Doctor d ON a.doctor_id = d.doctor_id
JOIN Bill b ON a.appointment_id = b.appointment_id
WHERE b.payment_status = 'Paid';

/*
+----------------+-------------+--------+
| patient_name   | doctor_name | amount |
+----------------+-------------+--------+
| Rahul Sharma   | Dr. Mehta   | 2000   |
| Suresh Kumar   | Dr. Rao     | 3000   |
| Priya Singh    | Dr. Sen     | 4000   |
+----------------+-------------+--------+
*/


/* ---------------------------------------------------------
   Q3.4: TOTAL BILL AMOUNT BY EACH DOCTOR
--------------------------------------------------------- */

SELECT d.doctor_name, SUM(b.amount) AS total_amount
FROM Doctor d
JOIN Appointment a ON d.doctor_id = a.doctor_id
JOIN Bill b ON a.appointment_id = b.appointment_id
GROUP BY d.doctor_name;

/*
+-------------+--------------+
| doctor_name | total_amount |
+-------------+--------------+
| Dr. Mehta   | 4500         |
| Dr. Iyer    | 1500         |
| Dr. Rao     | 3000         |
| Dr. Sen     | 4000         |
+-------------+--------------+
*/


/* ---------------------------------------------------------
   Q3.5: PATIENTS WITH PENDING BILLS
--------------------------------------------------------- */

SELECT p.patient_name
FROM Patient p
JOIN Appointment a ON p.patient_id = a.patient_id
JOIN Bill b ON a.appointment_id = b.appointment_id
WHERE b.payment_status = 'Pending';

/*
+----------------+
| patient_name   |
+----------------+
| Anita Verma    |
| Amit Das       |
+----------------+
*/


/* ---------------------------------------------------------
   Q3.6: DOCTORS WHO TREATED PATIENTS AGE > 40
--------------------------------------------------------- */

SELECT DISTINCT d.doctor_name
FROM Doctor d
JOIN Appointment a ON d.doctor_id = a.doctor_id
JOIN Patient p ON a.patient_id = p.patient_id
WHERE p.age > 40;

/*
+-------------+
| doctor_name |
+-------------+
| Dr. Rao     |
| Dr. Mehta   |
+-------------+
*/


/* ---------------------------------------------------------
   Q3.7: NUMBER OF APPOINTMENTS PER DOCTOR
--------------------------------------------------------- */

SELECT d.doctor_name, COUNT(a.appointment_id) AS total_appointments
FROM Doctor d
JOIN Appointment a ON d.doctor_id = a.doctor_id
GROUP BY d.doctor_name;

/*
+-------------+--------------------+
| doctor_name | total_appointments |
+-------------+--------------------+
| Dr. Mehta   | 2                  |
| Dr. Iyer    | 1                  |
| Dr. Rao     | 1                  |
| Dr. Sen     | 1                  |
+-------------+--------------------+
*/
