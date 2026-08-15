# Employee Database Management using MySQL

## 🚀 Project Overview

This project demonstrates the implementation of **MySQL Data Definition Language (DDL)** and data querying operations for an **Employee Database**. The database is designed around three related tables — **Departments, Locations, and Employees** — using appropriate **Primary Keys, Foreign Keys, UNIQUE constraints, CHECK constraints, and default values** to maintain data integrity.

The project covers database creation, table creation, schema modification, data insertion, filtering, sorting, aggregation, grouping, HAVING conditions, and different types of SQL joins using MySQL.

---

## 🎯 Project Objectives

- Create an Employee Database using MySQL.
- Design relational tables with appropriate data types.
- Establish relationships using Primary Keys and Foreign Keys.
- Apply database constraints to maintain data integrity.
- Insert and manage employee, department, and location data.
- Retrieve data using `SELECT`, `WHERE`, `DISTINCT`, and aliases.
- Sort and limit query results using `ORDER BY` and `LIMIT`.
- Perform calculations using aggregate functions.
- Group records using `GROUP BY` and filter groups using `HAVING`.
- Demonstrate `INNER JOIN`, `LEFT JOIN`, and `RIGHT JOIN`.

---

## 🗄️ Database Information

**Database Name:** `employement_db`

### Main Tables

| Table | Purpose |
|---|---|
| `departments` / `Departments_Info` | Stores department information |
| `Location` / `Locations` | Stores location information |
| `Employee` | Stores employee information |

---

## 🔐 Database Constraints

The project demonstrates the following MySQL constraints:

- **PRIMARY KEY** — uniquely identifies records.
- **FOREIGN KEY** — establishes relationships between tables.
- **UNIQUE** — prevents duplicate department and location names.
- **NOT NULL** — ensures required fields contain values.
- **CHECK** — validates gender and age conditions.
- **DEFAULT** — provides a default joining date.

---

## 🏗️ Database Relationships

The `Employee` table is related to:

- `Departments` through `department_id`
- `Locations` through `location_id`

```text
Departments
    │
    │ department_id
    ▼
 Employee
    ▲
    │ location_id
    │
Locations
```

---

## 🛠️ SQL Operations Covered

### Database & Table Management

- `CREATE DATABASE`
- `USE`
- `CREATE TABLE`
- `ALTER TABLE`
- `ADD COLUMN`
- `MODIFY COLUMN`
- `DROP COLUMN`
- `RENAME COLUMN`
- `RENAME TABLE`

### Data Querying

- `SELECT`
- `DISTINCT`
- `AS`
- `WHERE`
- `IS NULL`
- `UPDATE`
- `ORDER BY`
- `LIMIT`

### Aggregate & Grouping

- `SUM()`
- `MIN()`
- `MAX()`
- `AVG()`
- `COUNT()`
- `GROUP BY`
- `HAVING`

### Joins

- `INNER JOIN`
- `LEFT JOIN`
- `RIGHT JOIN`

---

## 🔎 Query Examples

### DISTINCT Salary

```sql
SELECT DISTINCT salary
FROM Employee;
```

### Column Aliases

```sql
SELECT age AS Employee_Age
FROM Employee;

SELECT salary AS Employee_Salary
FROM Employee;
```

### Salary Greater Than ₹50,000

```sql
SELECT *
FROM Employee
WHERE salary > 50000;
```

### Employees Hired Before 2016

```sql
SELECT *
FROM Employee
WHERE hire_date < '2016-01-01';
```

### Find Missing Designation

```sql
SELECT *
FROM Employee
WHERE designation IS NULL;
```

### Update Missing Designation

```sql
UPDATE Employee
SET designation = 'Data Scientist'
WHERE employee_id = '5004';
```

### Sort by Department

```sql
SELECT *
FROM Employee
ORDER BY department_id ASC;
```

### Sort by Salary

```sql
SELECT *
FROM Employee
ORDER BY salary DESC;
```

### First 5 Employees Hired in 2018

```sql
SELECT *
FROM Employee
WHERE hire_date >= '2018-01-01'
  AND hire_date < '2019-01-01'
ORDER BY hire_date
LIMIT 5;
```

---

## 📊 Aggregate Functions

### Total Salary in Finance Department

```sql
SELECT SUM(salary) AS total_salary
FROM Employee
WHERE department_id = 7;
```

### Minimum Employee Age

```sql
SELECT MIN(age) AS age_employee
FROM Employee;
```

### Maximum Salary for Each Location

```sql
SELECT location_id, MAX(salary) AS max_sal
FROM Employee
GROUP BY location_id;
```

### Average Salary for Analyst Designations

```sql
SELECT designation, AVG(salary) AS avg_sal_designation
FROM Employee
WHERE designation LIKE '%Analyst%'
GROUP BY designation;
```

---

## 📌 HAVING Clause

### Departments with Less Than 3 Employees

```sql
SELECT department_id,
       COUNT(*) AS department_count
FROM Employee
GROUP BY department_id
HAVING COUNT(*) < 3;
```

### Female Employees by Location with Average Age Below 30

```sql
SELECT location_id,
       AVG(age) AS average_age
FROM Employee
WHERE gender = 'F'
GROUP BY location_id
HAVING AVG(age) < 30;
```

---

## 🔗 SQL Joins

### INNER JOIN

Lists employee names, designations, and department names for employees assigned to a department.

```sql
SELECT e.employee_name,
       e.designation,
       d.department_name
FROM Employee AS e
INNER JOIN departments AS d
    ON e.department_id = d.department_id;
```

### LEFT JOIN

Lists all departments along with the total number of employees, including departments with no employees.

```sql
SELECT d.department_name,
       COUNT(e.employee_id) AS employee_count
FROM departments AS d
LEFT JOIN Employee AS e
    ON e.department_id = d.department_id
GROUP BY d.department_id, d.department_name;
```

### RIGHT JOIN

Displays locations and the employees assigned to each location.

```sql
SELECT l.location_name,
       e.employee_name
FROM Employee AS e
RIGHT JOIN Locations AS l
    ON e.location_id = l.location_id;
```

---

## 👥 Employee Data

The project contains employee records with:

- Employee ID
- Employee Name
- Gender
- Age
- Hire Date
- Designation
- Salary
- Department ID
- Location ID

The supplied data contains employee IDs from **5001 to 5030**.

---

## 📍 Locations

The supplied location data contains:

- Chennai
- Bangalore
- Hyderabad
- Pune

---

## 🏢 Departments

The supplied database contains 13 departments, including:

- Software Development
- Marketing
- Data Science
- Human Resources
- Product Management
- Content Creation
- Finance
- Design
- Research and Development
- Customer Support
- Business Development
- IT
- Operations

---

## ▶️ How to Run the Project

1. Open **MySQL Workbench**.
2. Create the database `employement_db`.
3. Create the required tables.
4. Apply the `ALTER TABLE` and `RENAME TABLE` statements as required.
5. Insert department and location data.
6. Insert employee data.
7. Execute the querying statements.
8. Verify the results using MySQL Workbench.

---

## 📁 Suggested GitHub Repository Structure

```text
Employee-Database-Management/
│
├── README.md
├── employment_db.sql
└── MySQL Assignment 2 – Querying Data.pdf
```


## 📚 Assignment Coverage

This project covers the query requirements from **MySQL Assignment 2 – Querying Data**, including DISTINCT values, aliases, WHERE conditions, missing designation updates, ORDER BY, LIMIT, aggregate functions, GROUP BY, HAVING, and SQL joins.

---

## 👨‍💻 Technology Used

**MySQL / MySQL Workbench**

---

## ⭐ Project Summary

This project provides practical experience in designing and querying a relational employee database using MySQL. It demonstrates both database structure management and data retrieval techniques required for an introductory-to-intermediate SQL assignment.

## 👨‍💻 Author
  Vasumitha T
  🔗 Linked in (https://www.linkedin.com/in/vasumitha3595/)
