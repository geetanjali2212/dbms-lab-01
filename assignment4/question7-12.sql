--7. write a query to find the name (first_name, last_name), and salary of the employees who earns more than the average salary and works in any of the IT departments.
mysql> SELECT first_name, last_name, salary
    -> FROM employees
    -> WHERE salary > (
    ->     SELECT AVG(salary)
    ->     FROM employees
    -> )
    -> AND department_id IN (
    ->     SELECT department_id
    ->     FROM departments
    ->     WHERE department_name = 'IT'
    -> );
+------------+-----------+-----------+
| first_name | last_name | salary    |
+------------+-----------+-----------+
| Lex        | De Haan   | 120000.00 |
+------------+-----------+-----------+
1 row in set (0.00 sec)
--8. write a query to find the name(first_name, last_name),aand salary of the employees who earn more the earning of mr.bell.
mysql> SELECT first_name, last_name, salary
    -> FROM employees
    -> WHERE salary > (
    ->     SELECT salary
    ->     FROM employees
    ->     WHERE last_name = 'Bell'
    -> );
Empty set (0.00 sec)
--9. write a query to find the name(first_name, last_name),aand salary of the employees who earn the same salary as the min salary for all dempartments.
mysql> SELECT first_name, last_name, salary
    -> FROM employees
    -> WHERE salary IN (
    ->     SELECT MIN(salary)
    ->     FROM employees
    ->     GROUP BY department_id
    -> );
+------------+-----------+-----------+
| first_name | last_name | salary    |
+------------+-----------+-----------+
| Ellen      | Abel      | 110000.00 |
| Sundar     | Ande      |  85000.00 |
| Alexander  | Hunold    |  90000.00 |
| Bruce      | Ernst     |  75000.00 |
| Valli      | Pataballa |  65000.00 |
+------------+-----------+-----------+
5 rows in set (0.01 sec)
--10. write a query to find the name(first_name, last_name),aand salary of the employees whose salary is greater than the average salary of the departments.
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
--11. write a query to find the name(first_name, last_name),aand salary of the employees who earn a salary that is higher than than the salary of all the shipping clerks (JOB_ID = SH_CLERK). SORT THE RESULT HIGHEST TO LOWEST.
mysql> SELECT first_name, last_name, salary
    -> FROM employees
    -> WHERE salary > ALL (
    ->     SELECT salary
    ->     FROM employees
    ->     WHERE job_id = 'SH_CLERK'
    -> )
    -> ORDER BY salary ASC;
+------------+-----------+-----------+
| first_name | last_name | salary    |
+------------+-----------+-----------+
| Valli      | Pataballa |  65000.00 |
| Bruce      | Ernst     |  75000.00 |
| Diana      | Lorentz   |  80000.00 |
| Sundar     | Ande      |  85000.00 |
| Alexander  | Hunold    |  90000.00 |
| David      | Austin    |  95000.00 |
| Ellen      | Abel      | 110000.00 |
| Lex        | De Haan   | 120000.00 |
| Nancy      | Greenberg | 150000.00 |
| Neena      | Kochhar   | 170000.00 |
+------------+-----------+-----------+
10 rows in set (0.00 sec)
--12. write a query to find the name(first_name, last_name),aand salary of the employees who ARE NOT SUPERVISORS.
mysql> SELECT first_name, last_name
    -> FROM employees
    -> WHERE employee_id NOT IN (
    ->     SELECT manager_id
    ->     FROM employees
    ->     WHERE manager_id IS NOT NULL
    -> );
+------------+-----------+
| first_name | last_name |
+------------+-----------+
| Alexander  | Hunold    |
| David      | Austin    |
| Valli      | Pataballa |
| Diana      | Lorentz   |
| Nancy      | Greenberg |
+------------+-----------+
5 rows in set (0.00 sec)

mysql>
