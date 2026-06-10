
mysql> use e_commerce;
Database changed
mysql> show tables;
+----------------------+
| Tables_in_e_commerce |
+----------------------+
| customer             |
| employee_details     |
| emppp                |
| order_details        |
| product              |
+----------------------+
5 rows in set (0.01 sec)

mysql> select * from employee_details;
+------------+--------------+----------------+
| employeeID | employeename | employeesalary |
+------------+--------------+----------------+
|          1 | anup         |          25000 |
|          2 | kripa        |          30000 |
|          3 | rohit        |          25000 |
|          4 | yash         |          20000 |
|          5 | manish       |         300000 |
+------------+--------------+----------------+
5 rows in set (0.01 sec)

mysql> select * from employee_details limit 2;
+------------+--------------+----------------+
| employeeID | employeename | employeesalary |
+------------+--------------+----------------+
|          1 | anup         |          25000 |
|          2 | kripa        |          30000 |
+------------+--------------+----------------+
2 rows in set (0.00 sec)

mysql> select * from employee_details limit 4;
+------------+--------------+----------------+
| employeeID | employeename | employeesalary |
+------------+--------------+----------------+
|          1 | anup         |          25000 |
|          2 | kripa        |          30000 |
|          3 | rohit        |          25000 |
|          4 | yash         |          20000 |
+------------+--------------+----------------+
4 rows in set (0.00 sec)

mysql> select * from employee_details order by employeesalary;
+------------+--------------+----------------+
| employeeID | employeename | employeesalary |
+------------+--------------+----------------+
|          4 | yash         |          20000 |
|          1 | anup         |          25000 |
|          3 | rohit        |          25000 |
|          2 | kripa        |          30000 |
|          5 | manish       |         300000 |
+------------+--------------+----------------+
5 rows in set (0.00 sec)

mysql> select * from employee_details order by employeename;
+------------+--------------+----------------+
| employeeID | employeename | employeesalary |
+------------+--------------+----------------+
|          1 | anup         |          25000 |
|          2 | kripa        |          30000 |
|          5 | manish       |         300000 |
|          3 | rohit        |          25000 |
|          4 | yash         |          20000 |
+------------+--------------+----------------+
5 rows in set (0.00 sec)

mysql> select * from employee_details order by employeename desc;
+------------+--------------+----------------+
| employeeID | employeename | employeesalary |
+------------+--------------+----------------+
|          4 | yash         |          20000 |
|          3 | rohit        |          25000 |
|          5 | manish       |         300000 |
|          2 | kripa        |          30000 |
|          1 | anup         |          25000 |
+------------+--------------+----------------+
5 rows in set (0.00 sec)

mysql> select * from employee_details order by employeesalary desc;
+------------+--------------+----------------+
| employeeID | employeename | employeesalary |
+------------+--------------+----------------+
|          5 | manish       |         300000 |
|          2 | kripa        |          30000 |
|          1 | anup         |          25000 |
|          3 | rohit        |          25000 |
|          4 | yash         |          20000 |
+------------+--------------+----------------+
5 rows in set (0.00 sec)

mysql> select * from employee_details order by employeesalary desc limit  2;
+------------+--------------+----------------+
| employeeID | employeename | employeesalary |
+------------+--------------+----------------+
|          5 | manish       |         300000 |
|          2 | kripa        |          30000 |
+------------+--------------+----------------+
2 rows in set (0.00 sec)

mysql> select * from customer;
+-------------+--------+--------+--------------------------+------------+--------------------+----------+
| customer_id | name   | city   | email                    | phone_no   | address            | pin_code |
+-------------+--------+--------+--------------------------+------------+--------------------+----------+
| c101        | mukesh | colaba | mukeshkamti@123gmail.com | 9321662560 | ganesh murti nagar |   400005 |
| c121        | mukesh | mumbai | mukeshkamti@12gmail.com  | 98920008   | colaba mumbai      |   400005 |
| c131        | mukesh | mumbai | mukeshkamti@12gmail.com  | 98920008   | colaba mumbai      |   400005 |
| c141        | mukesh | mumbai | mukeshkamti@12gmail.com  | 98920008   | colaba mumbai      |   400005 |
| c151        | mukesh | anup   | mukeshkamti@12gmail.com  | 98990008   | colaba mumbai      |   400005 |
+-------------+--------+--------+--------------------------+------------+--------------------+----------+
5 rows in set (0.01 sec)

mysql> select ditinct city from customer;
ERROR 1054 (42S22): Unknown column 'ditinct' in 'field list'
mysql> select distinct city from customer;
+--------+
| city   |
+--------+
| colaba |
| mumbai |
| anup   |
+--------+
3 rows in set (0.00 sec)

mysql> select  not distinct city from customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'distinct city from customer' at line 1
mysql> select city from  customer;
+--------+
| city   |
+--------+
| colaba |
| mumbai |
| mumbai |
| mumbai |
| anup   |
+--------+
5 rows in set (0.00 sec)

mysql> select * from customer;
+-------------+--------+--------+--------------------------+------------+--------------------+----------+
| customer_id | name   | city   | email                    | phone_no   | address            | pin_code |
+-------------+--------+--------+--------------------------+------------+--------------------+----------+
| c101        | mukesh | colaba | mukeshkamti@123gmail.com | 9321662560 | ganesh murti nagar |   400005 |
| c121        | mukesh | mumbai | mukeshkamti@12gmail.com  | 98920008   | colaba mumbai      |   400005 |
| c131        | mukesh | mumbai | mukeshkamti@12gmail.com  | 98920008   | colaba mumbai      |   400005 |
| c141        | mukesh | mumbai | mukeshkamti@12gmail.com  | 98920008   | colaba mumbai      |   400005 |
| c151        | mukesh | anup   | mukeshkamti@12gmail.com  | 98990008   | colaba mumbai      |   400005 |
+-------------+--------+--------+--------------------------+------------+--------------------+----------+
5 rows in set (0.00 sec)

mysql> select * from customer where customer_id between 'c101' and 'c104';
+-------------+--------+--------+--------------------------+------------+--------------------+----------+
| customer_id | name   | city   | email                    | phone_no   | address            | pin_code |
+-------------+--------+--------+--------------------------+------------+--------------------+----------+
| c101        | mukesh | colaba | mukeshkamti@123gmail.com | 9321662560 | ganesh murti nagar |   400005 |
+-------------+--------+--------+--------------------------+------------+--------------------+----------+
1 row in set (0.00 sec)

mysql> select * from order_details;
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quentity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      101 | c121        | p102       |       20 |      200000 | gpay         | 2026-06-06 00:00:00 | shipping     |
|      102 | c131        | p103       |       20 |      200000 | gpay         | 2026-06-06 00:00:00 | shipping     |
|      103 | c141        | p104       |       20 |      200000 | gpay         | 2026-06-06 00:00:00 | shipping     |
|      104 | c151        | p105       |       20 |      200000 | gpay         | 2026-06-06 00:00:00 | shipping     |
|      105 | c151        | p105       |       20 |      200000 | gpay         | 2026-06-06 00:00:00 | shipping     |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
5 rows in set (0.01 sec)

mysql> select * from order_details where order_date between '2026-06-06' and '2026-06-06';
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quentity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      101 | c121        | p102       |       20 |      200000 | gpay         | 2026-06-06 00:00:00 | shipping     |
|      102 | c131        | p103       |       20 |      200000 | gpay         | 2026-06-06 00:00:00 | shipping     |
|      103 | c141        | p104       |       20 |      200000 | gpay         | 2026-06-06 00:00:00 | shipping     |
|      104 | c151        | p105       |       20 |      200000 | gpay         | 2026-06-06 00:00:00 | shipping     |
|      105 | c151        | p105       |       20 |      200000 | gpay         | 2026-06-06 00:00:00 | shipping     |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
5 rows in set (0.00 sec)

mysql> select * from order_details where order_date  not between '2026-06-06' and '2026-06-06';
Empty set (0.00 sec)

mysql> select * from customer;
+-------------+--------+--------+--------------------------+------------+--------------------+----------+
| customer_id | name   | city   | email                    | phone_no   | address            | pin_code |
+-------------+--------+--------+--------------------------+------------+--------------------+----------+
| c101        | mukesh | colaba | mukeshkamti@123gmail.com | 9321662560 | ganesh murti nagar |   400005 |
| c121        | mukesh | mumbai | mukeshkamti@12gmail.com  | 98920008   | colaba mumbai      |   400005 |
| c131        | mukesh | mumbai | mukeshkamti@12gmail.com  | 98920008   | colaba mumbai      |   400005 |
| c141        | mukesh | mumbai | mukeshkamti@12gmail.com  | 98920008   | colaba mumbai      |   400005 |
| c151        | mukesh | anup   | mukeshkamti@12gmail.com  | 98990008   | colaba mumbai      |   400005 |
+-------------+--------+--------+--------------------------+------------+--------------------+----------+
5 rows in set (0.00 sec)

mysql> select * from customer where customer_id in('c101','c131','c151');
+-------------+--------+--------+--------------------------+------------+--------------------+----------+
| customer_id | name   | city   | email                    | phone_no   | address            | pin_code |
+-------------+--------+--------+--------------------------+------------+--------------------+----------+
| c101        | mukesh | colaba | mukeshkamti@123gmail.com | 9321662560 | ganesh murti nagar |   400005 |
| c131        | mukesh | mumbai | mukeshkamti@12gmail.com  | 98920008   | colaba mumbai      |   400005 |
| c151        | mukesh | anup   | mukeshkamti@12gmail.com  | 98990008   | colaba mumbai      |   400005 |
+-------------+--------+--------+--------------------------+------------+--------------------+----------+
3 rows in set (0.01 sec)

mysql> select * from customer where customer_id not in('c101','c131','c151');
+-------------+--------+--------+-------------------------+----------+---------------+----------+
| customer_id | name   | city   | email                   | phone_no | address       | pin_code |
+-------------+--------+--------+-------------------------+----------+---------------+----------+
| c121        | mukesh | mumbai | mukeshkamti@12gmail.com | 98920008 | colaba mumbai |   400005 |
| c141        | mukesh | mumbai | mukeshkamti@12gmail.com | 98920008 | colaba mumbai |   400005 |
+-------------+--------+--------+-------------------------+----------+---------------+----------+
2 rows in set (0.00 sec)

mysql> select * from customer where city is null;
Empty set (0.05 sec)

mysql> select * from customer where city is not null;
+-------------+--------+--------+--------------------------+------------+--------------------+----------+
| customer_id | name   | city   | email                    | phone_no   | address            | pin_code |
+-------------+--------+--------+--------------------------+------------+--------------------+----------+
| c101        | mukesh | colaba | mukeshkamti@123gmail.com | 9321662560 | ganesh murti nagar |   400005 |
| c121        | mukesh | mumbai | mukeshkamti@12gmail.com  | 98920008   | colaba mumbai      |   400005 |
| c131        | mukesh | mumbai | mukeshkamti@12gmail.com  | 98920008   | colaba mumbai      |   400005 |
| c141        | mukesh | mumbai | mukeshkamti@12gmail.com  | 98920008   | colaba mumbai      |   400005 |
| c151        | mukesh | anup   | mukeshkamti@12gmail.com  | 98990008   | colaba mumbai      |   400005 |
+-------------+--------+--------+--------------------------+------------+--------------------+----------+
5 rows in set (0.00 sec)

mysql> select * from customer where city='mumbai' or address='ganesh murti nagar';
+-------------+--------+--------+--------------------------+------------+--------------------+----------+
| customer_id | name   | city   | email                    | phone_no   | address            | pin_code |
+-------------+--------+--------+--------------------------+------------+--------------------+----------+
| c101        | mukesh | colaba | mukeshkamti@123gmail.com | 9321662560 | ganesh murti nagar |   400005 |
| c121        | mukesh | mumbai | mukeshkamti@12gmail.com  | 98920008   | colaba mumbai      |   400005 |
| c131        | mukesh | mumbai | mukeshkamti@12gmail.com  | 98920008   | colaba mumbai      |   400005 |
| c141        | mukesh | mumbai | mukeshkamti@12gmail.com  | 98920008   | colaba mumbai      |   400005 |
+-------------+--------+--------+--------------------------+------------+--------------------+----------+
4 rows in set (0.00 sec)

mysql>


















