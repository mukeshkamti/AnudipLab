/*
Create Database StudentManagementSystem

1.Create Table student

with attribute 
* StudentID (Primary Key)
* Name
* Age
* Address

2.Create a table with named Feedback 

with attributes:
● FeedbackID (Primary Key) 

● StudentID (Foreign key) 

● Date 

● InstructorName 

● Feedback

Add 5 Records in table
*/



mysql> Create Database StudentManagementSystem33;
Query OK, 1 row affected (0.01 sec)

mysql> use StudentManagementSystem33;
Database changed
mysql> create table student(studentID varchar(20) not null primary key,name varchar(30) not null,age int not null,address varchar(50) not null);
Query OK, 0 rows affected (0.04 sec)

mysql> desc student;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| studentID | varchar(20) | NO   | PRI | NULL    |       |
| name      | varchar(30) | NO   |     | NULL    |       |
| age       | int         | NO   |     | NULL    |       |
| address   | varchar(50) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> INSERT INTO student (studentID, name, age, address) VALUES
    -> ('S001', 'Rahul Sharma', 20, 'Mumbai'),
    -> ('S002', 'Priya Patel', 21, 'Ahmedabad'),
    -> ('S003', 'Amit Kumar', 19, 'Delhi'),
    -> ('S004', 'Neha Singh', 22, 'Lucknow'),
    -> ('S005', 'Arjun Verma', 20, 'Pune');
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select *from student;
+-----------+--------------+-----+-----------+
| studentID | name         | age | address   |
+-----------+--------------+-----+-----------+
| S001      | Rahul Sharma |  20 | Mumbai    |
| S002      | Priya Patel  |  21 | Ahmedabad |
| S003      | Amit Kumar   |  19 | Delhi     |
| S004      | Neha Singh   |  22 | Lucknow   |
| S005      | Arjun Verma  |  20 | Pune      |
+-----------+--------------+-----+-----------+
5 rows in set (0.00 sec)

mysql> create table Feedback(Feedback_id varchar(10) not null primary key,StudentID varchar(10) not null,date datetime not null,InstructorName varchar(20) not null,Feedback varchar(100) not null,foreign key(StudentID) references student(StudentID));
Query OK, 0 rows affected (0.07 sec)

mysql> insert into Feedback values('F101','S001','2026-06-01','Rajshri','sesssion was good'),('F102','S002','2026-06-02','Meenakshi','SS session was good'),('F103','S003','2026-06-03','Rajshri','best session ever'),('F104','S004','2026-06-04','Meenakshi','session is good'),('F105','S005','2026-06-05','Rajshri','sessiopn was excellent');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select *from feedback;
+-------------+-----------+---------------------+----------------+------------------------+
| Feedback_id | StudentID | date                | InstructorName | Feedback               |
+-------------+-----------+---------------------+----------------+------------------------+
| F101        | S001      | 2026-06-01 00:00:00 | Rajshri        | sesssion was good      |
| F102        | S002      | 2026-06-02 00:00:00 | Meenakshi      | SS session was good    |
| F103        | S003      | 2026-06-03 00:00:00 | Rajshri        | best session ever      |
| F104        | S004      | 2026-06-04 00:00:00 | Meenakshi      | session is good        |
| F105        | S005      | 2026-06-05 00:00:00 | Rajshri        | sessiopn was excellent |
+-------------+-----------+---------------------+----------------+------------------------+
5 rows in set (0.00 sec)

mysql>



