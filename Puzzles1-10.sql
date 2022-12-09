--CREATE TABLE A
--(
--BusinessEntityID INT
--,SalesYear   INT
--,CurrentQuota  DECIMAL(20,4)
--)
--GO

--INSERT INTO a
--SELECT 275 , 2005 , '367000.00'
--UNION ALL
--SELECT 275 , 2005 , '556000.00'
--UNION ALL
--SELECT 275 , 2006 , '502000.00'
--UNION ALL
--SELECT 275 , 2006 , '550000.00'
--UNION ALL
--SELECT 275 , 2006 , '1429000.00'
--UNION ALL
--SELECT 275 , 2006 ,  '1324000.00'

--CREATE TABLE EmpBirth
--(
-- EmpId INT  IDENTITY(1,1) 
--,EmpName VARCHAR(50) 
--,BirthDate DATETIME 
--)
 
--INSERT INTO EmpBirth(EmpName,BirthDate)
--SELECT 'Pawan' , '12/04/1983'
--UNION ALL
--SELECT 'Zuzu' , '11/28/1986'
--UNION ALL
--SELECT 'Parveen', '05/07/1977'
--UNION ALL
--SELECT 'Mahesh', '01/13/1983'
--UNION ALL
--SELECT'Ramesh', '05/09/1983'

--CREATE TABLE [Movie]
--(
 
--[MName] [varchar] (10) NULL,
--[AName] [varchar] (10) NULL,
--[Roles] [varchar] (10) NULL
--)
 
--GO
 
----Insert data in the table
 
--INSERT INTO Movie(MName,AName,Roles)
--SELECT 'A','Amitabh','Actor'
--UNION ALL
--SELECT 'A','Vinod','Villan'
--UNION ALL
--SELECT 'B','Amitabh','Actor'
--UNION ALL
--SELECT 'B','Vinod','Actor'
--UNION ALL
--SELECT 'D','Amitabh','Actor'
--UNION ALL
--SELECT 'E','Vinod','Actor'

--CREATE TABLE PQ
--(
--ID INT
--,Name VARCHAR(10)
--,Typed VARCHAR(10)
--)
 
--INSERT INTO PQ(ID,Name,Typed) VALUES  (1,'P',NULL) , (1,NULL,'Q')

--CREATE TABLE NthHighest
--(
-- Name  varchar(5)  NOT NULL,
-- Salary  int  NOT NULL
--)
 
----Insert the values
--INSERT INTO  NthHighest(Name, Salary)
--VALUES
--('e5', 45000),
--('e3', 30000),
--('e2', 49000),
--('e4', 36600),
--('e1', 58000)

--CREATE TABLE TestMax
--(
--Year1 INT
--,Max1 INT
--,Max2 INT
--,Max3 INT
--)
--GO
 
--INSERT INTO TestMax 
--VALUES
-- (2001,10,101,87)
--,(2002,103,19,88)
--,(2003,21,23,89)
--,(2004,27,28,91)
 


--CREATE TABLE List
--(
--ID INT
--)
--GO
 
--INSERT INTO List(ID) VALUES (1),(2),(3),(4),(5)
 

-- CREATE TABLE [dbo].[EmpSalaryGreaterManager]
--(
--[EmpID] [int] NULL,
--[EmpName] [varchar](50) NULL,
--[EmpSalary] [bigint] NULL,
--[MgrID] [int] NULL
--)
--GO
 

--INSERT INTO [EmpSalaryGreaterManager](EmpID,EmpName,EmpSalary,MgrID)
--VALUES
--(1,    'Pawan',      80000, 4),
--(2,    'Dheeraj',    70000, 4),
--(3,    'Isha',       100000,       4),
--(4,    'Joteep',     90000, NULL),
--(5,    'Suchita',    110000,       4)

--CREATE TABLE Department
--(
--DeptID INT
--,DeptName VARCHAR(10)
--)
--GO
 
 
--INSERT INTO Department(DeptID,DeptName)
--VALUES
--(1,'Finance'),
--(2,'IT'),
--(3,'HR')
  
 
--CREATE TABLE Emps
--(
--EmpID INT
--,EmpName VARCHAR(50)
--,DeptID INT
--,EmpSalary FLOAT
--)
--GO

 
--INSERT INTO Emps(EmpID,EmpName,DeptID,EmpSalary) VALUES
--(101,'Isha',1,7000),
--(111,'Esha',1,8970),
--(102,'Mayank',1,8900),
--(103,'Ramesh',2,4000),
--(104,'Avtaar',2,9000),
--(105,'Gopal',3,17000),
--(106,'Krishna',3,1000),
--(107,'Suchita',3,7000),
--(108,'Ranjan',3,17900)

 --P1

Select *,cast(isnull(lag (CurrentQuota) over (order by BusinessEntityID),0) as int) as lagCurrentData from a

--P2

Select *,cast(isnull(lead (CurrentQuota) over (order by BusinessEntityID),0) as int) as lagCurrentData from a

--P3

with cte as 
(
Select *,month(BirthDate) as Monthh,day(BirthDate) as BirthDay from EmpBirth
)
Select EmpName,BirthDate from cte where BirthDay between 7 and 15 and Monthh=5

------
with cte as 
(
Select *,SUBSTRING(cast(BirthDate as varchar(20)),
CHARINDEX('-',cast(BirthDate as varchar(20)),1)
,8) as AAA
from EmpBirth
),cte2 as 
(
Select *,LEFT(AAA,CHARINDEX(' ',AAA,1)) as Monthh,LEFT(REVERSE(AAA),CHARINDEX(' ',AAA,1)) as Dayy from cte
)
Select EmpName,BirthDate from cte2 where Monthh='May' and Dayy between 7 and 15
-------

---P4---???

Select * from Movie where AName in('Amitabh','Vinod') and Roles in ('Actor')

---P5---
with cte as 
(
SELECT *,lead(typed) over (order by id) as Typedd FROM  PQ
)
Select distinct ID,Name,Typedd from cte where Typedd is not null

---P6---

with cte as 
(
Select *,ROW_NUMBER() over (order by salary desc) as RN from NthHighest 
)
Select Name,Salary from cte where RN = 2

-------------

Select top 1 * from NthHighest 
where Salary <> (Select max(Salary) from NthHighest)
order by Salary desc

---P7---

Select *,Sum(id) over (order by id rows between unbounded preceding and current row ) as A from List

---P8---

Select Year1,case when Max1>Max2 and Max1>Max3 then Max1
				  when Max2>Max1 and Max2>Max3 then Max2
				  when Max3>Max2 and Max3>Max1 then Max3
			 end as Maxx
from TestMax

---------

Select Year1,iif(max1>max2 and max1>max3,max1,iif(max2>max1 and max2>max3,max2,
iif(max3>max2 and max3>max1,max3,max1))) as Maxx from TestMax

---P9---

Select * from EmpSalaryGreaterManager
where mgrid is not null and 
EmpSalary >all (Select EmpSalary from EmpSalaryGreaterManager where mgrid is null) 

---P10---

with cte as 
(
Select EmpId,EmpName,EmpSalary,DeptName,(Select max(EmpSalary) from Emps C where C.DeptID = E.DeptID) as MaxSalary from Emps E 
inner join Department D
on E.DeptID = D.DeptID
)Select EmpId,EmpName,EmpSalary,DeptName from cte where EmpSalary=MaxSalary

--------

with cte as 
(
Select EmpID,EmpName,EmpSalary,DeptName,ROW_NUMBER () over (partition by E.deptid order by EmpSalary desc) as RN from Emps e
inner join Department D
on E.DeptID = D.DeptID
)
Select EmpID,EmpName,EmpSalary,DeptName from cte where Rn=2

