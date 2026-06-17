/*


Create database Studentmanagementsystem contain  "Student" table with the following a columns:StudentId,FirstName,lastName and "Course" table with the following a columns: CourseId,CourseName  and Enrollment table with the following a columns:EnrollmentID,StudentID(Foreign key),CourseID(Foreign Key).

You want to use inner join to generate a list of all possible student-course combinations.


*/


mysql> CREATE DATABASE StudentManagementSystem6;
Query OK, 1 row affected (0.03 sec)

mysql> USE StudentManagementSystem6;
Database changed
mysql> CREATE TABLE Student (
    ->     StudentId INT PRIMARY KEY,
    ->     FirstName VARCHAR(50),
    ->     LastName VARCHAR(50)
    -> );
Query OK, 0 rows affected (0.07 sec)

mysql> DESC Student;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| StudentId | int         | NO   | PRI | NULL    |       |
| FirstName | varchar(50) | YES  |     | NULL    |       |
| LastName  | varchar(50) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> insert into Student values(101,'vivek','sharma'),(102,'Kripakaran','Achari'),(103,'Om','Singh'),(104,'manish','yadav'),(105,'manish','Tiwari'),(106,'prince','Singh');
Query OK, 6 rows affected (0.01 sec)
Records: 6  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM Student;
+-----------+------------+----------+
| StudentId | FirstName  | LastName |
+-----------+------------+----------+
|       101 | vivek      | sharma   |
|       102 | Kripakaran | Achari   |
|       103 | Om         | Singh    |
|       104 | manish     | yadav    |
|       105 | manish     | Tiwari   |
|       106 | prince     | Singh    |
+-----------+------------+----------+
6 rows in set (0.00 sec)

mysql> CREATE TABLE Course (
    ->     CourseId INT PRIMARY KEY,
    ->     CourseName VARCHAR(100)
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql> DESC Course;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| CourseId   | int          | NO   | PRI | NULL    |       |
| CourseName | varchar(100) | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> insert into Course values(201,'Data Analyst'),(202,'Cyber Security'),(203,'Finance'),(204,'Business Analyst'),(205,'Graphic Designer'),(206,'Interior Designer');
Query OK, 6 rows affected (0.01 sec)
Records: 6  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM Course;
+----------+-------------------+
| CourseId | CourseName        |
+----------+-------------------+
|      201 | Data Analyst      |
|      202 | Cyber Security    |
|      203 | Finance           |
|      204 | Business Analyst  |
|      205 | Graphic Designer  |
|      206 | Interior Designer |
+----------+-------------------+
6 rows in set (0.00 sec)

mysql> CREATE TABLE Enrollment (
    ->     EnrollmentID INT PRIMARY KEY,
    ->     StudentID INT,
    ->     CourseID INT,
    ->     FOREIGN KEY (StudentID) REFERENCES Student(StudentId),
    ->     FOREIGN KEY (CourseID) REFERENCES Course(CourseId)
    -> );
Query OK, 0 rows affected (0.06 sec)

mysql> DESC Enrollment;
+--------------+------+------+-----+---------+-------+
| Field        | Type | Null | Key | Default | Extra |
+--------------+------+------+-----+---------+-------+
| EnrollmentID | int  | NO   | PRI | NULL    |       |
| StudentID    | int  | YES  | MUL | NULL    |       |
| CourseID     | int  | YES  | MUL | NULL    |       |
+--------------+------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> insert into Enrollment values(01,101,201),(02,102,202),(03,103,203),(04,104,204),(05,105,205),(06,106,206);
Query OK, 6 rows affected (0.01 sec)
Records: 6  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM Enrollment;
+--------------+-----------+----------+
| EnrollmentID | StudentID | CourseID |
+--------------+-----------+----------+
|            1 |       101 |      201 |
|            2 |       102 |      202 |
|            3 |       103 |      203 |
|            4 |       104 |      204 |
|            5 |       105 |      205 |
|            6 |       106 |      206 |
+--------------+-----------+----------+
6 rows in set (0.00 sec)

mysql> SELECT Student.StudentId,
    ->        Student.FirstName,
    ->        Student.LastName,
    ->        Course.CourseId,
    ->        Course.CourseName
    -> FROM Enrollment
    -> INNER JOIN Student
    -> ON Enrollment.StudentID = Student.StudentId
    -> INNER JOIN Course
    -> ON Enrollment.CourseID = Course.CourseId;
+-----------+------------+----------+----------+-------------------+
| StudentId | FirstName  | LastName | CourseId | CourseName        |
+-----------+------------+----------+----------+-------------------+
|       101 | vivek      | sharma   |      201 | Data Analyst      |
|       102 | Kripakaran | Achari   |      202 | Cyber Security    |
|       103 | Om         | Singh    |      203 | Finance           |
|       104 | manish     | yadav    |      204 | Business Analyst  |
|       105 | manish     | Tiwari   |      205 | Graphic Designer  |
|       106 | prince     | Singh    |      206 | Interior Designer |
+-----------+------------+----------+----------+-------------------+
6 rows in set (0.00 sec)

mysql>




