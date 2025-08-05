#temperature effect to sales
select Temperature, 
year(dates) as year, month(dates) as month,
format(sum(Weekly_Sales),0) as temperaturesalestrends
from walmart_sales
group by year(dates), month(dates), Temperature;

#unemploymentrate to sales
select Unemployment, 
year(dates) as year, month(dates) as month,
format(sum(Weekly_Sales),0) as unemploymentsales
from walmart_sales
group by year(dates), month(dates), Unemployment
order by Unemployment asc;

#CPI
select format(CPI,2), 
year(dates) as year, month(dates) as month,
format(sum(Weekly_Sales),0) as cpisales
from walmart_sales
group by year(dates), month(dates), CPI
order by CPI desc;

#CPI vs Unemployment
select format(CPI,2), Unemployment,
year(dates) as year, month(dates) as month
from walmart_sales
group by year(dates), month(dates), CPI, Unemployment
order by CPI desc;