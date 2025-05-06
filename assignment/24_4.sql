create database market_co;
use market_co;

-- Company Table
CREATE TABLE Company (
    CompanyID INT PRIMARY KEY,
    CompanyName VARCHAR(45),
    Street VARCHAR(45),
    City VARCHAR(45),
    State VARCHAR(45),
    Zip VARCHAR(10)
);

-- Contact Table
CREATE TABLE Contact (
    ContactID INT PRIMARY KEY,
    CompanyID INT,
    FirstName VARCHAR(45),
    LastName VARCHAR(45),
    Street VARCHAR(45),
    City VARCHAR(45),
    State VARCHAR(45),
    Zip VARCHAR(10),
    IsMain BOOLEAN,
    Email VARCHAR(45),
    Phone VARCHAR(12),
    FOREIGN KEY (CompanyID) REFERENCES Company(CompanyID)
);

CREATE TABLE ContactEmployee (
	ContactEmployeeID INT,
    ContactID INT,
    EmployeID INT PRIMARY KEY,
    ContactDate DATE,
    Description VARCHAR(100),
    FOREIGN KEY (ContactID) REFERENCES Contact(ContactID)
	);


CREATE TABLE Employeee (
	EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(30),
    LastName VARCHAR(30),
    Salary DECIMAL(10,2),
    HireDate DATE,
    JobTitle VARCHAR(25),
    Email VARCHAR(30),
    Phone VARCHAR(12),
    FOREIGN KEY (EmployeeID) REFERENCES ContactEmployee(EmployeID)
	);
    
INSERT INTO Company VALUES ('121', 'Derma', 'Sector 2', 'Gurghram', 'Delhi', '014001');
INSERT INTO Company VALUES ('122', 'Apollo', 'Andheri', 'Mumbai ', 'Maharashtra', '01050101');
INSERT INTO Company VALUES ('123', 'Espark', 'Sola', 'Ahmedabad', 'Gujarat', '021001');
INSERT INTO Company VALUES ('124', 'Mewar corture', 'Pichola Lake', 'Udaipur', 'Rajasthan', '01010' );
INSERT INTO Company VALUES ('125', 'Maruti Flowers', 'Salangppur', 'Salangpur', 'Gujarat', '02401420' );
INSERT INTO Company VALUES ('127',  'Urban Outtfitter. Inc.', 'Amritsar', 'Amritsar', 'Punjab', '02401042' );
INSERT INTO Company VALUES ('126', 'Toll Brothers', '123 Main Street', 'Philadelphia', 'PA', '19103');

INSERT INTO Contact VALUES ('125', '123', 'Anurag', 'Kapoor ', 'Marine Drive', 'Mumbai', 'Maharastra', '52205', '1', 'anuragkapoor@kapoorindustries.co', '1425367894');
INSERT INTO Contact VALUES ('143', '121', 'Saurabh', 'Alhuwalia', 'Golden Temple ST', 'Amritsar', 'Punjab', '12123', '1', 'saurabhalhuwalia@gmail.com', '1402365201');
INSERT INTO Contact VALUES('147', '125', 'Ram', 'Alhawat ', 'SG Highway', 'Ahmedabad ', 'Gujarat ', '308202', '1', 'ramalhawat@gmail.com', '9987451200');
INSERT INTO Contact VALUES('166', '122', 'Lester', 'John', 'Haroow ST', 'Harrow', 'London', '15471', '1', 'lesterjohn@gmail.com', '4478985213');
INSERT INTO Contact VALUES('167', '121', 'Kritika', 'Singh', 'Old Deldi', 'Gurgaon ', 'Delhi', '140410', '1', 'kritikadesigns_ks@gmail.com', '6655478512');
INSERT INTO Contact VALUES('185', '124', 'Parthiv', 'Singhania ', 'Pink hues', 'Jaipur', 'Rajasthan', '14141', '1', 'parthivsinghania@singhanias.co', '9898741560');
INSERT INTO Contact VALUES ('144', '122', 'Dianne', 'Connor', 'Noida Sector 5', 'Noida', 'UP', '201305', '1', 'ravi.gupta@hcl.com', '215-555-8804');
INSERT INTO Contact VALUES('188', '126', 'Parthiv', 'Singhania ', 'Pink hues', 'Jaipur', 'Rajasthan', '14141', '1', 'parthivsinghania@singhanias.co', '9898741560');


    
INSERT INTO ContactEmployee VALUES (147, 166, 523, STR_TO_DATE('March 12, 2014', '%M %d, %Y'), 'Discussed project delivery timeline');
INSERT INTO ContactEmployee VALUES (851, 185, 525, STR_TO_DATE('July 15, 2022','%M %d, %Y'), 'Reviewed quarterly performance');
INSERT INTO ContactEmployee VALUES (145, 143, 522, STR_TO_DATE('January 1, 2015','%M %d, %Y'), 'Negotiated contract terms');
INSERT INTO ContactEmployee VALUES (123, 125, 521, STR_TO_DATE('April 10, 2024', '%M %d, %Y'), 'Initial consultation');
INSERT INTO ContactEmployee VALUES (157, 167, 524, STR_TO_DATE('October 15, 2019','%M %d, %Y'), 'Reviewed quarterly performance');
INSERT INTO ContactEmployee VALUES (855, 185, 500, STR_TO_DATE('November 25, 2025','%M %d, %Y'), 'Finance Reviews');
INSERT INTO ContactEmployee VALUES (150, 188, 126, STR_TO_DATE('October 15, 2019','%M %d, %Y'), 'Reviewed quarterly performance');


INSERT INTO Employeee VALUES (525, 'Jack', 'Lee', 75000.00, '2020-06-01', 'Software Engineer', 'amit.kumar@tcs.com', '215-555-8803');
INSERT INTO Employeee VALUES (500, 'Lesley', 'Verma', 85000.00, '2019-04-15', 'Senior Analyst', 'priya.verma@infosys.com', '215-555-8804');
INSERT INTO Employeee VALUES (521, 'Lesley', ' Bland', 90000.00, '2018-03-20', 'Project Manager', 'raj.singh@wipro.com', '215-555-8805');
INSERT INTO Employeee VALUES (524, 'Jane', 'Doe', 95000.00, '2022-02-01', 'Sales Manager', 'jane.doe@example.com', '215-555-1235');
INSERT INTO Employeee VALUES (522, 'Mattew', 'Perry', 915000.00, '2021-02-01', 'Data Analyst','mathewpaerry@gmail.com', '215-555-8803');
INSERT INTO Employeee VALUES (523, 'Jane', 'Clark', 95000.00, '2022-02-01', 'Sales Manager', 'jane.doe@example.com', '215-555-1235');
INSERT INTO Employeee VALUES (126, 'Lester', 'Verma', 85000.00, '2019-04-15', 'Senior Analyst', 'priya.verma@infosys.com', '215-555-8804');



#In the Employee table, the statement that changes Lesley Bland’s
# phone number to 215-555-8800 
update employee set phone = 215-555-8800 where Firstname = "Lesley";

#In the Company table, the statement that changes the name of “Urban
# Outfitters, Inc.” to “Urban Outfitters” 
update company set CompanyName = "Urban Outfitters" where CompanyName = "Urban Outfitters.Inc.";

/*In ContactEmployee table, the statement that removes Dianne Connor’s contact
event with Jack Lee (one statement).
HINT: Use the primary key of the ContactEmployee 
table to specify the correct record to remove.*/

DELETE FROM ContactEmployee
WHERE ContactID = (SELECT ContactID FROM Contact WHERE FirstName = 'Dianne' AND LastName = 'Connor')
AND EmployeID = (SELECT EmployeeID FROM Employee WHERE FirstName = 'Jack' AND LastName = 'Lee');

/*7) Write the SQL SELECT query that displays the names of the employees that
have contacted Toll Brothers (one statement). Run the SQL SELECT query in
MySQL Workbench. Copy the results below as well. */


SELECT Employee.FirstName, Employee.LastName
FROM Employee
JOIN ContactEmployee ON Employee.EmployeeID = ContactEmployee.EmployeID
JOIN Contact ON ContactEmployee.ContactID = Contact.ContactID
JOIN Company ON Contact.CompanyID = Company.CompanyID
WHERE Company.CompanyName = 'Toll Brothers';

/* 8) What is the significance of “%” and “_” operators in the LIKE statement? 

Ans :- In SQL, the LIKE statement is used for pattern matching in WHERE clauses.
The % and _ operators are wildcard characters that play a crucial role in defining these patterns:

% Using With LIKE statement :-:

one, or multiple characters. It is used to match any sequence of characters.
Ex: WHERE name LIKE 'A%' would match any name that starts with the letter "A", such as "Alice", "Alex", "Aiden", etc.

_ Using With LIKE statement :-

It is used to match any single character at a specific position.
Ex: WHERE name LIKE 'J_n' would match names like "Jan", "Jon", "Jen", etc., where the first character is "J" and
the last character is "n" with exactly one character in between.

These operators make the LIKE statement flexible for pattern-based searching in SQL queries.
*/


/* 9) Explain normalization in the context of databases. 

Ans :- Normalization is a process in database design that organizes data to reduce redundancy and improve data integrity.
The main goal of normalization is to divide a database into two or more tables and define relationships between them
to minimize data duplication. This results in a more efficient and scalable database structure.
*/


/* 10) What does a join in MySQL mean? 

Ans :- In MySQL, a join is an operation that allows you to combine rows from two or more tables
based on a related column between them. Joins are used to retrieve data from multiple tables,
making it possible to create meaningful relationships and integrate information stored across
different tables in a relational database.

Types of Joins in MySQL:
1. INNER JOIN:
2. LEFT JOIN (or LEFT OUTER JOIN):
3. RIGHT JOIN (or RIGHT OUTER JOIN):
4. FULL JOIN (or FULL OUTER JOIN):
5. CROSS JOIN:
6. SELF JOIN:
*/


/* 11) 19.What do you understand about DDL, DCL, and DML in MySQL?

Ans :- In MySQL, SQL statements are categorized into different types based on their functionality. The three primary categories
are DDL, DML and DCL. Each serves a specific purpose in managing a database.

1. DDL (Data Definition Language):--
Purpose: DDL statements are used to define and modify the structure of database objects, such as tables, indexes, views, and schemas.

2. DML (Data Manipulation Language):--
Purpose: DML statements are used to interact with and manipulate the data stored in database tables.

3. DCL (Data Control Language):--
Purpose: DCL statements are used to control access to data within a database, such as granting or revoking permissions to users.
 */
 
 
 /* 12) What is the role of the MySQL JOIN clause in a query, and what are some 
common types of joins?

Ans :-

The JOIN clause in MySQL is used to combine rows from two or more tables based on a related column between them.
It enables you to retrieve data from multiple tables in a single query, making it possible to analyze and present
complex data relationships.

Role of the JOIN Clause:
Combine Data: Joins allow you to combine and query data from different tables based on a common attribute,
which helps in creating comprehensive results.
Enhance Query Flexibility: They enable complex querying and reporting by linking tables, which can contain related information.

INNER JOIN: Matches rows between tables.

LEFT JOIN: Includes all rows from the left table, matched rows from the right.

RIGHT JOIN: Includes all rows from the right table, matched rows from the left.

FULL JOIN: Includes all rows from both tables.

CROSS JOIN: Returns the Cartesian product of both tables.

SELF JOIN: Joins a table with itself.

These join types allow you to construct complex queries and retrieve related data efficiently from multiple tables. 
*/
