CREATE TABLE STUD(
RNO INT,
NAME VARCHAR(50),
BIRTHDATE DATE);

SELECT * FROM STUD

INSERT INTO STUD VALUES(1,'HARSH','18-JUL-2004');
INSERT INTO STUD VALUES(2,'DARSHAN','1-JAN-2004');
INSERT INTO STUD VALUES(3,'UDIT','8-DEC-2004');

SELECT GETDATE();

SELECT DAY(GETDATE());

SELECT DAY(BIRTHDATE)AS 'DATE OF BIRTHDATE' FROM STUD 

SELECT MONTH(BIRTHDATE) FROM STUD

SELECT YEAR(BIRTHDATE) FROM STUD

SELECT DATEPART(DAY, BIRTHDATE) FROM STUD
SELECT DATEPART(MONTH, GETDATE()) 
SELECT DATEPART(YEAR, GETDATE())
SELECT DATEPART(HOUR, GETDATE())


SELECT DATEPART(DAY, BIRTHDATE) FROM STUD
SELECT DATEPART(MONTH, BIRTHDATE) FROM STUD
SELECT DATEPART(YEAR, BIRTHDATE) FROM STUD

SELECT BIRTHDATE,DATEPART(YEAR,BIRTHDATE) FROM STUD
SELECT BIRTHDATE,DATEPART(MONTH,BIRTHDATE) FROM STUD
SELECT BIRTHDATE,DATEPART(DAY,BIRTHDATE) FROM STUD

SELECT BIRTHDATE,DATENAME(MONTH,BIRTHDATE)AS 'MONTH NAME' FROM STUD
SELECT BIRTHDATE,DATENAME(YEAR,BIRTHDATE)  FROM STUD

SELECT EOMONTH(MONTH,BIRTHDATE) FROM STUD

SELECT EOMONTH(GETDATE());

SELECT BIRTHDATE,DATEADD(D,1,BIRTHDATE) FROM STUD

SELECT BIRTHDATE,DATEDIFF(YEAR,'18-JUL-2004',GETDATE()) FROM STUD

SELECT BIRTHDATE,DATEDIFF(YEAR,'18-JUL-2004','01-JAN-2024') FROM STUD
