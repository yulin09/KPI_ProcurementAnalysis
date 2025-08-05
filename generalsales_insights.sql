#total overall sales
select round(sum(Weekly_Sales),0) as totalsales
from walmart_sales;

#Total sales per stores
select Store, round(sum(Weekly_Sales), 0) as totalsalesperstore
from walmart_sales
group by Store;

#Avg sales per store 
select Store, round(avg(Weekly_Sales), 0) as avgsalesperstore
from walmart_sales
group by Store;

#avg weeklysales
select round(avg(Weekly_Sales), 0) as avgweeklysales
from walmart_sales;