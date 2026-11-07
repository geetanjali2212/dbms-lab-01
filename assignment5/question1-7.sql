--1. write a query to list the number of jobs avaliable in the employees table.
mysql> SELECT COUNT(DISTINCT job_id)
    -> FROM employees;
+------------------------+
| COUNT(DISTINCT job_id) |
+------------------------+
|                      6 |
+------------------------+
1 row in set (0.00 sec)
--2. write a query to get the total salaries payable to employees.
mysql> SELECT SUM(salary)
    -> FROM employees;
+-------------+
| SUM(salary) |
+-------------+
|  1040000.00 |
+-------------+
1 row in set (0.00 sec)
--3. write a query to get the min salary from the employees table.
mysql> SELECT MIN(salary)
    -> FROM employees;
+-------------+
| MIN(salary) |
+-------------+
|    65000.00 |
+-------------+
1 row in set (0.00 sec)
--4. write a query to get the max salary of an employee working as a programmer.
mysql> SELECT MAX(salary)
    -> FROM employees
    -> WHERE job_id = 'PROGRAMMER';
+-------------+
| MAX(salary) |
+-------------+
|        NULL |
+-------------+
1 row in set (0.01 sec)
--5. write a query to get the average salary and number of employees working the department 90.
mysql> SELECT AVG(salary), COUNT(*)
    -> FROM employees
    -> WHERE department_id = 90;
+---------------+----------+
| AVG(salary)   | COUNT(*) |
+---------------+----------+
| 140000.000000 |        2 |
+---------------+----------+
1 row in set (0.00 sec)
--6. write a query to get the hightest, lowest, sum and average salary of all employees.
mysql> SELECT MAX(salary), MIN(salary),
    ->        SUM(salary), AVG(salary)
    -> FROM employees;
+-------------+-------------+-------------+---------------+
| MAX(salary) | MIN(salary) | SUM(salary) | AVG(salary)   |
+-------------+-------------+-------------+---------------+
|   170000.00 |    65000.00 |  1040000.00 | 104000.000000 |
+-------------+-------------+-------------+---------------+
1 row in set (0.00 sec)
--7. write a query to get the number of employees with the same job.
mysql> SELECT job_id, COUNT(*)
    -> FROM employees
    -> GROUP BY job_id;
+------------+----------+
| job_id     | COUNT(*) |
+------------+----------+
| IT_PROG    |        3 |
| SA_REP     |        2 |
| AD_VP      |        1 |
| FI_ACCOUNT |        2 |
| AD_ASST    |        1 |
| AC_MGR     |        1 |
+------------+----------+
6 rows in set (0.00 sec)
