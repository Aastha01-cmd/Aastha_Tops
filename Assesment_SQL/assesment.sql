create database assesment;
use assesment;

create table Worker (
worker_id int primary key, 
First_name varchar(50),
Last_name varchar(50),
Salary int,
Joining_date datetime,
Department varchar(10)
);

insert into Worker values (1, "Monika", "Arora", 100000, '2014-02-20 9:00:00', "HR");
insert into Worker values (2, "Niharika", "Verma", 80000, '2014-06-11 9:00:00', "Admin");
insert into Worker values (3, "Vishal", "Singhal", 300000, '2014-02-20 9:00:00', "HR");
insert into Worker values (4, "Amitabh", "Singh", 500000, '2014-02-20 9:00:00', "Admin");
insert into Worker values (5, "Vivek", "Bhati", 500000, '2014-06-11 9:00:00', "Admin");
insert into Worker values (6, "Vipul", "Diwan", 200000, '2014-06-11 9:00:00', "Account");
insert into Worker values (7, "Satish", "Kumar", 75000, '2014-01-20 9:00:00', "Account");
insert into Worker values (8, "Geetika", "Chauhan", 90000, '2014-04-11 9:00:00', "Admin");

select * from Worker where First_name = "Vipul";

select worker_id, First_name, Last_name, Salary, Joining_date, Department from Worker
where First_name = "Vipul" ;

select worker_id, First_name, Last_name, Salary, Joining_date, Department from Worker
where First_name = "Satish";

SELECT *
FROM worker
WHERE LENGTH(First_name) = 6 AND First_name LIKE '%h';

select * from worker where Salary between 1 and 100000;

select First_name, Last_name, count(*) from worker Group By First_name, Last_name having count(*)> 1;

select * from worker Limit 6 ;

SELECT Department, COUNT(*) AS NumEmployees FROM worker
GROUP BY Department HAVING COUNT(*) < 5;


select Department, count(*) as NumEmployees from worker group by Department;

SELECT Department, First_name, Last_name, Salary FROM worker W
WHERE Salary = (
    SELECT MAX(Salary)
    FROM worker
    WHERE Department = W.Department
);

#Q2 Assement 

create table student (
StdId Int Primary Key,
StdName varchar(30),
Sex varchar(10),
Percentage int,
class int,
Sec varchar(5),
S_Stream varchar(20),
DOB date
);

insert into student values (1001, "Surekha Joshi", "Female", 82, 12, "A", "Science", '1998-03-8');
insert into student values (1002, "MAAHI AGRAWAL", "Female", 56, 11, "C", "Commerce", '2008-11-23');
insert into student values (1003, "Sanam Verma", "Male", 59, 11, "C","Commerce", '2006-06-29');
insert into student values (1004, "Ronit Kumar", "Male", 63, 11, "C", "Commerce", '1997-11-05');
insert into student values (1005, "Dipesh Pulkit", "Male", 78, 11, "B", "Science", '2003-09-14');
insert into student values (1006, "JAHANVI Puri", "Female", 60, 11, "B", "Commerce", '2008-11-07');
insert into student values (1007, "Sanam Kumar", "Male", 23, 12, "F", "Commerce", '1998-03-08');
insert into student values (1008, "SAHIL SARAS", "Male", 56, 11, "C", "Commerce", '2008-11-07');
insert into student values (1009, "AKSHRA AGARWAL", "Female", 72, 12, "B", "Commerce", '1996-10-01');
insert into student values (1010, "STUTI MISHRA", "Female", 39, 11, "F", "Science", '2008-11-23');
insert into student values (1011, "HARSH AGGARWAL ", "Male", 42, 11, "C", "Science", '1998-03-08');
insert into student values (1012, "NIKUNJ AGGARWAL", "Male", 49, 12, "C", "Commerce", '1998-06-28');
insert into student values (1013, "AKRITI SAKSENA", "Female", 89, 12, "A", "Science", '2008-11-23');
insert into student values (1014, "TANI RASTOGI", "Female", 82, 12, "A", "Science", '2008-11-23');

/*1 To display all the records form STUDENT table. SELECT * FROM student ;*/
select * from student;

/*2. To display any name and date of birth from the table STUDENT. SELECT StdName, DOB
FROM student ;*/

select StdName, DOB from student;

/*3. To display all students record where percentage is greater of equal to 80 FROM student table.
SELECT * FROM student WHERE percentage >= 80;*/

select * from student where Percentage >= 80;

/*4. To display student name, stream and percentage where percentage of student is more than 80
SELECT StdName, Stream, Percentage WHERE percentage > 80;*/

select StdName, S_Stream, Percentage from student where Percentage > 80;

/*5. To display all records of science students whose percentage is more than 75 form student table.
SELECT * FORM student WHERE stream = ‘Science’ AND percentage > 75; */

select * from student where S_Stream = 'Science' And Percentage > 75;


















