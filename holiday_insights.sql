#avgsales holiday vs non holiday
select Holiday_Flag,
format(avg(Weekly_Sales),0) as avgsalesholiday
from walmart_sales
group by Holiday_Flag;

#holidaysales trends
select Holiday_Flag, 
year(dates) as year, month(dates) as year,
format(sum(Weekly_Sales),0) as holidaysalestrends
from walmart_sales
group by Holiday_Flag, year(dates), month(dates);

#top ranks holiday
select dates,
format(sum(Weekly_Sales),0) as topranksholiday
from walmart_sales
where Holiday_Flag = 1
group by dates
order by sum(Weekly_Sales) desc
limit 5;
