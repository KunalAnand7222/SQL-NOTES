#now(): return current time with date
select now();
#curdate(): return current date
select curdate();
#curtime(): return current time
select curtime();
#date_format(date,format): format a date
select date_format(curdate(),'%d-%y-%m'); #dont forget % before conversion
#datediff(date1,date2): return difference in days between two date
select datediff(now(),'2025-02-01');  #year-month-day
#timestampdiff(unit,date1,date2): return difference in time
select timestampdiff(year,'2024-02-01',now());
#can pass year month day and it will return respective to parameter
