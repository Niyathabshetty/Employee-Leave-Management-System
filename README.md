# Employee Leave Management System

##  Problem Statement

Develop a SQL-based system to track employee leaves and generate useful reports such as leave usage, remaining balance, and monthly analysis.

## Features

* Store employee details
* Track leave records
* Calculate total leaves taken
* Identify employees with most leaves
* Calculate remaining leave balance
* Generate monthly leave reports

---

## Technologies Used

* MySQL
* SQL (DDL, DML, Queries)
* Joins, Aggregation Functions

---

## Database Structure

### Employees Table

* `emp_id` → Employee ID
* `name` → Employee Name
* `department` → Department
* `total_leaves` → Total leave entitlement

### Leaves Table

* `leave_id` → Leave ID
* `emp_id` → Employee reference
* `leave_date` → Date of leave
* `leave_type` → Type (Sick/Casual)

---

## How to Run

1. Open MySQL Workbench
2. Run the SQL script step by step:

   * Create database
   * Create tables
   * Insert data
   * Execute queries

---

## Output Screenshots

<div align="center">

<img src="screenshots/Employee_Table.png" width="400"/><br>
<b>Employees Table</b>

<br><br>

<img src="screenshots/Leaves_Table.png" width="400"/><br>
<b>Leaves Table</b>

<br><br>

<img src="screenshots/query1.png" width="400"/><br>
<b>Employees with Most Leaves</b>

<br><br>

<img src="screenshots/query2.png" width="400"/><br>
<b>Remaining Leave Balance</b>

<br><br>

<img src="screenshots/query3.png" width="400"/><br>
<b>Monthly Leave Report</b>

</div>

---
