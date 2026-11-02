mysql> CREATE TABLE IF NOT EXISTS countries (
    ->     country_id varchar(2),
    ->     country_name varchar(40),
    ->     region_id decimal(10,0)
    -> );
Query OK, 0 rows affected, 1 warning (0.02 sec)

mysql> desc countries;
+--------------+---------------+------+-----+---------+-------+
| Field        | Type          | Null | Key | Default | Extra |
+--------------+---------------+------+-----+---------+-------+
| country_id   | varchar(2)    | YES  |     | NULL    |       |
| country_name | varchar(40)   | YES  |     | NULL    |       |
| region_id    | decimal(10,0) | YES  |     | NULL    |       |
+--------------+---------------+------+-----+---------+-------+
3 rows in set (0.00 sec)
