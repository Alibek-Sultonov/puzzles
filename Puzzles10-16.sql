--CREATE TABLE [dbo].[TestMultipleZero]
--(
--[A] [int] NULL,
--[B] [int] NULL,
--[C] [int] NULL,
--[D] [int] NULL
--)
--GO
 

--INSERT INTO [dbo].[TestMultipleZero](A,B,C,D)
--VALUES (0,0,0,1),(0,0,1,0),(0,1,0,0),(1,0,0,0),(0,0,0,0),(1,1,1,0)

--CREATE TABLE GroupbyMultipleColumns
--(
--ID INT
--,Typ VARCHAR(1)
--,Value1 VARCHAR(1)
--,Value2 VARCHAR(1)
--,Value3 VARCHAR(1)
--)
--GO
 
--INSERT INTO GroupbyMultipleColumns(ID,Typ,Value1,Value2,Value3)
--VALUES
--(1,'I','a','b',''),
--(2,'O','a','d','f'),
--(3,'I','d','b',''),
--(4,'O','g','l',''),
--(5,'I','z','g','a'),
--(6,'I','z','g','a')

--CREATE TABLE [dbo].[testGoldRateChange]
--(
--[dt] [datetime] NULL,
--[Rate] [int] NULL
--)
--GO
 
--INSERT INTO [dbo].[testGoldRateChange](dt,Rate)
--VALUES
--('2014-09-18 06:25:19.897', 27000),
--('2014-09-19 06:25:19.897', 27000),
--('2014-09-20 06:25:19.897', 31000),
--('2014-09-21 06:25:19.897', 31000),
--('2014-09-22 06:25:19.897', 31000),
--('2014-09-23 06:25:19.897', 32000),
--('2014-09-24 06:25:19.897', 31000),
--('2014-09-25 06:25:19.897', 32000),
--('2014-09-26 06:25:19.897', 27000)

--Create table tr_football_league
--(
--club_id INT,
--club_name Varchar(32),
--championship_year INT,
--year_100th_champion INT
--)
 
--insert into tr_football_league values (1, 'FENERBAHCE', 2007, 1) ;
--insert into tr_football_league values (2, 'GALATASARAY', 2006, 0) ;
--insert into tr_football_league values (3, 'BESIKTAS', 2003, 1) ;
--insert into tr_football_league values (1, 'FENERBAHCE', 2005, 0) ;
--insert into tr_football_league values (1, 'FENERBAHCE', 2004, 0) ;
--insert into tr_football_league values (2, 'GALATASARAY', 2002, 0) ;
--insert into tr_football_league values (2, 'GALATASARAY', 2000, 0) ;
--insert into tr_football_league values (2, 'GALATASARAY', 1999, 0) ;
--insert into tr_football_league values (2, 'GALATASARAY', 1998, 0) ;
--insert into tr_football_league values (2, 'GALATASARAY', 1997, 0) ;
--insert into tr_football_league values (1, 'FENERBAHCE', 1996, 0);
--insert into tr_football_league values (1, 'FENERBAHCE', 2001, 0) ;
--insert into tr_football_league values (1, 'FENERBAHCE', 1989, 0) ;
--insert into tr_football_league values (1, 'FENERBAHCE', 1985, 0) ;

--CREATE TABLE WorkOrders
--(
--WorkOrderID CHAR(5) NOT NULL,
--STEP_NBR INTEGER NOT NULL CHECK (step_nbr BETWEEN 0 AND 1000),
--STEP_STATUS CHAR(1) NOT NULL CHECK (step_status IN ('C', 'W')), -- complete, waiting
--)
--GO
 
----Insert Data
--INSERT INTO WorkOrders(WorkOrderID,STEP_NBR,STEP_STATUS) VALUES
--('AA100', 0, 'C'),
--('AA100', 1, 'W'),
--('AA100', 2, 'W'),
--('AA200', 0, 'W'),
--('AA200', 1, 'W'),
--('AA300', 0, 'C'),
--('AA300', 1, 'C')
--GO

--CREATE TABLE IndAusSeries
--(
--TeamA VARCHAR(3)
--,TeamB VARCHAR(3)
--,MatchDate DATETIME
--,WinsBy VARCHAR(3)
--)
--GO
 
 --INSERT INTO IndAusSeries(TeamA,TeamB,MatchDate,WinsBy)
--VALUES
--('Ind','Aus','01-10-2014','Ind'),
--('Ind','Aus','01-15-2014','Ind'),
--('Ind','Aus','01-19-2014','Ind'),
--('Ind','Aus','01-23-2014','Aus'),
--('Ind','Aus','01-27-2014','Ind'),
--('Ind','Aus','01-31-2014','Ind')
 
 
---P11---

Select * from [dbo].[TestMultipleZero] where A<>0 or B<>0 or C<>0 or D<>0

---------
with cte as 
(
Select *,case when A=B and B=C and C=D then 'a' else 'b' end as CheckColumn from  [TestMultipleZero]
)
Select A,B,C,D from cte where CheckColumn='b'

---P12---



---P13---


with cte as(Select dt , Rate ,lag(Rate) over (order by (Select null)) as LAGGG, Row_Number() over (order by dt) Rnk  from testGoldRateChange),
cte2 as(Select *,Case When Rate = lag(Rate) over(order by Rnk) then 0 else 1 end columnn from cte),
cte3 as(Select *,  Sum(columnn) over(order by rnk) as G from cte2 )
Select Min(dt) StartDate , Max(dt) EndDate , Max(Rate) Rate from cte3 group by G


---P14---

with 
cte1 as(Select club_name,count(club_name) as Champ_count from tr_football_league  group by club_name),
cte2 as(Select club_name,count(*) as [Champ_100] from tr_football_league where year_100th_champion=1 group by club_name ),
cte3 as(Select cte1.club_name,Champ_count,isnull([Champ_100],0) as [Champ_100]  from cte1 left join cte2 on cte1.club_name = cte2.club_name where [Champ_100] = 1 )
Select club_name from cte3 where Champ_count = (Select max(Champ_count) from cte3)


---P15---

Select distinct a.workorderid from WorkOrders a inner join WorkOrders b on a.workorderid=b.workorderid  where a.step_status = 'c' and a.Step_nbr = 0 and b.step_status = 'w'

---P16---

with cte as(Select *,row_number() over (order by (Select null)) as RN from IndAusSeries)
Select TeamA,TeamB,Matchdate,WinsBy from cte where RN<4

with cte as(Select *,ROW_NUMBER() over (partition by WinsBy order by MatchDate) as RN,DENSE_RANK() over (order by MatchDate) as Dens from IndAusSeries)
Select TeamA,TeamB,MatchDate,WinsBy from cte where Rn=Dens

