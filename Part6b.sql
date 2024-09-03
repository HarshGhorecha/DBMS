Part 6 B

CREATE TABLE PERSON(
PERSONID INT,
PERSONNAME VARCHAR(20),
DEPARTMENTID INT,
SALARY INT,
JOININGDATE DATE,
CITY VARCHAR(10));

SELECT * FROM PERSON 

INSERT INTO PERSON VALUES(101,'Rahul Tripathi', 2, 56000,'01-01-2000', 'Rajkot');

INSERT INTO PERSON VALUES(102, 'Hardik Pandya', 3, 18000, '25-09-2001', 'Ahmedabad');

INSERT INTO PERSON VALUES(103, 'Bhavin Kanani', 4, 25000, '14-05-2000', 'Baroda');
INSERT INTO PERSON VALUES(104, 'Bhoomi Vaishnav', 1, 39000, '08-02-2005', 'Rajkot');
INSERT INTO PERSON VALUES(105,'Rohit Topiya',2,17000,'23-07-2001', 'Jamnagar');
INSERT INTO PERSON VALUES(106, 'Priya Menpara', NULL, 9000, '18-10-2000', 'Ahmedabad');
INSERT INTO PERSON VALUES(107, 'Neha Sharma', 2, 34000, '25-12-2002', 'Rajkot');
INSERT INTO PERSON VALUES(108, 'Nayan Goswami', 3, 25000, '01-07-2001', 'Rajkot');
INSERT INTO PERSON VALUES(109, 'Mehul Bhundiya', 4, 13500, '09-01-2005', 'Baroda');
INSERT INTO PERSON VALUES(110, 'Mohit Maru', 5, 14000, '25-05-2000', 'Jamnagar');

SELECT * FROM PERSON 

SELECT * FROM DEPARTMENT 

CREATE TABLE DEPARTMENT (
DEPARTMENTID INT,
DEPARTMENTNAME VARCHAR(20),
DEPARTMENTCODE VARCHAR(10),
LOCATION VARCHAR(10));

INSERT INTO DEPARTMENT VALUES (1, 'Admin', 'Admin', 'A-Block');
INSERT INTO DEPARTMENT VALUES(2, 'Computer', 'CE', 'C-Block');
INSERT INTO DEPARTMENT VALUES(3, 'Civil', 'CI', 'G-Block');
INSERT INTO DEPARTMENT VALUES(4, 'Electrical', 'EE', 'E-Block');
INSERT INTO DEPARTMENT VALUES(5, 'Mechanical', 'ME', 'B-Block');

SELECT P.PERSONNAME, DEPARTMENTNAME, DEPARTMENTCODE FROM PERSON P INNER JOIN DEPARTMENTDEPARTMENT D ON P.DEPARTMENTID=D.DEPARTMENTID GROUP BY P.PERSONNAME,D.DEPARTMENTNAME,D.DEPARTMENTCODE
SELECT * FROM PERSON
SELECT * FROM DEPARTMENT
--1--
SELECT P.PERSONNAME,D.DEPARTMENTNAME,D.DEPARTMENTCODE 
FROM PERSON P 
INNER JOIN DEPARTMENT D
ON P.DEAPERTMENTID=D.DEPARTMENTID
--2--
SELECT D.DEPARTMENTNAME,MAX(P.SALARY) AS 'MAXIMUM SALARY',MIN(P.SALARY) AS 'MINIMUM SALARY'
FROM DEPARTMENT D
INNER JOIN PERSON P
ON D.DEPARTMENTID=P.DEAPERTMENTID
GROUP BY D.DEPARTMENTNAME
--3--
SELECT D.DEPARTMENTNAME,SUM(P.SALARY) AS 'TOTAL SALARY'
FROM DEPARTMENT D
INNER JOIN PERSON P
ON D.DEPARTMENTID=P.DEAPERTMENTID
GROUP BY D.DEPARTMENTNAME
HAVING SUM(P.SALARY)>100000
--4--. Retrieve person name, salary & department name who belongs to Jamnagar city
SELECT PERSONNAME,SALARY,DEPARTMENTNAME
FROM PERSON P 
INNER JOIN DEPARTMENT D
ON D.DEPARTMENTID=P.DEAPERTMENTID
WHERE CITY='JAMNAGAR'
--5--
SELECT P.PERSONNAME
FROM PERSON P 
INNER JOIN DEPARTMENT D
ON P.DEAPERTMENTID=D.DEPARTMENTID
--6--
SELECT DEPARTMENTNAME,COUNT(PERSONNAME) AS 'TOTAL NO. OF PERSON'
FROM DEPARTMENT D
INNER JOIN PERSON P
ON D.DEPARTMENTID=P.DEAPERTMENTID
GROUP BY DEPARTMENTNAME
--7--
SELECT PERSONNAME,AVG(SALARY) AS 'AVG SALARY'
FROM PERSON 
WHERE CITY='Ahmedabad'
GROUP BY PERSONNAME
--8--

--9--


--10--. Find city & department wise total, average & maximum salaries.
SELECT CITY,D.DEPARTMENTNAME,SUM(P.SALARY) AS 'TOTAL SALARY',AVG(P.SALARY) AS 'AVERAGE SALARY',MAX(P.SALARY) AS 'MAXIMUM SALARY'
FROM PERSON P
INNER JOIN DEPARTMENT D
ON P.DEAPERTMENTID=D.DEPARTMENTID
GROUP BY CITY,D.DEPARTMENTNAME
