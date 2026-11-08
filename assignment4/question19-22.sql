--19. write a query tonlist the department ID, and name of all the departments where no employee is working.
mysql> SELECT department_id, department_name
    -> FROM departments
    -> WHERE department_id NOT IN (
    ->     SELECT department_id
    ->     FROM employees
    ->     WHERE department_id IS NOT NULL
    -> );
+---------------+------------------+
| department_id | department_name  |
+---------------+------------------+
|            20 | Marketing        |
|            30 | Purchasing       |
|            40 | Human Resources  |
|            50 | Shipping         |
|            70 | Public Relations |
|           110 | Accounting       |
+---------------+------------------+
6 rows in set (0.00 sec)
--20. write a query to get3 max salaries.
mysql> SELECT DISTINCT salary
    -> FROM employees
    -> ORDER BY salary DESC
    -> LIMIT 3;
+-----------+
| salary    |
+-----------+
| 170000.00 |
| 150000.00 |
| 120000.00 |
+-----------+
3 rows in set (0.01 sec)
--21. write aquery to get 3 min salaries.
mysql> SELECT DISTINCT salary
    -> FROM employees
    -> ORDER BY salary ASC
    -> LIMIT 3;
+----------+
| salary   |
+----------+
| 65000.00 |
| 75000.00 |
| 80000.00 |
+----------+
3 rows in set (0.00 sec)
--22. write a query to get nth max salaries of the employees.
mysql> SET @n = 3;
Query OK, 0 rows affected (0.01 sec)

mysql>
mysql> SELECT salary
    -> FROM (
    ->     SELECT DISTINCT salary,
    ->            DENSE_RANK() OVER (ORDER BY salary DESC) AS rnk
    ->     FROM employees
    -> ) AS t
    -> WHERE rnk = @n;
+-----------+
| salary    |
+-----------+
| 120000.00 |
+-----------+
1 row in set (0.01 sec)

mysql>
