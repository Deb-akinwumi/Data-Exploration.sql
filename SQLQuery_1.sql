/*

Queries used for Tableau Project

/*

--Query 1--- 

SELECT  count (*)
FROM PortfolioProject..[GLOBAL SUPERSTORE.XLS - ORDERS]
 
 --Query 2---
 
SELECT * 
FROM PortfolioProject..[GLOBAL SUPERSTORE.XLS - ORDERS]
ORDER by 1

--Query 3---
Select [Order_ID], count(*) 
from PortfolioProject..[GLOBAL SUPERSTORE.XLS - ORDERS]
Group by [Order_ID] 
having count(*)>1

--Query 4---

Select *
from PortfolioProject..[GLOBAL SUPERSTORE.XLS - ORDERS]
where [Order_ID] = 'AG-2013-8490' 

--Query 5---

select [Row_ID],[Order_ID], count(*)
from PortfolioProject..[GLOBAL SUPERSTORE.XLS - ORDERS]
group by [Row_ID],[order_ID]
having count(*)>1

--Query 6---

select distinct [Ship_Mode] from PortfolioProject..[GLOBAL SUPERSTORE.XLS - ORDERS]

select min(a.NumOfDays), max(a.NumOfDays)
from( 
select DATEDIFF(DAY, [Order_Date], [Ship_Date]) as NumOfDays, * 
from PortfolioProject..[GLOBAL SUPERSTORE.XLS - ORDERS]
where [Ship_Mode] ='Same day' ) a 

--Query 7---

select min(a.NumOfDays), max(a.NumOfDays)
from( 
select DATEDIFF(DAY, [Order_Date], [Ship_Date]) as NumOfDays, * 
from PortfolioProject..[GLOBAL SUPERSTORE.XLS - ORDERS]
where [Ship_Mode] ='Second Class' ) a 

--Query 8---

select [Customer_ID], [Order_ID], count (*)
from PortfolioProject..[GLOBAL SUPERSTORE.XLS - ORDERS]
group by [Customer_ID], [Order_ID]
order by [Customer_ID]

--Query 9---

select * from PortfolioProject..[GLOBAL SUPERSTORE.XLS - ORDERS]
where [Order_ID]='CA-2011-138100'
