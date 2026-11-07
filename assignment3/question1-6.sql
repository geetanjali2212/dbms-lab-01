--1. write a query to display the (first_name , last_name) salary for all employees whose salary is notin the range $10000 through $15000.
mysql> USE company_db;
Database changed
mysql> SELECT first_nsme, last_name, salary
    -> FROM employees
    -> WHERE salarybNOT BETWEEN 10000 AND 15000;
ERROR 1054 (42S22): Unknown column 'first_nsme' in 'field list'
mysql> SELECT first_name, last_name, salary
    -> FROM employees
    -> WHERE salary NOT BETWEEN 10000 AND 15000;
+------------+-----------+-----------+
| first_name | last_name | salary    |
+------------+-----------+-----------+
| Ellen      | Abel      | 110000.00 |
| Sundar     | Ande      |  85000.00 |
| Neena      | Kochhar   | 170000.00 |
| Lex        | De Haan   | 120000.00 |
| Alexander  | Hunold    |  90000.00 |
| Bruce      | Ernst     |  75000.00 |
| David      | Austin    |  95000.00 |
| Valli      | Pataballa |  65000.00 |
| Diana      | Lorentz   |  80000.00 |
| Nancy      | Greenberg | 150000.00 |
+------------+-----------+-----------+
10 rows in set (0.00 sec)
--2. write a query to display the (first_name , last_name) and department ID of all the employees in department 30 or 100 in ascending order.
mysql> SELECT first_name, last_name, department_id
    -> FROM employees
    -> WHERE department_id IN (30, 100)
    -> ORDER BY department_id ASC;
+------------+-----------+---------------+
| first_name | last_name | department_id |
+------------+-----------+---------------+
| Bruce      | Ernst     |           100 |
| Diana      | Lorentz   |           100 |
| Nancy      | Greenberg |           100 |
+------------+-----------+---------------+
3 rows in set (0.00 sec)
--3.  write a query to display the (first_name , last_name) and salary for all the employees whose salary is not in the range $10000 through $15000 and are in depatment 30 or 100.
mysql> SELECT first_name, last_name, salary
    -> FROM employees
    -> WHERE salary NOT BETWEEN 10000 AND 15000
    -> AND department_id IN (30, 100);
+------------+-----------+-----------+
| first_name | last_name | salary    |
+------------+-----------+-----------+
| Bruce      | Ernst     |  75000.00 |
| Diana      | Lorentz   |  80000.00 |
| Nancy      | Greenberg | 150000.00 |
+------------+-----------+-----------+
3 rows in set (0.00 sec)
--4.  write a query to display the (first_name , last_name) and hire date for all employees who were hired in 1987.
mysql> SELECT first_name, last_name, hire_date
    -> FROM employees
    -> WHERE hire_date >= '1987-01-01'
    -> AND hire_date < '1988-01-01';
Empty set (0.01 sec)
--5.  write a query to display the first_name of all the employees who have "b" and "c" in their first name.
mysql> SELECT first_name
    -> FROM employees
    -> WHERE first_name LIKE '%b%'
    -> AND first_name LIKE '%c%';
+------------+
| first_name |
+------------+
| Bruce      |
+------------+
1 row in set (0.00 sec)
--6.  write a query to display the last_name,job annd salary for all employees whose job is that of a programmer or a shipping clerk, and whose salary is not equal to $4500,$10000 or $15000.
mysql> SELECT last_name, job_id, salary
    -> FROM employees
    -> WHERE job_id IN ('IT_PROG', 'SH_CLERK')
    -> AND salary NOT IN (4500, 10000, 15000);
+-----------+---------+-----------+
| last_name | job_id  | salary    |
+-----------+---------+-----------+
| Abel      | IT_PROG | 110000.00 |
| De Haan   | IT_PROG | 120000.00 |
| Hunold    | IT_PROG |  90000.00 |
+-----------+---------+-----------+
3 rows in set (0.00 sec)
