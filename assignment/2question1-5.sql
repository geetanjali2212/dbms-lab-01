mysql> USE company_db;
Database changed
mysql> CREATE TABLE employees (
    ->     employee_id INT PRIMARY KEY,
    ->     first_name VARCHAR(50),
    ->     last_name VARCHAR(50),
    ->     email VARCHAR(100),
    ->     phone_number VARCHAR(20),
    ->     hire_date DATE,
    ->     job_id VARCHAR(20),
    ->     salary DECIMAL(10,2),
    ->     commission_pct DECIMAL(5,2),
    ->     manager_id INT,
    ->     department_id INT
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql> SHOW TABLES;
+----------------------+
| Tables_in_company_db |
+----------------------+
| employees            |
+----------------------+
1 row in set (0.00 sec)

mysql> INSERT INTO employees
    -> (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
    -> VALUES
    -> (100, 'Ellen', 'Abel', 'ellen@gmail.com', '9876543210', '2020-01-15', 'IT_PROG', 110000, NULL, NULL, 90),
    -> (101, 'Sundar', 'Ande', 'sundar@gmail.com', '9876543211', '2021-03-10', 'SA_REP', 85000, 0.10, 100, 80),
    -> (102, 'Neena', 'Kochhar', 'neena@gmail.com', '9876543212', '2019-06-20', 'AD_VP', 170000, NULL, 100, 90),
    -> (103, 'Lex', 'De Haan', 'lex@gmail.com', '9876543213', '2022-02-11', 'IT_PROG', 120000, NULL, 100, 60),
    -> (104, 'Alexander', 'Hunold', 'alex@gmail.com', '9876543214', '2021-08-05', 'IT_PROG', 90000, NULL, 103, 60),
    -> (105, 'Bruce', 'Ernst', 'bruce@gmail.com', '9876543215', '2023-04-18', 'FI_ACCOUNT', 75000, NULL, 102, 100),
    -> (106, 'David', 'Austin', 'david@gmail.com', '9876543216', '2020-11-25', 'SA_REP', 95000, 0.15, 101, 80),
    -> (107, 'Valli', 'Pataballa', 'valli@gmail.com', '9876543217', '2022-09-14', 'AD_ASST', 65000, NULL, 102, 10),
    -> (108, 'Diana', 'Lorentz', 'diana@gmail.com', '9876543218', '2024-01-08', 'FI_ACCOUNT', 80000, NULL, 105, 100),
    -> (109, 'Nancy', 'Greenberg', 'nancy@gmail.com', '9876543219', '2018-12-03', 'AC_MGR', 150000, NULL, 102, 100);
Query OK, 10 rows affected (0.02 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> SELECT *FROM employees;
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

mysql> SELECT COUNT (*) FROM employees;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '*) FROM employees' at line 1
mysql>  SELECT COUNT * FROM employees;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FROM employees' at line 1
mysql> SELECT COUNT (1) FROM employees;
ERROR 1630 (42000): FUNCTION company_db.COUNT does not exist. Check the 'Function Name Parsing and Resolution' section in the Reference Manual
mysql>  SELECT COUNT(1) FROM employees;
+----------+
| COUNT(1) |
+----------+
|       10 |
+----------+
1 row in set (0.02 sec)
--1. write a query to display the names (first_name, last_name) using alias name "first name","last name"
mysql> SELECT first_name AS 'First Name',
    -> last_name AS 'Last Name'
    -> FROM employees;
+------------+-----------+
| First Name | Last Name |
+------------+-----------+
| Ellen      | Abel      |
| Sundar     | Ande      |
| Neena      | Kochhar   |
| Lex        | De Haan   |
| Alexander  | Hunold    |
| Bruce      | Ernst     |
| David      | Austin    |
| Valli      | Pataballa |
| Diana      | Lorentz   |
| Nancy      | Greenberg |
+------------+-----------+
10 rows in set (0.00 sec)
--2. write query to get unique department ID from the employee table.
mysql> SELECT DISTINT department_id
    -> FROM employees;
ERROR 1054 (42S22): Unknown column 'DISTINT' in 'field list'
mysql> SELECT DISTINCT department_id FROM employees;
+---------------+
| department_id |
+---------------+
|            90 |
|            80 |
|            60 |
|           100 |
|            10 |
+---------------+
5 rows in set (0.01 sec)
--3. write the query to get all the employee details from the employee table order by first name, descending.
mysql>  SELECT * FROM employees
    -> ORDER BY first_name DESC;
+-------------+------------+-----------+------------------+--------------+------------+------------+-----------+----------------+------------+---------------+
| employee_id | first_name | last_name | email            | phone_number | hire_date  | job_id     | salary    | commission_pct | manager_id | department_id |
+-------------+------------+-----------+------------------+--------------+------------+------------+-----------+----------------+------------+---------------+
|         107 | Valli      | Pataballa | valli@gmail.com  | 9876543217   | 2022-09-14 | AD_ASST    |  65000.00 |           NULL |        102 |            10 |
|         101 | Sundar     | Ande      | sundar@gmail.com | 9876543211   | 2021-03-10 | SA_REP     |  85000.00 |           0.10 |        100 |            80 |
|         102 | Neena      | Kochhar   | neena@gmail.com  | 9876543212   | 2019-06-20 | AD_VP      | 170000.00 |           NULL |        100 |            90 |
|         109 | Nancy      | Greenberg | nancy@gmail.com  | 9876543219   | 2018-12-03 | AC_MGR     | 150000.00 |           NULL |        102 |           100 |
|         103 | Lex        | De Haan   | lex@gmail.com    | 9876543213   | 2022-02-11 | IT_PROG    | 120000.00 |           NULL |        100 |            60 |
|         100 | Ellen      | Abel      | ellen@gmail.com  | 9876543210   | 2020-01-15 | IT_PROG    | 110000.00 |           NULL |       NULL |            90 |
|         108 | Diana      | Lorentz   | diana@gmail.com  | 9876543218   | 2024-01-08 | FI_ACCOUNT |  80000.00 |           NULL |        105 |           100 |
|         106 | David      | Austin    | david@gmail.com  | 9876543216   | 2020-11-25 | SA_REP     |  95000.00 |           0.15 |        101 |            80 |
|         105 | Bruce      | Ernst     | bruce@gmail.com  | 9876543215   | 2023-04-18 | FI_ACCOUNT |  75000.00 |           NULL |        102 |           100 |
|         104 | Alexander  | Hunold    | alex@gmail.com   | 9876543214   | 2021-08-05 | IT_PROG    |  90000.00 |           NULL |        103 |            60 |
+-------------+------------+-----------+------------------+--------------+------------+------------+-----------+----------------+------------+---------------+
10 rows in set (0.01 sec)
--4. write a query to get the name (fiest_name, last_name ), salary, PF of all the employeees(PF is calculated as 15% of salary).
mysql> SELECT first_name, last_name, salary,
    -> salary * 0.15 AS PF
    -> FROM employees;
+------------+-----------+-----------+------------+
| first_name | last_name | salary    | PF         |
+------------+-----------+-----------+------------+
| Ellen      | Abel      | 110000.00 | 16500.0000 |
| Sundar     | Ande      |  85000.00 | 12750.0000 |
| Neena      | Kochhar   | 170000.00 | 25500.0000 |
| Lex        | De Haan   | 120000.00 | 18000.0000 |
| Alexander  | Hunold    |  90000.00 | 13500.0000 |
| Bruce      | Ernst     |  75000.00 | 11250.0000 |
| David      | Austin    |  95000.00 | 14250.0000 |
| Valli      | Pataballa |  65000.00 |  9750.0000 |
| Diana      | Lorentz   |  80000.00 | 12000.0000 |
| Nancy      | Greenberg | 150000.00 | 22500.0000 |
+------------+-----------+-----------+------------+
10 rows in set (0.01 sec)
--5. write a query to get the employee ID, names(first_name,last_name), salary in ascending order of the salary.
mysql> SELECT employee_id, first_name, last_name, salary
    -> FROM employees
    -> ORDER BY salary ASC;
+-------------+------------+-----------+-----------+
| employee_id | first_name | last_name | salary    |
+-------------+------------+-----------+-----------+
|         107 | Valli      | Pataballa |  65000.00 |
|         105 | Bruce      | Ernst     |  75000.00 |
|         108 | Diana      | Lorentz   |  80000.00 |
|         101 | Sundar     | Ande      |  85000.00 |
|         104 | Alexander  | Hunold    |  90000.00 |
|         106 | David      | Austin    |  95000.00 |
|         100 | Ellen      | Abel      | 110000.00 |
|         103 | Lex        | De Haan   | 120000.00 |
|         109 | Nancy      | Greenberg | 150000.00 |
|         102 | Neena      | Kochhar   | 170000.00 |
+-------------+------------+-----------+-----------+
10 rows in set (0.00 sec)

mysql>
