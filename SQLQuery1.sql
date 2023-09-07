create database P2CEP
use P2CEP

create table Department
(DeptCode int primary key,
DeptName nvarchar(50) not null,
)

INSERT INTO Department (DeptCode, DeptName)
VALUES
    (1, 'HR'),
    (2, 'Tester'),
    (3, 'Developer'),
    (4, 'IT')

select * from Department

create table Employee (
    EmpCode INT PRIMARY KEY,
    EmpName NVARCHAR(50) NOT NULL,
    Email NVARCHAR(100) NOT NULL,
    DateOfBirth DATETIME NOT NULL,
    Department_Code INT,
    FOREIGN KEY (Department_Code) REFERENCES Department(DeptCode)
)

select * from Employee
