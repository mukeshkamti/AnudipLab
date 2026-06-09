mysql> use  e_commerce;
Database changed
mysql> create table employee(employeeID int(10) not null primary key,employeename varchar(50) not null,salary double not null);
Query OK, 0 rows affected, 1 warning (0.07 sec)

mysql> insert into employee values(1,'anup',25000),(2,'kripa',30000),(3,'rohit',25000),(4,'yash',20000),(5,'manish',300000);
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select *from employee;
+------------+--------------+--------+
| employeeID | employeename | salary |
+------------+--------------+--------+
|          1 | anup         |  25000 |
|          2 | kripa        |  30000 |
|          3 | rohit        |  25000 |
|          4 | yash         |  20000 |
|          5 | manish       | 300000 |
+------------+--------------+--------+
5 rows in set (0.00 sec)

mysql> update employee set salary=35000 where id = 1;
ERROR 1054 (42S22): Unknown column 'id' in 'where clause'
mysql> update employee set salary=35000 where employeeID = 1;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select *from employee;
+------------+--------------+--------+
| employeeID | employeename | salary |
+------------+--------------+--------+
|          1 | anup         |  35000 |
|          2 | kripa        |  30000 |
|          3 | rohit        |  25000 |
|          4 | yash         |  20000 |
|          5 | manish       | 300000 |
+------------+--------------+--------+
5 rows in set (0.00 sec)

mysql> update employee set employeename = ajit where id = 5;
ERROR 1054 (42S22): Unknown column 'id' in 'where clause'
mysql> update employee set employeename = ajit where employeeID = 5;
ERROR 1054 (42S22): Unknown column 'ajit' in 'field list'
mysql> update employee set employeename = 'ajit' where employeeID = 5;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select *from employee;
+------------+--------------+--------+
| employeeID | employeename | salary |
+------------+--------------+--------+
|          1 | anup         |  35000 |
|          2 | kripa        |  30000 |
|          3 | rohit        |  25000 |
|          4 | yash         |  20000 |
|          5 | ajit         | 300000 |
+------------+--------------+--------+
5 rows in set (0.00 sec)

mysql> delete from employee;
Query OK, 5 rows affected (0.01 sec)

mysql> select *from employee;
Empty set (0.00 sec)

mysql> desc employee;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| employeeID   | int         | NO   | PRI | NULL    |       |
| employeename | varchar(50) | NO   |     | NULL    |       |
| salary       | double      | NO   |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> insert into employee values(1,'anup',25000),(2,'kripa',30000),(3,'rohit',25000),(4,'yash',20000),(5,'manish',300000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select *from employee;
+------------+--------------+--------+
| employeeID | employeename | salary |
+------------+--------------+--------+
|          1 | anup         |  25000 |
|          2 | kripa        |  30000 |
|          3 | rohit        |  25000 |
|          4 | yash         |  20000 |
|          5 | manish       | 300000 |
+------------+--------------+--------+
5 rows in set (0.00 sec)

mysql> truncate table employee;
Query OK, 0 rows affected (0.06 sec)

mysql> select *from employee;
Empty set (0.00 sec)

mysql> desc employee;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| employeeID   | int         | NO   | PRI | NULL    |       |
| employeename | varchar(50) | NO   |     | NULL    |       |
| salary       | double      | NO   |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> drop table employee;
Query OK, 0 rows affected (0.10 sec)

mysql> desc employee;
ERROR 1146 (42S02): Table 'e_commerce.employee' doesn't exist
mysql> create table employee(employeeID int(10) not null primary key,employeename varchar(50) not null,salary double not null);
Query OK, 0 rows affected, 1 warning (0.04 sec)

mysql> insert into employee values(1,'anup',25000),(2,'kripa',30000),(3,'rohit',25000),(4,'yash',20000),(5,'manish',300000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select *from employee;
+------------+--------------+--------+
| employeeID | employeename | salary |
+------------+--------------+--------+
|          1 | anup         |  25000 |
|          2 | kripa        |  30000 |
|          3 | rohit        |  25000 |
|          4 | yash         |  20000 |
|          5 | manish       | 300000 |
+------------+--------------+--------+
5 rows in set (0.00 sec)

mysql> alter table employee add email varchar(100)  not null;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| employeeID   | int          | NO   | PRI | NULL    |       |
| employeename | varchar(50)  | NO   |     | NULL    |       |
| salary       | double       | NO   |     | NULL    |       |
| email        | varchar(100) | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> alter table employee modify employeename varchar(100) not null;
Query OK, 5 rows affected (0.15 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> desc employee;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| employeeID   | int          | NO   | PRI | NULL    |       |
| employeename | varchar(100) | NO   |     | NULL    |       |
| salary       | double       | NO   |     | NULL    |       |
| email        | varchar(100) | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> alter table employee drop column email;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| employeeID   | int          | NO   | PRI | NULL    |       |
| employeename | varchar(100) | NO   |     | NULL    |       |
| salary       | double       | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> alter  table employee rename column salary to employeesalary;
Query OK, 0 rows affected (0.09 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| employeeID     | int          | NO   | PRI | NULL    |       |
| employeename   | varchar(100) | NO   |     | NULL    |       |
| employeesalary | double       | NO   |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> alter table employee rename to employee_details;
Query OK, 0 rows affected (0.03 sec)

mysql> desc employee;
ERROR 1146 (42S02): Table 'e_commerce.employee' doesn't exist
mysql> alter table employee_details drop primary key;
Query OK, 5 rows affected (0.16 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> desc employee_details;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| employeeID     | int          | NO   |     | NULL    |       |
| employeename   | varchar(100) | NO   |     | NULL    |       |
| employeesalary | double       | NO   |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> alter table employee_details add constraint primary key(employeeID);
Query OK, 0 rows affected (0.11 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee_details;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| employeeID     | int          | NO   | PRI | NULL    |       |
| employeename   | varchar(100) | NO   |     | NULL    |       |
| employeesalary | double       | NO   |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> show tables;
+----------------------+
| Tables_in_e_commerce |
+----------------------+
| customer             |
| employee_details     |
| order_details        |
| product              |
+----------------------+
4 rows in set (0.01 sec)

mysql>


