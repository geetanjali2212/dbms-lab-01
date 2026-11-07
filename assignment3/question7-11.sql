--7. wriye a query to display the last name of employees whose name have exactlyy 6 character.
mysql> SELECT last_name
    -> FROM employees
    -> WHERE last_name LIKE '______';
+-----------+
| last_name |
+-----------+
| Hunold    |
| Austin    |
+-----------+
2 rows in set (0.00 sec)
--8. write a query to display the last name of employees having 'e' as the third character.
mysql> SELECT last_name
    -> FROM employees
    -> WHERE last_name LIKE '__e%';
+-----------+
| last_name |
+-----------+
| Abel      |
| Greenberg |
+-----------+
2 rows in set (0.00 sec)
--9. write a query to display the jobs/designations available in the employees table.
mysql> SELECT DISTINCT job_id
    -> FROM employees;
+------------+
| job_id     |
+------------+
| IT_PROG    |
| SA_REP     |
| AD_VP      |
| FI_ACCOUNT |
| AD_ASST    |
| AC_MGR     |
+------------+
6 rows in set (0.00 sec)
--10. write a query to display the name (first_name, last_name), salary and PF (15% of salary) of all employees.
mysql> SELECT first_name, last_name, salary,
    ->        salary * 0.15 AS PF
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
10 rows in set (0.00 sec)
--11. write a query to select all record from employees where last name in 'BLAKE', 'SCOTT', 'KING', and 'FORD'.
mysql> SELECT *
    -> FROM employees
    -> WHERE last_name IN ('BLAKE', 'SCOTT', 'KING', 'FORD');
Empty set (0.00 sec)

mysql>
