/*




Lab 1: Database Schema: Consider a simple database with one tables: BankAccount 

 Table: ● Columns: account_id (Primary Key), account_holder_name, account_balance

 Task 1: Insert Data Write an SQL INSERT statement to insert data into the BankAccount table

. Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance of all account holders from the BankAccount table. 

Task 3: Filtering Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance where the account_balance is more than 30,000.

 Task 4: Updating Data Write an SQL UPDATE statement to change the account_balance of the account holder whose ID is 101. 
*/



mysql> insert into bankaccount values('101','Mukesh Kamti',10000),('102','ajit valmiki',20000),('103','manish',30000),('104','Sivam yadav',40000),('105','Kripakaran Achari',60000);
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from bankaccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
| 101        | Mukesh Kamti        |           10000 |
| 102        | ajit valmiki        |           20000 |
| 103        | manish              |           30000 |
| 104        | Sivam yadav         |           40000 |
| 105        | Kripakaran Achari   |           60000 |
+------------+---------------------+-----------------+
5 rows in set (0.00 sec)

mysql> select account_holder_name, account_balance from bankaccount;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Mukesh Kamti        |           10000 |
| ajit valmiki        |           20000 |
| manish              |           30000 |
| Sivam yadav         |           40000 |
| Kripakaran Achari   |           60000 |
+---------------------+-----------------+
5 rows in set (0.00 sec)

mysql> select  account_holder_name, account_balance >= 30000 from bankaccount;
+---------------------+--------------------------+
| account_holder_name | account_balance >= 30000 |
+---------------------+--------------------------+
| Mukesh Kamti        |                        0 |
| ajit valmiki        |                        0 |
| manish              |                        1 |
| Sivam yadav         |                        1 |
| Kripakaran Achari   |                        1 |
+---------------------+--------------------------+
5 rows in set (0.00 sec)

mysql> select  account_holder_name, account_balance from bankaccount where account_balance>=30000;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| manish              |           30000 |
| Sivam yadav         |           40000 |
| Kripakaran Achari   |           60000 |
+---------------------+-----------------+
3 rows in set (0.00 sec)

mysql> update bankaccount set account_balance=20000 where account_id='101';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select* from bankaccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
| 101        | Mukesh Kamti        |           20000 |
| 102        | ajit valmiki        |           20000 |
| 103        | manish              |           30000 |
| 104        | Sivam yadav         |           40000 |
| 105        | Kripakaran Achari   |           60000 |
+------------+---------------------+-----------------+
5 rows in set (0.00 sec)












