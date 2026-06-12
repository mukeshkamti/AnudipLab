mysql> create database joins2;
Query OK, 1 row affected (0.08 sec)

mysql> use joins2;
Database changed
mysql> create table department(department_id int not null primary key,department_name varchar(50) not null);
Query OK, 0 rows affected (0.06 sec)

mysql> desc  department;
+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| department_id   | int         | NO   | PRI | NULL    |       |
| department_name | varchar(50) | NO   |     | NULL    |       |
+-----------------+-------------+------+-----+---------+-------+
2 rows in set (0.01 sec)

mysql> insert into  department values(1,'HR'),(2,'IT'),(3,'Finanace'),(4,'Marketing');
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from  department;
+---------------+-----------------+
| department_id | department_name |
+---------------+-----------------+
|             1 | HR              |
|             2 | IT              |
|             3 | Finanace        |
|             4 | Marketing       |
+---------------+-----------------+
4 rows in set (0.00 sec)

mysql> create table employee(employeeid int primary key not null,employee_name varchar(50) not null,department_id int ,foreign key(department_id) references department(department_id));
Query OK, 0 rows affected (0.06 sec)

mysql> desc employee;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| employeeid    | int         | NO   | PRI | NULL    |       |
| employee_name | varchar(50) | NO   |     | NULL    |       |
| department_id | int         | YES  | MUL | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> insert into employee values(1,'anup',1),(2,'om',2),(3,'kripa',1),(4,'rohit',null),(5,'yash',4);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+------------+---------------+---------------+
| employeeid | employee_name | department_id |
+------------+---------------+---------------+
|          1 | anup          |             1 |
|          2 | om            |             2 |
|          3 | kripa         |             1 |
|          4 | rohit         |          NULL |
|          5 | yash          |             4 |
+------------+---------------+---------------+
5 rows in set (0.00 sec)

mysql> select * from  department;
+---------------+-----------------+
| department_id | department_name |
+---------------+-----------------+
|             1 | HR              |
|             2 | IT              |
|             3 | Finanace        |
|             4 | Marketing       |
+---------------+-----------------+
4 rows in set (0.00 sec)

mysql> select employee_name,department_name from employee inner join department on employee.department_id=department.department_id;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| anup          | HR              |
| kripa         | HR              |
| om            | IT              |
| yash          | Marketing       |
+---------------+-----------------+
4 rows in set (0.00 sec)

mysql> select employee_name,department_name from employee left join department on employee.department_id=department.department_id;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| anup          | HR              |
| om            | IT              |
| kripa         | HR              |
| rohit         | NULL            |
| yash          | Marketing       |
+---------------+-----------------+
5 rows in set (0.00 sec)

mysql> select * from employee;
+------------+---------------+---------------+
| employeeid | employee_name | department_id |
+------------+---------------+---------------+
|          1 | anup          |             1 |
|          2 | om            |             2 |
|          3 | kripa         |             1 |
|          4 | rohit         |          NULL |
|          5 | yash          |             4 |
+------------+---------------+---------------+
5 rows in set (0.00 sec)

mysql> select * from  department;
+---------------+-----------------+
| department_id | department_name |
+---------------+-----------------+
|             1 | HR              |
|             2 | IT              |
|             3 | Finanace        |
|             4 | Marketing       |
+---------------+-----------------+
4 rows in set (0.00 sec)

mysql> select employee_name,department_name from employee left join department on employee.department_id=department.department_id;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| anup          | HR              |
| om            | IT              |
| kripa         | HR              |
| rohit         | NULL            |
| yash          | Marketing       |
+---------------+-----------------+
5 rows in set (0.00 sec)

mysql> select employee_name,department_name from employee right join department on employee.department_id=department.department_id;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| anup          | HR              |
| kripa         | HR              |
| om            | IT              |
| NULL          | Finanace        |
| yash          | Marketing       |
+---------------+-----------------+
5 rows in set (0.00 sec)

mysql> select employee_name,department_name from employee cross join department;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| anup          | Marketing       |
| anup          | Finanace        |
| anup          | IT              |
| anup          | HR              |
| om            | Marketing       |
| om            | Finanace        |
| om            | IT              |
| om            | HR              |
| kripa         | Marketing       |
| kripa         | Finanace        |
| kripa         | IT              |
| kripa         | HR              |
| rohit         | Marketing       |
| rohit         | Finanace        |
| rohit         | IT              |
| rohit         | HR              |
| yash          | Marketing       |
| yash          | Finanace        |
| yash          | IT              |
| yash          | HR              |
+---------------+-----------------+
20 rows in set (0.00 sec)

mysql>








