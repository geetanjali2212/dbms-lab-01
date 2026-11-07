--1. write a query to find the (first name, last name) and the sakary of the employees who have a higher salary than the employee whose last_name='BULL'.
mysql>  SELECT first_name, last_name, salary
    -> FROM employees
    -> WHERE salary > (
    ->     SELECT salary
    ->     FROM employees
    ->     WHERE last_name = 'Bull'
    -> );
Empty set (0.01 sec)
--2. Write a query to find the name (first_name, last_name) of the employees who works in the IT department.
mysql> SELECT first_name, last_name
    -> FROM employees
    -> WHERE department_id = (
    ->     SELECT department_id
    ->     FROM departments
    ->     WHERE department_name = 'IT'
    -> );
+------------+-----------+
| first_name | last_name |
+------------+-----------+
| Lex        | De Haan   |
| Alexander  | Hunold    |
+------------+-----------+
2 rows in set (0.01 sec)
--3. write a query to find the name (first_name, last_name) of the employees who have a manager and worked in a USA based department.
mysql> SELECT first_name, last_name
    -> FROM employees
    -> WHERE manager_id IS NOT NULL
    -> AND department_id IN (
    ->     SELECT department_id
    ->     FROM departments
    ->     WHERE location_id IN (
    ->         SELECT location_id
    ->         FROM locations
    ->         WHERE country_id = 'US'
    ->     )
    -> );
+------------+-----------+
| first_name | last_name |
+------------+-----------+
| Sundar     | Ande      |
| Lex        | De Haan   |
| Alexander  | Hunold    |
| David      | Austin    |
+------------+-----------+
4 rows in set (0.01 sec)
--4. write a query to find the name (first_name, last_name) of the employees who are managers.
mysql> SELECT first_name, last_name
    -> FROM employees
    -> WHERE employee_id IN (
    ->     SELECT DISTINCT manager_id
    ->     FROM employees
    ->     WHERE manager_id IS NOT NULL
    -> );
+------------+-----------+
| first_name | last_name |
+------------+-----------+
| Ellen      | Abel      |
| Lex        | De Haan   |
| Neena      | Kochhar   |
| Sundar     | Ande      |
| Bruce      | Ernst     |
+------------+-----------+
5 rows in set (0.00 sec)
--5. write a query to find the name (first_name, last_name), and salary of the employees whose salary is greater than the average salary.
mysql> SELECT first_name, last_name, salary
    -> FROM employees
    -> WHERE salary > (
    ->     SELECT AVG(salary)
    ->     FROM employees
    -> );
+------------+-----------+-----------+
| first_name | last_name | salary    |
+------------+-----------+-----------+
| Ellen      | Abel      | 110000.00 |
| Neena      | Kochhar   | 170000.00 |
| Lex        | De Haan   | 120000.00 |
| Nancy      | Greenberg | 150000.00 |
+------------+-----------+-----------+
4 rows in set (0.00 sec)
--6. write a query to find the name (first_name, last_name), and salary of the employeees whose salary is equal to the min salary for their job grade.
mysql> SELECT first_name, last_name, salary
    -> FROM employees e
    -> WHERE salary = (
    ->     SELECT MIN(salary)
    ->     FROM employees
    ->     WHERE job_id = e.job_id
    -> );
+------------+-----------+-----------+
| first_name | last_name | salary    |
+------------+-----------+-----------+
| Sundar     | Ande      |  85000.00 |
| Neena      | Kochhar   | 170000.00 |
| Alexander  | Hunold    |  90000.00 |
| Bruce      | Ernst     |  75000.00 |
| Valli      | Pataballa |  65000.00 |
| Nancy      | Greenberg | 150000.00 |
+------------+-----------+-----------+
6 rows in set (0.00 sec)
