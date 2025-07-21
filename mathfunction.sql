#ABS()	Absolute value
#CEIL() / CEILING()	Round up
#FLOOR()	Round down
select abs(-19);
select ceil(10.2);  #return upper values
select ceiling(10.1);
select floor(10.9);  #floor values

#ROUND(x, d)	Round to d decimal places
#TRUNCATE(x, d)	Truncate without rounding
#MOD(x, y) / x % y	Modulo
select round(10.5687,2);
select truncate(10.5678,2);  #truncate without round off
select mod(10,3);
select 10%3;

#POWER(x, y)	x raised to y
#EXP(x)	e^x
#SQRT(x)	Square root
select power(5,3);
select exp(2);
select sqrt(9);

#RAND()	Random number (0 to 1)
#SIGN(x)	Returns -1, 0, or 1
#LEAST(a, b,...)	Smallest value
#GREATEST(a,b,...)	Largest value
select rand();
select sign(01); #return -1 0 or 1
select least(10,20,30,5,4);
select greatest(10,20,30,40,50,2,6,8);