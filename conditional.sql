select if('ab'='ab','true','false');
#ifnull(value,default) : return default if null
select ifnull(null,'yes'); #if null then return yes
#coalesce(val1,val2,...): return first non-null value
select coalesce(null,null,null,'dsj','adj');
 #case: similar to if-else statement
 #syntax
 /*case
 when    then no semicolon
 when then
 else
 end*/
