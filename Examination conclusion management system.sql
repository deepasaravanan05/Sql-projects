-- ================================
-- DATABASE
-- ================================
CREATE DATABASE exam_result_db;
USE exam_result_db;

-- ================================
-- STUDENTS TABLE
-- ================================
CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    enrollment_no VARCHAR(20) UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO students (first_name, last_name, email, enrollment_no) VALUES
('Alice', 'Smith', 'alice@mail.com', 'ENR001'),
('Bob', 'Johnson', 'bob@mail.com', 'ENR002'),
('Charlie', 'Brown', 'charlie@mail.com', 'ENR003'),
('David', 'Williams', 'david@mail.com', 'ENR004'),
('Emma', 'Jones', 'emma@mail.com', 'ENR005'),
('Frank', 'Garcia', 'frank@mail.com', 'ENR006'),
('Grace', 'Martinez', 'grace@mail.com', 'ENR007'),
('Henry', 'Davis', 'henry@mail.com', 'ENR008'),
('Irene', 'Lopez', 'irene@mail.com', 'ENR009'),
('Jack', 'Wilson', 'jack@mail.com', 'ENR010');

-- ================================
-- COURSES TABLE
-- ================================
CREATE TABLE courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(100),
    course_code VARCHAR(20) UNIQUE
);

INSERT INTO courses (course_name, course_code) VALUES
('Mathematics', 'MATH101'),
('Physics', 'PHYS101'),
('Chemistry', 'CHEM101'),
('Biology', 'BIO101'),
('English', 'ENG101'),
('History', 'HIST101'),
('Geography', 'GEO101'),
('Computer Science', 'CS101'),
('Economics', 'ECON101'),
('Art', 'ART101');

-- ================================
-- TEACHERS TABLE
-- ================================
CREATE TABLE teachers (
    teacher_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE
);

INSERT INTO teachers (first_name, last_name, email) VALUES
('John', 'Miller', 'john@mail.com'),
('Sarah', 'Moore', 'sarah@mail.com'),
('James', 'Taylor', 'james@mail.com'),
('Patricia', 'Anderson', 'patricia@mail.com'),
('Robert', 'Thomas', 'robert@mail.com'),
('Linda', 'Jackson', 'linda@mail.com'),
('Michael', 'White', 'michael@mail.com'),
('Barbara', 'Harris', 'barbara@mail.com'),
('William', 'Martin', 'william@mail.com'),
('Elizabeth', 'Thompson', 'elizabeth@mail.com');

-- ================================
-- COURSE_ASSIGNMENTS TABLE
-- ================================
CREATE TABLE course_assignments (
    assignment_id INT PRIMARY KEY AUTO_INCREMENT,
    teacher_id INT,
    course_id INT,
    FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

INSERT INTO course_assignments (teacher_id, course_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- ================================
-- EXAMS TABLE
-- ================================
CREATE TABLE exams (
    exam_id INT PRIMARY KEY AUTO_INCREMENT,
    exam_name VARCHAR(100),
    course_id INT,
    exam_date DATE,
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

INSERT INTO exams (exam_name, course_id, exam_date) VALUES
('Midterm Mathematics', 1, '2026-02-15'),
('Midterm Physics', 2, '2026-02-16'),
('Midterm Chemistry', 3, '2026-02-17'),
('Midterm Biology', 4, '2026-02-18'),
('Midterm English', 5, '2026-02-19'),
('Midterm History', 6, '2026-02-20'),
('Midterm Geography', 7, '2026-02-21'),
('Midterm Computer Science', 8, '2026-02-22'),
('Midterm Economics', 9, '2026-02-23'),
('Midterm Art', 10, '2026-02-24');

-- ================================
-- RESULTS TABLE
-- ================================
CREATE TABLE results (
    result_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    exam_id INT,
    marks_obtained INT,
    max_marks INT,
    grade VARCHAR(2),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (exam_id) REFERENCES exams(exam_id)
);

INSERT INTO results (student_id, exam_id, marks_obtained, max_marks, grade) VALUES
(1, 1, 85, 100, 'A'),
(2, 2, 78, 100, 'B'),
(3, 3, 92, 100, 'A'),
(4, 4, 65, 100, 'C'),
(5, 5, 88, 100, 'A'),
(6, 6, 74, 100, 'B'),
(7, 7, 81, 100, 'B'),
(8, 8, 90, 100, 'A'),
(9, 9, 69, 100, 'C'),
(10, 10, 95, 100, 'A');
