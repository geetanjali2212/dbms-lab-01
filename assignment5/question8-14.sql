--8. write a query to get the difference between the highest and lowest salaries.
mysql> SELECT MAX(salary) - MIN(salary)
    -> FROM employees;
+---------------------------+
| MAX(salary) - MIN(salary) |
+---------------------------+
|                 105000.00 |
+---------------------------+
1 row in set (0.00 sec)
--9. write a query to find the managerID and the salary of the lowest paid employee for that manager.
mysql> SELECT manager_id, MIN(salary)
    -> FROM employees
    -> GROUP BY manager_id;
+------------+-------------+
| manager_id | MIN(salary) |
+------------+-------------+
|       NULL |   110000.00 |
|        100 |    85000.00 |
|        103 |    90000.00 |
|        102 |    65000.00 |
|        101 |    95000.00 |
|        105 |    80000.00 |
+------------+-------------+
6 rows in set (0.00 sec)
--10. write a query to get the department ID and the total salary payable in each department.
mysql> SELECT department_id, SUM(salary)
    -> FROM employees
    -> GROUP BY department_id;
+---------------+-------------+
| department_id | SUM(salary) |
+---------------+-------------+
|            90 |   280000.00 |
|            80 |   180000.00 |
|            60 |   210000.00 |
|           100 |   305000.00 |
|            10 |    65000.00 |
+---------------+-------------+
5 rows in set (0.00 sec)
--11. write a query to get the average salary for each job ID excluding programmer.
mysql> SELECT job_id, AVG(salary)
    -> FROM employees
    -> WHERE job_id <> 'PROGRAMMER'
    -> GROUP BY job_id;
+------------+---------------+
| job_id     | AVG(salary)   |
+------------+---------------+
| IT_PROG    | 106666.666667 |
| SA_REP     |  90000.000000 |
| AD_VP      | 170000.000000 |
| FI_ACCOUNT |  77500.000000 |
| AD_ASST    |  65000.000000 |
| AC_MGR     | 150000.000000 |
+------------+---------------+
6 rows in set (0.01 sec)
--12. write a query to get the total salary,max ,min, average salary of employees (job ID wise),for department ID 90 ONLY.
mysql> SELECT job_id, SUM(salary), MAX(salary),
    ->        MIN(salary), AVG(salary)
    -> FROM employees
    -> WHERE department_id = 90
    -> GROUP BY job_id;
+---------+-------------+-------------+-------------+---------------+
| job_id  | SUM(salary) | MAX(salary) | MIN(salary) | AVG(salary)   |
+---------+-------------+-------------+-------------+---------------+
| IT_PROG |   110000.00 |   110000.00 |   110000.00 | 110000.000000 |
| AD_VP   |   170000.00 |   170000.00 |   170000.00 | 170000.000000 |
+---------+-------------+-------------+-------------+---------------+
2 rows in set (0.00 sec)
--13. write a query to get the job ID and max salary of the employee where max salary is greater then or equal to $4000.
mysql> SELECT job_id, MAX(salary)
    -> FROM employees
    -> GROUP BY job_id
    -> HAVING MAX(salary) >= 4000;
+------------+-------------+
| job_id     | MAX(salary) |
+------------+-------------+
| IT_PROG    |   120000.00 |
| SA_REP     |    95000.00 |
| AD_VP      |   170000.00 |
| FI_ACCOUNT |    80000.00 |
| AD_ASST    |    65000.00 |
| AC_MGR     |   150000.00 |
+------------+-------------+
6 rows in set (0.00 sec)
--14. write a query to get the average salary for all departments employing more than 10 employees.
mysql> SELECT department_id, AVG(salary)
    -> FROM employees
    -> GROUP BY department_id
    -> HAVING COUNT(*) > 10;
Empty set (0.00 sec)

mysql>
