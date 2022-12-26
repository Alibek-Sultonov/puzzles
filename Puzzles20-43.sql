--CREATE TABLE Holidays
--(
--ID INT
--,HolidayDate DATETIME
--)
--GO
 
----Insert Data
--INSERT INTO Holidays(ID,HolidayDate)
--VALUES
--(101,'01/10/2015'),
--(102,'01/09/2015'),
--(103,'02/19/2015'),
--(104,'03/11/2015'),
--(105,'04/11/2015')
 
----Verify Data
--SELECT ID,HolidayDate FROM Holidays
 
----Create Table
--CREATE TABLE CandidateJoining
--(
--CId VARCHAR(17)
--,CJoiningDate DATETIME
--)
--GO

----Insert Data
--INSERT INTO CandidateJoining(CId,CJoiningDate)
--VALUES
--('CJ10101','01/10/2015'),
--('CJ10104','01/10/2015'),
--('CJ10105','02/18/2015'),
--('CJ10121','03/11/2015'),
--('CJ10198','04/11/2015')
 
----Verify Data
--SELECT CId,CJoiningDate FROM CandidateJoining

--cREATE TABLE TestCommaUsingCrossApply 
--(
--ID INT
--,VALUE VARCHAR(100)
--)
--GO
 
----Insert Data
 
--INSERT INTO TestCommaUsingCrossApply(ID,VALUE)
--VALUES
--(1,'a,b,c'),
--(2,'s,t,u,v,w,x')


--CREATE TABLE TestSplitData 
--(
-- Start DATETIME
--,EndDt DATETIME
--,Amount INT
--)
--GO
 
----Insert Data
 
--INSERT INTO TestSplitData(Start,EndDt,Amount)
--VALUES
--('14-Apr-14','13-May-14',200),
--('15-May-14','16-Jun-14',320)
 
----Verify Data
 
--SELECT Start,EndDt,Amount FROM TestSplitData 

--CREATE TABLE dbo.AlternateMaleFemale
--(
--ID INT
--,NAME VARCHAR(10)
--,GENDER VARCHAR(1)
--)
--GO
 
----Insert data
--INSERT INTO dbo.AlternateMaleFemale(ID,NAME,GENDER)
--VALUES
--(1,'Neeraj','M'),
--(2,'Mayank','M'),
--(3,'Pawan','M'),
--(4,'Gopal','M'),
--(5,'Sandeep','M'),
--(6,'Isha','F'),
--(7,'Sugandha','F'),
--(8,'kritika','F')

--CREATE TABLE Salaries 
--(emp_name CHAR(10) NOT NULL,
--sal_date DATE NOT NULL,
--sal_amt DECIMAL (8,2) NOT NULL,
--PRIMARY KEY (emp_name, sal_date));

----Insert Data
--INSERT INTO Salaries
--VALUES ('Tom', '1996-06-20', 500.00),
--('Tom', '1996-08-20', 700.00),
--('Tom', '1996-10-20', 800.00),
--('Tom', '1996-12-20', 900.00),
--('Dick', '1996-06-20', 500.00),
--('Harry', '1996-07-20', 500.00),
--('Harry', '1996-09-20', 700.00);

--CREATE TABLE TestTable 
--(
--  StudentName VARCHAR(100)
--, Course VARCHAR(100)
--, Instructor VARCHAR(100)
--, RoomNo VARCHAR(100)
--)
--GO
 
---- Populate table
 
--INSERT INTO TestTable (StudentName, Course, Instructor, RoomNo)
--SELECT 'Mark', 'Algebra', 'Dr. James', '101'
--UNION ALL
--SELECT 'Mark', 'Maths', 'Dr. Jones', '201'
--UNION ALL
--SELECT 'Joe', 'Algebra', 'Dr. James', '101'
--UNION ALL
--SELECT 'Joe', 'Science', 'Dr. Ross', '301'
--UNION ALL
--SELECT 'Joe', 'Geography', 'Dr. Lisa', '401'
--UNION ALL
--SELECT 'Jenny', 'Algebra', 'Dr. James', '101'
--GO
 
---- Check orginal data
 
--SELECT StudentName, Course, Instructor, RoomNo
--FROM TestTable
--GO

--CREATE TABLE Test2DistinctCount 
--(
--a Int
--,b Int
--)
--Go
-- --Insert Data
-- INSERT INTO Test2DistinctCount VALUES
--(1,1) , (1,2) , (1,3) , (1,1)


--CREATE TABLE EmployeeDlts(
--ID INT,
--Name VARCHAR(10)
--)
--GO

--INSERT INTO EmployeeDlts(ID,Name)
--SELECT 1,'Pawan'  UNION ALL
--SELECT 2,'Neeraj' UNION ALL
--SELECT 3,'Isha'
--GO
 
--CREATE TABLE EmployeeSkills(
--ID INT,
--Skill VARCHAR(10)
--)
--GO
 
--INSERT INTO EmployeeSkills(ID,Skill)
--SELECT 1,'SQL'  UNION ALL
--SELECT 1,'MSBI'  UNION ALL
--SELECT 2,'SQL' UNION ALL
--SELECT 2,'SSRS'
 
--CREATE TABLE EmployeeProject(
--ID INT,
--Project VARCHAR(15)
--)
--GO
 
--INSERT INTO EmployeeProject(ID,Project)
--SELECT 1,'Microsoft'  UNION ALL
--SELECT 1,'Google'  UNION ALL
--SELECT 1,'HortonWorks' UNION ALL
--SELECT 2,'Microsoft'

--CREATE TABLE [dbo].[TheCompanyCode]
--(
--[A] [int] NULL,
--[B] [int] NULL,
--[C] [int] NULL,
--[CompanyCode] [varchar](100) NULL,
--[GL] [varchar](100) NULL
--)
--GO
 
----Insert Data
 
--INSERT INTO TheCompanyCode(A,B,C,CompanyCode,GL)
--VALUES
--(1,    1,     1,     'AA',  001),
--(1,    1,     2,     'AA',  002),
--(1,    1,     3,     'AA',  003),
--(1,    1,     4,     'AA',  004),
--(2,    2,     1,     'BB',  001),
--(2,    2,     2,     'BB',  002)

--CREATE TABLE [dbo].[MissingValue]
--(
--[Value] [varchar](1) NULL,
--[ayValue] [int] NULL
--)
--GO
 
----Insert Data
 
--INSERT INTO [dbo].[MissingValue](Value,ayValue)
--VALUES
--('A',  1),
--('',   23),
--('',   21),
--('',   22),
--('B',  34),
--('',   31),
--('',   89),
--('C',  222),
--('', 10)

--CREATE TABLE [dbo].[TwoDecimal]
--(
--[Val] Money
--)
--GO
 
 
----Insert Data
 
--INSERT INTO
--[TwoDecimal]
--VALUES
--(100.119),
--(1.119),
--(111.119),
--(81.115),
--(90.114),
--(100.110),
--(100.000),
--(100.001),
--(100.019)

-- CREATE TABLE DeleteDup
--(
--ID INT
--)
--Go

----Insert Data
--INSERT INTO DeleteDup VALUES(1),(2),(1)

--CREATE TABLE testMultipleValues
--(
--ID int
--,Name varchar(100)
--)
--GO
 
----Insert Data
--INSERT INTO testMultipleValues(ID,Name)
--VALUES
--(1,'a,b,c,d,e'),
--(2,'a,b'),
--(3,'c,d'),
--(4,'e'),
--(5,'f')

--CREATE TABLE PatientProblem
--(
--PatientID INT,
--AdmissionDate DATETIME,
--DischargeDate DATETIME,
--Cost MONEY
--)
--GO
 
----Insert Data
--INSERT INTO PatientProblem(PatientID,AdmissionDate,DischargeDate
--,Cost)
--VALUES
--(1009,'2014-07-27','2014-07-31',1050.00),
--(1009,'2014-08-01','2014-08-23',1070.00),
--(1009,'2014-08-31','2014-08-31',1900.00),
--(1009,'2014-09-01','2014-09-14',1260.00),
--(1009,'2014-12-01','2014-12-31',2090.00),
--(1024,'2014-06-07','2014-06-28',1900.00),
--(1024,'2014-06-29','2014-07-31',2900.00),
--(1024,'2014-08-01','2014-08-02',1800.00)

--cREATE TABLE FindRunningBalance
--(
--Dt DATETIME,
--CID VARCHAR(50),
--TransactionType VARCHAR(2),
--Amount MONEY
--)
 
----Insert data
--INSERT INTO FindRunningBalance(Dt,CID,TransactionType,Amount)
--VALUES
--( '2015-01-01','IshaMattoo','CR','18,000' ),
--( '2015-01-02','IshaMattoo','DB','3,000' ),
--( '2015-01-03','IshaMattoo','CR','8,000' ),
--( '2015-01-04','IshaMattoo','DB','9,000' ),
--( '2015-01-04','AvtaarKishan','CR','1,000' ),
--( '2015-01-05','AvtaarKishan','CR','6,000'),
--( '2015-01-05','AvtaarKishan','DB','5,000' )

--CREATE TABLE Approver
--(
--ID INT
--,Name VARCHAR(10)
--)
--GO
 
 
----Insert data
--INSERT INTO Approver(ID,Name)
--VALUES (1001,'Ram') , (1002,'Ramesh') , (1003,'Supriya') ,(1004,'Sharlee')
 
----Create table
--CREATE TABLE TicketDetails
--(
--TicketID INT
--,CreatedBy INT
--,ApprovedBy INT
--)
--GO
 
----Insert data
--INSERT INTO TicketDetails(TicketID,CreatedBy,ApprovedBy)
--VALUES
--(1,1001,1004),
--(2,1001,1004),
--(3,1002,1004),
--(4,1001,1003)

--CREATE TABLE TESTDuplicateCount ( ID INT ,EmpName VARCHAR(100) 
--,EmpDate DATETIME ) 
--GO 
 
--INSERT INTO TESTDuplicateCount(ID,EmpName,EmpDate) 
--VALUES
--(1,'Pawan','2014-01-05'),
--(2,'Pawan','2014-03-05'), 
--(3,'Pawan','2014-02-05'), 
--(4,'Manisha','2014-07-05'), 
--(5,'Sharlee','2014-09-05'), 
--(6,'Barry','2014-02-05'), 
--(7,'Jyoti','2014-04-05'), 
--(8,'Jyoti','2014-05-05') 

--CREATE TABLE [dbo].[RangeValues]
--(
--[Vals] [int] NULL
--)
--GO
 
----Insert Data
--INSERT INTO [RangeValues](Vals)
--VALUES
--(125),
--(350),
--(270),
--(140)

--CREATE TABLE TestTranspose
--(
-- Year1 INT
--,Month1 VARCHAR(3)
--,Amount INT
--)
--GO
 
----Insert Data
 
--INSERT INTO TestTranspose Values (2014,'Jan',1000),(2014,'Feb',1200),(2014,'Mar',1300)
--INSERT INTO TestTranspose Values (2013,'Jan',3000)

--Create table
--CREATE TABLE FruitCount
--(
--Name VARCHAR(20)
--,Fruit VARCHAR(25)
--)
--GO
 
----Insert Data
--INSERT INTO FruitCount(Name,Fruit) VALUES
--('Neeraj'    ,'MANGO'),
--('Neeraj'    ,'MANGO'),
--('Neeraj'    ,'MANGO'),
--('Neeraj'    ,'APPLE'),
--('Neeraj'    ,'ORANGE'),
--('Neeraj'    ,'LICHI'),
--('Neeraj'    ,'LICHI'),
--('Neeraj'    ,'LICHI'),
--('Isha'     ,'MANGO'),
--('Isha'     ,'MANGO'),
--('Isha'     ,'APPLE'),
--('Isha'     ,'ORANGE'),
--('Isha'     ,'LICHI'),
--('Gopal' ,'MANGO'),
--('Gopal' ,'MANGO'),
--('Gopal' ,'APPLE'),
--('Gopal' ,'APPLE'),
--('Gopal' ,'APPLE'),
--('Gopal' ,'ORANGE'),
--('Gopal' ,'LICHI'),
--('Mayank'  ,'MANGO'),
--('Mayank'  ,'MANGO'),
--('Mayank'  ,'APPLE'),
--('Mayank'  ,'APPLE'),
--('Mayank'  ,'ORANGE'),
--('Mayank'  ,'LICHI')

--CREATE TABLE [dbo].[EmployeeSalary]
--(
--[ID] [int] NOT NULL,
--[Name] [varchar](50) NULL,
--[Salary] [float] NULL,
--[DOJ] [datetime] NULL
--)
--GO
 
----Insert Data
--INSERT [dbo].[EmployeeSalary] ([ID], [Name], [Salary], [DOJ]) VALUES (1, N'A', 100, CAST(0x0000A3B800000000 AS DateTime))
--GO
--INSERT [dbo].[EmployeeSalary] ([ID], [Name], [Salary], [DOJ]) VALUES (2, N'B', 200, CAST(0x0000A18300000000 AS DateTime))
--GO
--INSERT [dbo].[EmployeeSalary] ([ID], [Name], [Salary], [DOJ]) VALUES (3, N'C', 300, CAST(0x0000A2A700000000 AS DateTime))
--GO
--INSERT [dbo].[EmployeeSalary] ([ID], [Name], [Salary], [DOJ]) VALUES (4, N'D', 400, CAST(0x00009FFA00000000 AS DateTime))
--GO
--INSERT [dbo].[EmployeeSalary] ([ID], [Name], [Salary], [DOJ]) VALUES (5, N'E', 500, CAST(0x00009FF100000000 AS DateTime))
--GO

--CREATE TABLE GenderCount
--(
--NAME VARCHAR(10)
--,Gender VARCHAR(1)
--)
--GO
 
----INSERT Data
--INSERT INTO GenderCount(NAME,Gender)
--VALUES
--('Pawan','M'),
--('Isha','F'),
--('Neeraj','M'),
--('Mayank','M'),
--('Sandeep','M'),
--('Gopal','M'),
--('Sugandha','F'),
--('Kritika','F')

--CREATE TABLE Employees  (EmpID INT, EmpName VARCHAR(20), ReportsTo INT)
 
----Insert Data
--INSERT INTO Employees(EmpID, EmpName, ReportsTo)
--SELECT 1, 'Jacob', NULL UNION ALL
--SELECT 2, 'Rui', NULL UNION ALL
--SELECT 3, 'Jacobson', NULL UNION ALL
--SELECT 4, 'Jess', 1 UNION ALL
--SELECT 5, 'Steve', 1 UNION ALL
--SELECT 6, 'Bob', 1 UNION ALL
--SELECT 7, 'Smith', 2 UNION ALL
--SELECT 8, 'Bobbey', 2 UNION ALL
--SELECT 9, 'Steffi', 3 UNION ALL
--SELECT 10, 'Bracha', 3 UNION ALL
--SELECT 11, 'John', 5 UNION ALL
--SELECT 12, 'Michael', 6 UNION ALL
--SELECT 13, 'Paul', 6 UNION ALL
--SELECT 14, 'Lana', 7 UNION ALL
--SELECT 15, 'Johnson', 7 UNION ALL
--SELECT 16, 'Mic', 8 UNION ALL
--SELECT 17, 'Stev', 8 UNION ALL
--SELECT 18, 'Paulson', 9 UNION ALL
--SELECT 19, 'Jessica', 10
 
-- Create table deal_details
--(
--deal_id               INT,
--contract_month        VARchar(7),
--price                 FLOAT,
--quantity              INT,
--total_quantity        INT
--)
--GO
 
--insert into deal_details values(2,'Jan2013',4,10000,310000);
--insert into deal_details values(2,'Feb2013',4,10000,280000);
--insert into deal_details values(2,'Mar2013',4.5,10000,310000);
--insert into deal_details values(2,'Apr2013',4,10000,310000);
--insert into deal_details values(2,'May2013',4,15000,280000);
--insert into deal_details values(2,'Jun2013',4,15000,310000);


--CREATE TABLE RemoveNulls
--(
--ID INT IDENTITY(1,1)
--,ServiceType VARCHAR(100)
--,UOM VARCHAR(10) NULL
--,Cost INT
--,Usage INT
--)
--GO
 
--INSERT INTO RemoveNulls(ServiceType,UOM,Cost,Usage)
--VALUES
--('Electric','Therms',10,100),
--('Electric',NULL,20,0),
--('Water','Litre',30,100),
--('Water','Gallons',40,100),
--('Water',NULL,25,0),
--('Water','Gallon',20,130)

--CREATE TABLE SpecialProductMaster
--(
--ID INT
--,ProductName VARCHAR(10)
--)
--GO
 
--INSERT INTO SpecialProductMaster(Id,ProductName)
--VALUES
--(1,'Maggi'),
--(2,'Surf')


--CREATE TABLE Saless
--(
--SaleID INT
--,ProductName VARCHAR(10)
--,CustID INT
--,SaleDATE DATETIME DEFAULT GETDATE()
--)
--GO
 
--INSERT INTO Sales(SaleID,ProductName,CustID)
--VALUES
--(112,'Surf',346),
--(109,'Parle',345),
--(101,'Maggi',345),
--(201,'Surf',345),
--(302,'Rin',122),
--(303,'TV',142)
 

 ---20---

Select * from AlternateMaleFemale

with cte as 
(
Select *,ROW_NUMBER () over (partition by gender order by (id)) as RN from AlternateMaleFemale
)
Select id,name,gender from cte group by rn,id,name,gender

---21---

Select * from Salaries

Select sal_date,emp_name,sum(sal_amt) as SUMM from Salaries
group by sal_date,emp_name
order by sal_date,emp_name

Select emp_name,[1996-06-20],[1996-07-20],[1996-08-20],[1996-09-20],[1996-10-20],[1996-12-20] from Salaries
pivot (
		Sum(sal_amt)
		for sal_date
		in([1996-06-20],[1996-07-20],[1996-08-20],[1996-09-20],[1996-10-20],[1996-12-20])
 ) as A
 
  ---22---

Select StudentName,STRING_AGG(CONCAT_WS(' ',Course,'by',instructor,'Room No',roomno),',') as [Taught by] 
from TestTable group by StudentName

 ---23---

with cte as 
(
Select *,ROW_NUMBER () over (order by (Select null)) as RN from Test2DistinctCount 
)
Select a,b from cte where Rn=b


---24---

---25---

---26---

---27---

Select cast(val as decimal(5,2)) from [TwoDecimal]

---28---

with cte as(Select *,(ROW_NUMBER () over (order by id)) as RN  from DeleteDup)
Select id from cte where Rn !=ID

---29---

Select id,value from testMultipleValues
cross apply string_split(name, ',')

---30---

---31---

with cte as 
(
Select *,case when transactiontype = 'CR' then Amount else -Amount end as CASEE  from FindRunningBalance
)
Select dt,CID,Amount,Sum(Casee) over (partition by CID order by dt) as a from cte

---32---

Select a.ticketid,b.name as CreatedBy,c.name as ApprovedBy from TicketDetails a
inner join Approver b
on a.CreatedBy = B.ID
inner join Approver c
on c.id = a.approvedBy

---33---
 
 Select EmPname,count(*) as DuplicateCount from TESTDuplicateCount
 group by EMPname
 having count(*) > 1 
 order by DuplicateCount desc

 ---34---

--with cte as(Select *,ROW_NUMBER() over (order by (Select null)) as RN from CandidateJoining),
--cte2 as(Select *,ROW_NUMBER() over (order by (Select null)) as HRN from Holidays)
--Select a.cid,a.CJoiningDate,b.HolidayDate,case when a.CJoiningDate = HolidayDate then a.CJoiningDate - 1 else a.CJoiningDate end as CASEE  from cte a inner join cte2 b on a.Rn=b.HRN order by Holidaydate
 
 ---35---

 Select *,iif(Vals = 125,100,iif(vals = 350,300,iif(vals = 270,200,iif(vals=140,100,0)))) as Val from RangeValues

 ---36---

 Select distinct Year1,Jan,Feb,Mar from TestTranspose 
 pivot (
		Sum(amount)
		for month1
		in (Jan,Feb,Mar)
		) as a;

---37---

Select Name,Mango,Apple,Lichi,Orange From FruitCount
pivot
(
		Count(Fruit)
		for Fruit
		in (Mango,Apple,Lichi,Orange)
) as A

---38---

with cte as
(
Select *,day(DOJ) as Dayy from [EmployeeSalary]
),cte2 as
(
Select *,Case when Dayy > 15 then eomonth(dateadd(month,1,DOJ)) else eomonth(DOJ)  end as EndOfMonth from cte
)Select Id,Name,Salary,Format(iif(FORMAT(EndOfMonth,'dddd') = 'friday',EndOfMonth,
		  iif(FORMAT(dateadd(day,-1,EndOfMonth),'dddd') = 'friday',dateadd(day,-1,EndOfMonth),
          iif(FORMAT(dateadd(day,-2,EndOfMonth),'dddd') = 'friday',dateadd(day,-2,EndOfMonth),
		  iif(FORMAT(dateadd(day,-3,EndOfMonth),'dddd') = 'friday',dateadd(day,-3,EndOfMonth),
		  iif(FORMAT(dateadd(day,-4,EndOfMonth),'dddd') = 'friday',dateadd(day,-4,EndOfMonth),
		  iif(FORMAT(dateadd(day,-5,EndOfMonth),'dddd') = 'friday',dateadd(day,-5,EndOfMonth),
		  iif(FORMAT(dateadd(day,-6,EndOfMonth),'dddd') = 'friday',dateadd(day,-6,EndOfMonth),
		  iif(FORMAT(dateadd(day,-7,EndOfMonth),'dddd') = 'friday',dateadd(day,-7,EndOfMonth),
		  EndOfMonth)))))))),'dd-MMM-yyy') as DOJ  	  
from cte2


---39---

Select count(*) as MaleCount,(Select count(*) as FemaleCount from GenderCount
where Gender = 'f'
group by Gender
) as FemaleCount from GenderCount
where Gender = 'm'
group by Gender


---40---

SELECT * FROM Employees E

---41---
--with cte as 
--(
--Select *,lag(total_quantity,1,310000) over (order by (Select null)) as LAGG from deal_details
--),cte2 as 
--(
--Select *,case when Lagg>total_quantity then Total_quantity + Lagg else Total_quantity end as TotalQuantity
--from cte
--)
--Select deal_id,Contract_month,Price,Quantity,TotalQuantity from cte2 where TotalQuantity > Lagg

---42---

Select *, from RemoveNulls

---43---

with cte as
(
Select Id,a.ProductName as ProdName,SaleID,CustId,SaleDate,ROW_NUMBER () over (order by (Select null)) as RN from SpecialProductMaster a
join Sales b
on a.ProductName = b.ProductName
)
Select SaleId,ProdName,CustId,SaleDate from cte where RN <>1  