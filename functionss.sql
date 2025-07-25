#Case: case is like if then else statement 
#it goes through condition and when condition matches it return
#if there are no else then it will return null
#syntax:  case
#		  when    then
#         else
#         end
select customerid, case 
when customerid<10 then "Greater than 10"  #dont use semicolon after every when
when customerid<20 then "greater than 20"
else "greatest of all"
end as checkk
from customers;
#it will return id then case statement value and always use before from statement

#ifnull and coalesce return alternative value if null
select ifnull(customerid,0) from customers; #it will return 0 if null
select coalesce(customerid,0) from customers;

#A stored procedure is a prepared SQL code that you can save, so the code can be reused over and over again.(its like function in other coding language)

DELIMITER //
CREATE PROCEDURE functionn()
BEGIN
    SELECT * FROM customers;
END //
DELIMITER ;
call functionn();
#In MySQL, the default statement terminator is ;. 
#However, stored procedures contain multiple SQL statements, including semicolons (;) inside their bodies.

#stored procedure with multiple parameter
DELIMITER //
CREATE PROCEDURE GetCustomersByLocationn(
    IN country_name VARCHAR(50),
    IN city_name VARCHAR(50)
)
BEGIN
    SELECT * FROM Customers
    WHERE Country = country_name or City = city_name;
END //

DELIMITER ;

CALL GetCustomersByLocationn('UK', 'New York');
#delimiter// throw error
delimiter //
create procedure puggii(
in name varchar(50))
begin
select * from customers where country=name;
end //
delimiter ;
call puggii('spain');
#-- single line comments
#/* */ 

delimiter //
create procedure sug()
begin
select * from customers;
end //
delimiter ;
#delimiter; will throw error

#Operators: + - * / %(modulo)
#bitwise: & | ^(xor)
#compound operators: += -= *= /= %= &= 
# ^-= bitwise exclusive equals
# |*= bitwise or equals 
#some: if any subquery return true 

select if(20>5,'yes','no') as conditional;






