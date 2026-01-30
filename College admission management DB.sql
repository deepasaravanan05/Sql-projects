/* ================================
    GENIUS GROVE COLLEGE ADMISSION MANAGEMENT DB
   ================================ */

-- Create Database
CREATE DATABASE college_admission;
USE college_admission;

-- =====================
-- TABLE: Students
-- =====================
CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(10),
    date_of_birth DATE,
    email VARCHAR(100),
    phone VARCHAR(15)
);

INSERT INTO students VALUES
(1,'Rahul','Sharma','Male','2004-02-12','rahul@gmail.com','9876543210'),
(2,'Anita','Verma','Female','2003-08-25','anita@gmail.com','9876543211'),
(3,'Amit','Patel','Male','2004-01-15','amit@gmail.com','9876543212'),
(4,'Neha','Singh','Female','2003-11-10','neha@gmail.com','9876543213'),
(5,'Rohit','Mehta','Male','2004-06-18','rohit@gmail.com','9876543214'),
(6,'Pooja','Nair','Female','2003-04-05','pooja@gmail.com','9876543215'),
(7,'Karan','Malhotra','Male','2004-09-09','karan@gmail.com','9876543216'),
(8,'Sneha','Iyer','Female','2003-12-20','sneha@gmail.com','9876543217'),
(9,'Vikas','Gupta','Male','2004-07-30','vikas@gmail.com','9876543218'),
(10,'Riya','Kapoor','Female','2003-03-14','riya@gmail.com','9876543219');

-- =====================
-- TABLE: Courses
-- =====================
CREATE TABLE courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(100),
    department VARCHAR(100),
    duration_years INT,
    seats_available INT
);

INSERT INTO courses VALUES
(1,'BSc Computer Science','Science',3,60),
(2,'BCom','Commerce',3,80),
(3,'BA English','Arts',3,40),
(4,'BBA','Management',3,50),
(5,'BSc Mathematics','Science',3,30),
(6,'BCA','Computer Applications',3,70),
(7,'BA Economics','Arts',3,45),
(8,'BCom Finance','Commerce',3,60),
(9,'BSc Physics','Science',3,35),
(10,'BA Psychology','Arts',3,40);

-- =====================
-- TABLE: Applications
-- =====================
CREATE TABLE applications (
    application_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    application_date DATE,
    status VARCHAR(20),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

INSERT INTO applications VALUES
(1,1,1,'2024-06-01','Approved'),
(2,2,4,'2024-06-02','Approved'),
(3,3,2,'2024-06-03','Pending'),
(4,4,3,'2024-06-04','Approved'),
(5,5,6,'2024-06-05','Rejected'),
(6,6,10,'2024-06-06','Approved'),
(7,7,5,'2024-06-07','Pending'),
(8,8,8,'2024-06-08','Approved'),
(9,9,7,'2024-06-09','Pending'),
(10,10,9,'2024-06-10','Approved');

-- =====================
-- TABLE: Admissions
-- =====================
CREATE TABLE admissions (
    admission_id INT PRIMARY KEY AUTO_INCREMENT,
    application_id INT,
    admission_date DATE,
    fee_paid DECIMAL(10,2),
    FOREIGN KEY (application_id) REFERENCES applications(application_id)
);

INSERT INTO admissions VALUES
(1,1,'2024-07-01',50000),
(2,2,'2024-07-02',55000),
(3,3,'2024-07-03',48000),
(4,4,'2024-07-04',45000),
(5,5,'2024-07-05',52000),
(6,6,'2024-07-06',47000),
(7,7,'2024-07-07',49000),
(8,8,'2024-07-08',53000),
(9,9,'2024-07-09',46000),
(10,10,'2024-07-10',51000);

-- =====================
-- END OF FILE
-- ==================



USE college_admission;
select *from applications;
select *from courses;
select *from students;
select *from admissions;


