--16. Write  a query to get the length of the employee names (first_name and lat_name) from employees table.
mysql> SELECT LENGTH(first_name), LENGTH(last_name)
    -> FROM employees;
+--------------------+-------------------+
| LENGTH(first_name) | LENGTH(last_name) |
+--------------------+-------------------+
|                  5 |                 4 |
|                  6 |                 4 |
|                  5 |                 7 |
|                  3 |                 7 |
|                  9 |                 6 |
|                  5 |                 5 |
|                  5 |                 6 |
|                  5 |                 9 |
|                  5 |                 7 |
|                  5 |                 9 |
+--------------------+-------------------+
10 rows in set (0.00 sec)
--17. write a query to check if the first_name field of the employees table contains number.
mysql> SELECT first_name
    -> FROM employees
    -> SELECT COUNT (1) FROM employees;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'SELECT COUNT (1) FROM employees' at line 3
mysql> SELECT first_name
    -> FROM employees
    -> WHERE first_name REGEXP '[0-9]';
Empty set (0.03 sec)
--18. write a query to select 10 first record from the table.
mysql> SELECT * FROM employees
    -> LIMIT 10;
+-------------+------------+-----------+------------------+--------------+------------+------------+-----------+----------------+------------+---------------+
| employee_id | first_name | last_name | email            | phone_number | hire_date  | job_id     | salary    | commission_pct | manager_id | department_id |
+-------------+------------+-----------+------------------+--------------+------------+------------+-----------+----------------+------------+---------------+
|         100 | Ellen      | Abel      | ellen@gmail.com  | 9876543210   | 2020-01-15 | IT_PROG    | 110000.00 |           NULL |       NULL |            90 |
|         101 | Sundar     | Ande      | sundar@gmail.com | 9876543211   | 2021-03-10 | SA_REP     |  85000.00 |           0.10 |        100 |            80 |
|         102 | Neena      | Kochhar   | neena@gmail.com  | 9876543212   | 2019-06-20 | AD_VP      | 170000.00 |           NULL |        100 |            90 |
|         103 | Lex        | De Haan   | lex@gmail.com    | 9876543213   | 2022-02-11 | IT_PROG    | 120000.00 |           NULL |        100 |            60 |
|         104 | Alexander  | Hunold    | alex@gmail.com   | 9876543214   | 2021-08-05 | IT_PROG    |  90000.00 |           NULL |        103 |            60 |
|         105 | Bruce      | Ernst     | bruce@gmail.com  | 9876543215   | 2023-04-18 | FI_ACCOUNT |  75000.00 |           NULL |        102 |           100 |
|         106 | David      | Austin    | david@gmail.com  | 9876543216   | 2020-11-25 | SA_REP     |  95000.00 |           0.15 |        101 |            80 |
|         107 | Valli      | Pataballa | valli@gmail.com  | 9876543217   | 2022-09-14 | AD_ASST    |  65000.00 |           NULL |        102 |            10 |
|         108 | Diana      | Lorentz   | diana@gmail.com  | 9876543218   | 2024-01-08 | FI_ACCOUNT |  80000.00 |           NULL |        105 |           100 |
|         109 | Nancy      | Greenberg | nancy@gmail.com  | 9876543219   | 2018-12-03 | AC_MGR     | 150000.00 |           NULL |        102 |           100 |
+-------------+------------+-----------+------------------+--------------+------------+------------+-----------+----------------+------------+---------------+
10 rows in set (0.00 sec)
--19. write a query to get monthly salary (round 2 decimal places) of each and every employee, note:assume the salry field provides the 'annual salary' information.
mysql> SELECT first_name, last_name,
    -> ROUND(salary / 12, 2) AS monthly_salary
    -> FROM employees;
+------------+-----------+----------------+
| first_name | last_name | monthly_salary |
+------------+-----------+----------------+
| Ellen      | Abel      |        9166.67 |
| Sundar     | Ande      |        7083.33 |
| Neena      | Kochhar   |       14166.67 |
| Lex        | De Haan   |       10000.00 |
| Alexander  | Hunold    |        7500.00 |
| Bruce      | Ernst     |        6250.00 |
| David      | Austin    |        7916.67 |
| Valli      | Pataballa |        5416.67 |
| Diana      | Lorentz   |        6666.67 |
| Nancy      | Greenberg |       12500.00 |
+------------+-----------+----------------+
10 rows in set (0.01 sec)

mysql> C
