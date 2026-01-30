-- =====================================
-- DATABASE CREATION
-- =====================================
CREATE DATABASE employee_payroll_db;
USE employee_payroll_db;

-- =====================================
-- TABLE: Department
-- =====================================
CREATE TABLE department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(50)
);

INSERT INTO department VALUES
(1,'HR','Delhi'),
(2,'Finance','Mumbai'),
(3,'IT','Bangalore'),
(4,'Sales','Chennai'),
(5,'Marketing','Pune'),
(6,'Admin','Hyderabad'),
(7,'Support','Noida'),
(8,'Operations','Kolkata'),
(9,'R&D','Ahmedabad'),
(10,'Security','Jaipur');

-- =====================================
-- TABLE: Employee
-- =====================================
CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    gender VARCHAR(10),
    dob DATE,
    hire_date DATE,
    dept_id INT,
    designation VARCHAR(50),
    FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);

INSERT INTO employee VALUES
(101,'Amit Sharma','Male','1990-05-12','2016-06-01',1,'HR Executive'),
(102,'Neha Verma','Female','1989-08-22','2017-07-15',2,'Accountant'),
(103,'Rohit Singh','Male','1992-03-10','2018-02-10',3,'Software Engineer'),
(104,'Pooja Mehta','Female','1994-11-18','2019-09-05',4,'Sales Officer'),
(105,'Sandeep Kumar','Male','1987-01-25','2015-04-12',5,'Marketing Manager'),
(106,'Kiran Rao','Female','1993-06-30','2020-08-20',6,'Admin Officer'),
(107,'Vikas Gupta','Male','1991-09-14','2017-10-01',7,'Support Engineer'),
(108,'Anjali Nair','Female','1995-02-08','2021-03-15',8,'Operations Analyst'),
(109,'Manoj Patel','Male','1988-12-05','2016-11-22',9,'Research Scientist'),
(110,'Sneha Joshi','Female','1996-07-19','2022-01-10',10,'Security Supervisor');

-- =====================================
-- TABLE: Salary
-- =====================================
CREATE TABLE salary (
    salary_id INT PRIMARY KEY,
    emp_id INT,
    basic_salary DECIMAL(10,2),
    hra DECIMAL(10,2),
    da DECIMAL(10,2),
    FOREIGN KEY (emp_id) REFERENCES employee(emp_id)
);

INSERT INTO salary VALUES
(1,101,30000,6000,3000),
(2,102,35000,7000,3500),
(3,103,45000,9000,4500),
(4,104,32000,6500,3200),
(5,105,50000,10000,5000),
(6,106,28000,5600,2800),
(7,107,34000,6800,3400),
(8,108,38000,7600,3800),
(9,109,42000,8400,4200),
(10,110,30000,6000,3000);

-- =====================================
-- TABLE: Attendance
-- =====================================
CREATE TABLE attendance (
    attendance_id INT PRIMARY KEY,
    emp_id INT,
    month VARCHAR(20),
    working_days INT,
    present_days INT,
    FOREIGN KEY (emp_id) REFERENCES employee(emp_id)
);

INSERT INTO attendance VALUES
(1,101,'January',26,25),
(2,102,'January',26,24),
(3,103,'January',26,26),
(4,104,'January',26,23),
(5,105,'January',26,25),
(6,106,'January',26,24),
(7,107,'January',26,26),
(8,108,'January',26,25),
(9,109,'January',26,24),
(10,110,'January',26,26);

-- =====================================
-- TABLE: Payroll
-- =====================================
CREATE TABLE payroll (
    payroll_id INT PRIMARY KEY,
    emp_id INT,
    month VARCHAR(20),
    gross_salary DECIMAL(10,2),
    deductions DECIMAL(10,2),
    net_salary DECIMAL(10,2),
    payment_date DATE,
    FOREIGN KEY (emp_id) REFERENCES employee(emp_id)
);

INSERT INTO payroll VALUES
(1,101,'January',39000,2000,37000,'2025-01-31'),
(2,102,'January',45500,2500,43000,'2025-01-31'),
(3,103,'January',58500,3000,55500,'2025-01-31'),
(4,104,'January',41700,2200,39500,'2025-01-31'),
(5,105,'January',65000,3500,61500,'2025-01-31'),
(6,106,'January',36400,1800,34600,'2025-01-31'),
(7,107,'January',44200,2300,41900,'2025-01-31'),
(8,108,'January',49400,2600,46800,'2025-01-31'),
(9,109,'January',54600,2800,51800,'2025-01-31'),
(10,110,'January',39000,2000,37000,'2025-01-31');


-- =====================================
-- DATABASE CREATION
-- =====================================
CREATE DATABASE employee_payroll_db;
USE employee_payroll_db;

-- =====================================
-- TABLE: Department
-- =====================================
CREATE TABLE department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(50)
);

INSERT INTO department VALUES
(1,'HR','Delhi'),
(2,'Finance','Mumbai'),
(3,'IT','Bangalore'),
(4,'Sales','Chennai'),
(5,'Marketing','Pune'),
(6,'Admin','Hyderabad'),
(7,'Support','Noida'),
(8,'Operations','Kolkata'),
(9,'R&D','Ahmedabad'),
(10,'Security','Jaipur');

-- =====================================
-- TABLE: Employee
-- =====================================
CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    gender VARCHAR(10),
    dob DATE,
    hire_date DATE,
    dept_id INT,
    designation VARCHAR(50),
    FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);

INSERT INTO employee VALUES
(101,'Amit Sharma','Male','1990-05-12','2016-06-01',1,'HR Executive'),
(102,'Neha Verma','Female','1989-08-22','2017-07-15',2,'Accountant'),
(103,'Rohit Singh','Male','1992-03-10','2018-02-10',3,'Software Engineer'),
(104,'Pooja Mehta','Female','1994-11-18','2019-09-05',4,'Sales Officer'),
(105,'Sandeep Kumar','Male','1987-01-25','2015-04-12',5,'Marketing Manager'),
(106,'Kiran Rao','Female','1993-06-30','2020-08-20',6,'Admin Officer'),
(107,'Vikas Gupta','Male','1991-09-14','2017-10-01',7,'Support Engineer'),
(108,'Anjali Nair','Female','1995-02-08','2021-03-15',8,'Operations Analyst'),
(109,'Manoj Patel','Male','1988-12-05','2016-11-22',9,'Research Scientist'),
(110,'Sneha Joshi','Female','1996-07-19','2022-01-10',10,'Security Supervisor');

-- =====================================
-- TABLE: Salary
-- =====================================
CREATE TABLE salary (
    salary_id INT PRIMARY KEY,
    emp_id INT,
    basic_salary DECIMAL(10,2),
    hra DECIMAL(10,2),
    da DECIMAL(10,2),
    FOREIGN KEY (emp_id) REFERENCES employee(emp_id)
);

INSERT INTO salary VALUES
(1,101,30000,6000,3000),
(2,102,35000,7000,3500),
(3,103,45000,9000,4500),
(4,104,32000,6500,3200),
(5,105,50000,10000,5000),
(6,106,28000,5600,2800),
(7,107,34000,6800,3400),
(8,108,38000,7600,3800),
(9,109,42000,8400,4200),
(10,110,30000,6000,3000);

-- =====================================
-- TABLE: Attendance
-- =====================================
CREATE TABLE attendance (
    attendance_id INT PRIMARY KEY,
    emp_id INT,
    month VARCHAR(20),
    working_days INT,
    present_days INT,
    FOREIGN KEY (emp_id) REFERENCES employee(emp_id)
);

INSERT INTO attendance VALUES
(1,101,'January',26,25),
(2,102,'January',26,24),
(3,103,'January',26,26),
(4,104,'January',26,23),
(5,105,'January',26,25),
(6,106,'January',26,24),
(7,107,'January',26,26),
(8,108,'January',26,25),
(9,109,'January',26,24),
(10,110,'January',26,26);

-- =====================================
-- TABLE: Payroll
-- =====================================
CREATE TABLE payroll (
    payroll_id INT PRIMARY KEY,
    emp_id INT,
    month VARCHAR(20),
    gross_salary DECIMAL(10,2),
    deductions DECIMAL(10,2),
    net_salary DECIMAL(10,2),
    payment_date DATE,
    FOREIGN KEY (emp_id) REFERENCES employee(emp_id)
);

INSERT INTO payroll VALUES
(1,101,'January',39000,2000,37000,'2025-01-31'),
(2,102,'January',45500,2500,43000,'2025-01-31'),
(3,103,'January',58500,3000,55500,'2025-01-31'),
(4,104,'January',41700,2200,39500,'2025-01-31'),
(5,105,'January',65000,3500,61500,'2025-01-31'),
(6,106,'January',36400,1800,34600,'2025-01-31'),
(7,107,'January',44200,2300,41900,'2025-01-31'),
(8,108,'January',49400,2600,46800,'2025-01-31'),
(9,109,'January',54600,2800,51800,'2025-01-31'),
(10,110,'January',39000,2000,37000,'2025-01-31');

-- =====================================
-- DATABASE CREATION
-- =====================================
CREATE DATABASE employee_payroll_db;
USE employee_payroll_db;

-- =====================================
-- TABLE: Department
-- =====================================
CREATE TABLE department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(50)
);

INSERT INTO department VALUES
(1,'HR','Delhi'),
(2,'Finance','Mumbai'),
(3,'IT','Bangalore'),
(4,'Sales','Chennai'),
(5,'Marketing','Pune'),
(6,'Admin','Hyderabad'),
(7,'Support','Noida'),
(8,'Operations','Kolkata'),
(9,'R&D','Ahmedabad'),
(10,'Security','Jaipur');

-- =====================================
-- TABLE: Employee
-- =====================================
CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    gender VARCHAR(10),
    dob DATE,
    hire_date DATE,
    dept_id INT,
    designation VARCHAR(50),
    FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);

INSERT INTO employee VALUES
(101,'Amit Sharma','Male','1990-05-12','2016-06-01',1,'HR Executive'),
(102,'Neha Verma','Female','1989-08-22','2017-07-15',2,'Accountant'),
(103,'Rohit Singh','Male','1992-03-10','2018-02-10',3,'Software Engineer'),
(104,'Pooja Mehta','Female','1994-11-18','2019-09-05',4,'Sales Officer'),
(105,'Sandeep Kumar','Male','1987-01-25','2015-04-12',5,'Marketing Manager'),
(106,'Kiran Rao','Female','1993-06-30','2020-08-20',6,'Admin Officer'),
(107,'Vikas Gupta','Male','1991-09-14','2017-10-01',7,'Support Engineer'),
(108,'Anjali Nair','Female','1995-02-08','2021-03-15',8,'Operations Analyst'),
(109,'Manoj Patel','Male','1988-12-05','2016-11-22',9,'Research Scientist'),
(110,'Sneha Joshi','Female','1996-07-19','2022-01-10',10,'Security Supervisor');

-- =====================================
-- TABLE: Salary
-- =====================================
CREATE TABLE salary (
    salary_id INT PRIMARY KEY,
    emp_id INT,
    basic_salary DECIMAL(10,2),
    hra DECIMAL(10,2),
    da DECIMAL(10,2),
    FOREIGN KEY (emp_id) REFERENCES employee(emp_id)
);

INSERT INTO salary VALUES
(1,101,30000,6000,3000),
(2,102,35000,7000,3500),
(3,103,45000,9000,4500),
(4,104,32000,6500,3200),
(5,105,50000,10000,5000),
(6,106,28000,5600,2800),
(7,107,34000,6800,3400),
(8,108,38000,7600,3800),
(9,109,42000,8400,4200),
(10,110,30000,6000,3000);

-- =====================================
-- TABLE: Attendance
-- =====================================
CREATE TABLE attendance (
    attendance_id INT PRIMARY KEY,
    emp_id INT,
    month VARCHAR(20),
    working_days INT,
    present_days INT,
    FOREIGN KEY (emp_id) REFERENCES employee(emp_id)
);

INSERT INTO attendance VALUES
(1,101,'January',26,25),
(2,102,'January',26,24),
(3,103,'January',26,26),
(4,104,'January',26,23),
(5,105,'January',26,25),
(6,106,'January',26,24),
(7,107,'January',26,26),
(8,108,'January',26,25),
(9,109,'January',26,24),
(10,110,'January',26,26);

-- =====================================
-- TABLE: Payroll
-- =====================================
CREATE TABLE payroll (
    payroll_id INT PRIMARY KEY,
    emp_id INT,
    month VARCHAR(20),
    gross_salary DECIMAL(10,2),
    deductions DECIMAL(10,2),
    net_salary DECIMAL(10,2),
    payment_date DATE,
    FOREIGN KEY (emp_id) REFERENCES employee(emp_id)
);

INSERT INTO payroll VALUES
(1,101,'January',39000,2000,37000,'2025-01-31'),
(2,102,'January',45500,2500,43000,'2025-01-31'),
(3,103,'January',58500,3000,55500,'2025-01-31'),
(4,104,'January',41700,2200,39500,'2025-01-31'),
(5,105,'January',65000,3500,61500,'2025-01-31'),
(6,106,'January',36400,1800,34600,'2025-01-31'),
(7,107,'January',44200,2300,41900,'2025-01-31'),
(8,108,'January',49400,2600,46800,'2025-01-31'),
(9,109,'January',54600,2800,51800,'2025-01-31'),
(10,110,'January',39000,2000,37000,'2025-01-31');


USE employee_payroll_db;

select*from attendance;
select*from department;
select*from employee;
select*from payroll;
select*from salary;


