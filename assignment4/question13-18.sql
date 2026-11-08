--13. write a query to display the employee ID, first name, last name, and department names of the employees.
mysql> SELECT employee_id, first_name, last_name,
    ->        (SELECT department_name
    ->         FROM departments d
    ->         WHERE d.department_id = e.department_id)
    ->        AS department_name
    -> FROM employees e;
+-------------+------------+-----------+-----------------+
| employee_id | first_name | last_name | department_name |
+-------------+------------+-----------+-----------------+
|         100 | Ellen      | Abel      | Executive       |
|         101 | Sundar     | Ande      | Sales           |
|         102 | Neena      | Kochhar   | Executive       |
|         103 | Lex        | De Haan   | IT              |
|         104 | Alexander  | Hunold    | IT              |
|         105 | Bruce      | Ernst     | Finance         |
|         106 | David      | Austin    | Sales           |
|         107 | Valli      | Pataballa | Administration  |
|         108 | Diana      | Lorentz   | Finance         |
|         109 | Nancy      | Greenberg | Finance         |
+-------------+------------+-----------+-----------------+
10 rows in set (0.00 sec)
--14.   write a query to display the employee ID, first name, last name, and salary of all employees whose saary is above average for their departments.
mysql> SELECT employee_id, first_name, last_name, salary
    -> FROM employees e
    -> WHERE salary > (
    ->     SELECT AVG(salary)
    ->     FROM employees
    ->     WHERE department_id = e.department_id
    -> );
+-------------+------------+-----------+-----------+
| employee_id | first_name | last_name | salary    |
+-------------+------------+-----------+-----------+
|         102 | Neena      | Kochhar   | 170000.00 |
|         103 | Lex        | De Haan   | 120000.00 |
|         106 | David      | Austin    |  95000.00 |
|         109 | Nancy      | Greenberg | 150000.00 |
+-------------+------------+-----------+-----------+
4 rows in set (0.00 sec)
--15. write a query to fetch even numbered records from the employees table.
mysql> SELECT *
    -> FROM employees
    -> WHERE MOD(employee_id, 2) = 0;
+-------------+------------+-----------+-----------------+--------------+------------+------------+-----------+----------------+------------+---------------+
| employee_id | first_name | last_name | email           | phone_number | hire_date  | job_id     | salary    | commission_pct | manager_id | department_id |
+-------------+------------+-----------+-----------------+--------------+------------+------------+-----------+----------------+------------+---------------+
|         100 | Ellen      | Abel      | ellen@gmail.com | 9876543210   | 2020-01-15 | IT_PROG    | 110000.00 |           NULL |       NULL |            90 |
|         102 | Neena      | Kochhar   | neena@gmail.com | 9876543212   | 2019-06-20 | AD_VP      | 170000.00 |           NULL |        100 |            90 |
|         104 | Alexander  | Hunold    | alex@gmail.com  | 9876543214   | 2021-08-05 | IT_PROG    |  90000.00 |           NULL |        103 |            60 |
|         106 | David      | Austin    | david@gmail.com | 9876543216   | 2020-11-25 | SA_REP     |  95000.00 |           0.15 |        101 |            80 |
|         108 | Diana      | Lorentz   | diana@gmail.com | 9876543218   | 2024-01-08 | FI_ACCOUNT |  80000.00 |           NULL |        105 |           100 |
+-------------+------------+-----------+-----------------+--------------+------------+------------+-----------+----------------+------------+---------------+
5 rows in set (0.00 sec)
--16. write a query to find the 5th max salary in the employees table.
mysql> SELECT DISTINCT salary
    -> FROM employees
    -> ORDER BY salary DESC
    -> LIMIT 1 OFFSET 4;
+----------+
| salary   |
+----------+
| 95000.00 |
+----------+
1 row in set (0.00 sec)
--17. write a query to find 4th min salary in the employees table.
mysql> SELECT DISTINCT salary
    -> FROM employees
    -> ORDER BY salary ASC
    -> LIMIT 1 OFFSET 3;
+----------+
| salary   |
+----------+
| 85000.00 |
+----------+
1 row in set (0.00 sec)
--18. write a query to select the 10 last records from the table.
mysql> SELECT *
    -> FROM employees
    -> ORDER BY employee_id DESC
    -> LIMIT 10;
+-------------+------------+-----------+------------------+--------------+------------+------------+-----------+----------------+------------+---------------+
| employee_id | first_name | last_name | email            | phone_number | hire_date  | job_id     | salary    | commission_pct | manager_id | department_id |
+-------------+------------+-----------+------------------+--------------+------------+------------+-----------+----------------+------------+---------------+
|         109 | Nancy      | Greenberg | nancy@gmail.com  | 9876543219   | 2018-12-03 | AC_MGR     | 150000.00 |           NULL |        102 |           100 |
|         108 | Diana      | Lorentz   | diana@gmail.com  | 9876543218   | 2024-01-08 | FI_ACCOUNT |  80000.00 |           NULL |        105 |           100 |
|         107 | Valli      | Pataballa | valli@gmail.com  | 9876543217   | 2022-09-14 | AD_ASST    |  65000.00 |           NULL |        102 |            10 |
|         106 | David      | Austin    | david@gmail.com  | 9876543216   | 2020-11-25 | SA_REP     |  95000.00 |           0.15 |        101 |            80 |
|         105 | Bruce      | Ernst     | bruce@gmail.com  | 9876543215   | 2023-04-18 | FI_ACCOUNT |  75000.00 |           NULL |        102 |           100 |
|         104 | Alexander  | Hunold    | alex@gmail.com   | 9876543214   | 2021-08-05 | IT_PROG    |  90000.00 |           NULL |        103 |            60 |
|         103 | Lex        | De Haan   | lex@gmail.com    | 9876543213   | 2022-02-11 | IT_PROG    | 120000.00 |           NULL |        100 |            60 |
|         102 | Neena      | Kochhar   | neena@gmail.com  | 9876543212   | 2019-06-20 | AD_VP      | 170000.00 |           NULL |        100 |            90 |
|         101 | Sundar     | Ande      | sundar@gmail.com | 9876543211   | 2021-03-10 | SA_REP     |  85000.00 |           0.10 |        100 |            80 |
|         100 | Ellen      | Abel      | ellen@gmail.com  | 9876543210   | 2020-01-15 | IT_PROG    | 110000.00 |           NULL |       NULL |            90 |
+-------------+------------+-----------+------------------+--------------+------------+------------+-----------+----------------+------------+---------------+
10 rows in set (0.00 sec)

mysql>
