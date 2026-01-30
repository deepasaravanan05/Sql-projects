-- =====================================
-- DATABASE CREATION
-- =====================================
CREATE DATABASE dermatologist_appointment_db;
USE dermatologist_appointment_db;

-- =====================================
-- TABLE: Dermatologist
-- =====================================
CREATE TABLE dermatologist (
    doctor_id INT PRIMARY KEY,
    doctor_name VARCHAR(100),
    qualification VARCHAR(100),
    experience INT,
    contact_no VARCHAR(15)
);

INSERT INTO dermatologist VALUES
(1,'Dr. Priya Malhotra','MD Dermatology',12,'9100000001'),
(2,'Dr. Rahul Khanna','MD Dermatology',15,'9100000002'),
(3,'Dr. Sneha Iyer','DDVL',9,'9100000003'),
(4,'Dr. Amit Shah','MD Dermatology',18,'9100000004'),
(5,'Dr. Kavita Joshi','DDVL',10,'9100000005'),
(6,'Dr. Nitin Rao','MD Dermatology',14,'9100000006'),
(7,'Dr. Ritu Agarwal','MD Dermatology',11,'9100000007'),
(8,'Dr. Sandeep Mehta','DDVL',16,'9100000008'),
(9,'Dr. Neha Kapoor','MD Dermatology',8,'9100000009'),
(10,'Dr. Varun Patel','MD Dermatology',20,'9100000010');

-- =====================================
-- TABLE: Patient
-- =====================================
CREATE TABLE patient (
    patient_id INT PRIMARY KEY,
    patient_name VARCHAR(100),
    gender VARCHAR(10),
    age INT,
    contact_no VARCHAR(15),
    address VARCHAR(200)
);

INSERT INTO patient VALUES
(1,'Aarav Singh','Male',28,'9111111111','Delhi'),
(2,'Nisha Verma','Female',32,'9222222222','Mumbai'),
(3,'Karan Mehta','Male',24,'9333333333','Ahmedabad'),
(4,'Pooja Sharma','Female',29,'9444444444','Jaipur'),
(5,'Rohit Patel','Male',35,'9555555555','Surat'),
(6,'Anita Nair','Female',41,'9666666666','Kochi'),
(7,'Siddharth Roy','Male',27,'9777777777','Kolkata'),
(8,'Meenal Joshi','Female',33,'9888888888','Pune'),
(9,'Vivek Khanna','Male',38,'9999999999','Gurgaon'),
(10,'Sunita Rao','Female',45,'9000000000','Hyderabad');

-- =====================================
-- TABLE: Appointment
-- =====================================
CREATE TABLE appointment (
    appointment_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATE,
    appointment_time TIME,
    status VARCHAR(30),
    FOREIGN KEY (patient_id) REFERENCES patient(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES dermatologist(doctor_id)
);

INSERT INTO appointment VALUES
(1,1,1,'2025-02-05','10:00:00','Confirmed'),
(2,2,2,'2025-02-05','10:30:00','Confirmed'),
(3,3,3,'2025-02-06','11:00:00','Pending'),
(4,4,4,'2025-02-06','11:30:00','Confirmed'),
(5,5,5,'2025-02-07','12:00:00','Cancelled'),
(6,6,6,'2025-02-07','12:30:00','Confirmed'),
(7,7,7,'2025-02-08','10:00:00','Confirmed'),
(8,8,8,'2025-02-08','10:30:00','Pending'),
(9,9,9,'2025-02-09','11:00:00','Confirmed'),
(10,10,10,'2025-02-09','11:30:00','Confirmed');

-- =====================================
-- TABLE: Diagnosis
-- =====================================
CREATE TABLE diagnosis (
    diagnosis_id INT PRIMARY KEY,
    patient_id INT,
    skin_condition VARCHAR(100),
    severity VARCHAR(30),
    FOREIGN KEY (patient_id) REFERENCES patient(patient_id)
);

INSERT INTO diagnosis VALUES
(1,1,'Acne','Mild'),
(2,2,'Eczema','Moderate'),
(3,3,'Psoriasis','Severe'),
(4,4,'Fungal Infection','Mild'),
(5,5,'Vitiligo','Moderate'),
(6,6,'Allergic Rash','Mild'),
(7,7,'Dermatitis','Moderate'),
(8,8,'Rosacea','Mild'),
(9,9,'Skin Allergy','Severe'),
(10,10,'Pigmentation','Moderate');


 USE dermatologist_appointment_db;
 select* from dermatologist;
 select*from appointment;
 select*from patient;
 select *from diagnosis;
 