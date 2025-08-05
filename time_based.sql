#monthly sales trends
select
year(dates) as year, month(dates) as month,
round(sum(Weekly_Sales), 0) as monthlysales
from walmart_sales
group by dates;

#yearly sales trends
select 
year(dates), 
round(sum(Weekly_Sales), 0) as yearlysales
from walmart_sales
group by year(dates);

#best and worst sales week
select dates, round(sum(Weekly_Sales),0) as bestweeksales
from walmart_sales
group by dates
order by sum(Weekly_Sales) desc
limit 5;

select dates, round(sum(Weekly_Sales),0) as worstweeksales
from walmart_sales
group by dates
order by sum(Weekly_Sales) asc
limit 5;

#sales trends per store 
select Store,
year(dates) as year, month(dates) as month,
round(sum(Weekly_Sales), 0) as salesperstoretrends
from walmart_sales
group by Store, year(dates), month(dates);

