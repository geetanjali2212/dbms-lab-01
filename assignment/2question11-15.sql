--11. write a query to get all first name from employees table in uppper case.
mysql> SELECT UPPER(first_name)
    -> FROM employees;
+-------------------+
| UPPER(first_name) |
+-------------------+
| ELLEN             |
| SUNDAR            |
| NEENA             |
| LEX               |
| ALEXANDER         |
| BRUCE             |
| DAVID             |
| VALLI             |
| DIANA             |
| NANCY             |
+-------------------+
10 rows in set (0.01 sec)
--12. write a query to get the first 3 characters of first name of the employees table.
mysql> SELECT LEFT (first_name, 3)
    -> FROM employees;
+----------------------+
| LEFT (first_name, 3) |
+----------------------+
| Ell                  |
| Sun                  |
| Nee                  |
| Lex                  |
| Ale                  |
| Bru                  |
| Dav                  |
| Val                  |
| Dia                  |
| Nan                  |
+----------------------+
10 rows in set (0.03 sec)
--13. write a query to calculate 171*214+625.
mysql> SELECT 171 * 214 + 625;
+-----------------+
| 171 * 214 + 625 |
+-----------------+
|           37219 |
+-----------------+
1 row in set (0.01 sec)
--14. write a query to get the names (for example ellen abel, sunder ande etc.) of all the employees from employees table.
mysql> SELECT CONCAT(first_name, ' ', last_name) AS full_name
    -> FROM employees;
+------------------+
| full_name        |
+------------------+
| Ellen Abel       |
| Sundar Ande      |
| Neena Kochhar    |
| Lex De Haan      |
| Alexander Hunold |
| Bruce Ernst      |
| David Austin     |
| Valli Pataballa  |
| Diana Lorentz    |
| Nancy Greenberg  |
+------------------+
10 rows in set (0.01 sec)
--15. write a query to get first name from employees table after removing white space from both side.
mysql> SELECT TRIM (first_name)
    -> FROM employees;
ERROR 1630 (42000): FUNCTION company_db.TRIM does not exist. Check the 'Function Name Parsing and Resolution' section in the Reference Manual
mysql> SELECT TRIM(first_name)
    -> FROM employees;
+------------------+
| TRIM(first_name) |
+------------------+
| Ellen            |
| Sundar           |
| Neena            |
| Lex              |
| Alexander        |
| Bruce            |
| David            |
| Valli            |
| Diana            |
| Nancy            |
+------------------+
10 rows in set (0.02 sec)

mysql>
