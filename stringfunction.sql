#LENGTH(str)	Returns the length of a string in bytes	
SELECT LENGTH('MySQL'); 
#CHAR_LENGTH(str)	Returns the number of characters in a string	
SELECT CHAR_LENGTH('你好');
#UPPER(str) / LOWER(str)	Converts text to uppercase/lowercase	
SELECT UPPER('hello'); 
select lower('KOSKS');
#CONCAT(str1, str2, …)	Joins multiple strings	
SELECT CONCAT('Hello',' ','World'); 
#SUBSTRING(str, start, length)	Extracts a part of a string	
SELECT SUBSTRING('MySQLsdjksd', 2, 3);
#index start from 1 not 0
#REPLACE(str, from_str, to_str)	Replaces part of a string	
SELECT REPLACE('Hello World', 'World', 'MySQL');
#trim: remove extra spaces from both ends
select trim('   sdahjc  ');
#concat string with separator
#CONCAT_WS(sep,str1,str2,......)
select concat_ws(' * ','hhh','hello','hii');
#LEFT(str, n)	First n characters
#RIGHT(str, n)	Last n characters
select left("hello",2);
select right("hello",3);

#LTRIM() / RTRIM()	Remove left/right spaces
select ltrim("  hh  ");
select rtrim("       hi  ");

#INSTR(str, sub)	Position of substring
#LOCATE(sub, str)	Like INSTR
select instr("Hello","ll");
select locate("hello","h");-- -- 

#REVERSE()	Reverses string
#REPEAT(str, n)	Repeat string
select reverse("hello");
select repeat("hh",3);

#SPACE(n)	Return n spaces
#ELT(n, str1, str2,...)	Return n-th string
select length(space(10));
select elt(2,"jj",'fd','dsjd');