--6. write a query to get the total salaries payable to employees. 
mysql>  SELECT SUM(salary) AS total_salary
    -> FROM employees;
+--------------+
| total_salary |
+--------------+
|   1040000.00 |
+--------------+
1 row in set (0.01 sec)
--7. write a query to get the max and min salary from employees table.
mysql> SELECT MAX(salary), MIN(salary)
    -> FROM employees;
+-------------+-------------+
| MAX(salary) | MIN(salary) |
+-------------+-------------+
|   170000.00 |    65000.00 |
+-------------+-------------+
1 row in set (0.01 sec)
--8. write a query to get the avarage salary and number of employees in the table.
mysql> SELECT AVG(salary) AS average_salary,
    -> COUNT(1) AS number_of_employees
    -> FROM employees;
+----------------+---------------------+
| average_salary | number_of_employees |
+----------------+---------------------+
|  104000.000000 |                  10 |
+----------------+---------------------+
1 row in set (0.00 sec)
--9. write a query to get the number of employees working with the company.
mysql> SELECT COUNT(*) FROM employees;
+----------+
| COUNT(*) |
+----------+
|       10 |
+----------+
1 row in set (0.01 sec)
--10. write a query to get the number of jobs available in the employees table.
mysql> SELECT COUNT(DISTINCT job_id) AS number_of_jobs
    -> FROM employees;
+----------------+
| number_of_jobs |
+----------------+
|              6 |
+----------------+
1 row in set (0.01 sec)
