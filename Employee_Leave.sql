CREATE DATABASE LeaveManagement;

USE LeaveManagement;

CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    total_leaves INT
);

CREATE TABLE Leaves (
    leave_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_id INT,
    leave_date DATE,
    leave_type VARCHAR(20),
    FOREIGN KEY (emp_id) REFERENCES Employees(emp_id)
);

INSERT INTO Employees VALUES
(1, 'Ram', 'HR', 20),
(2, 'Shyam', 'IT', 18),
(3, 'Anita', 'Finance', 22);

INSERT INTO Leaves (emp_id, leave_date, leave_type) VALUES
(1, '2026-04-01', 'Sick'),
(1, '2026-04-02', 'Casual'),
(2, '2026-04-03', 'Sick'),
(3, '2026-04-05', 'Casual'),
(3, '2026-04-06', 'Casual');

SELECT * FROM Employees;
SELECT * FROM Leaves;

#Employees with Most Leaves

SELECT e.name, COUNT(l.leave_id) AS total_taken
FROM Employees e
JOIN Leaves l ON e.emp_id = l.emp_id
GROUP BY e.emp_id
ORDER BY total_taken DESC;

#Remaining Leave Balance

SELECT e.name,
       e.total_leaves - COUNT(l.leave_id) AS remaining_leaves
FROM Employees e
LEFT JOIN Leaves l ON e.emp_id = l.emp_id
GROUP BY e.emp_id;

#Monthly Leave Report

SELECT e.name,
       MONTH(l.leave_date) AS month,
       COUNT(l.leave_id) AS leaves_taken
FROM Employees e
JOIN Leaves l ON e.emp_id = l.emp_id
GROUP BY e.emp_id, MONTH(l.leave_date);



