-- select => data retriv/access 
-- quaery => munltiple line and in case sesnsitive 
-- where (filter ) and or between in like 
-- between , in , like (%,_)

-- function 
/*
set f statement
functions

code reusuable 
scale funtion -> row by row (result for each row)
multi line  functiona -> multiple line pr apply and give 1 output 

scaler can apply : data
*/

use world ;
select name ,continent , upper(name), lower(name) from country;

-- concat conversion with a seperate
select name ,continent , concat(continent,'-', code,' ','Regex' ) from country;

-- concat with a seperate
select name ,continent , concat_ws(' ', continent,code,'Regex' ) from country;
select name ,continent , concat_ws('-', continent,code,'Regex' ) from country;

-- substr. (substring ) => character extract based on the position 
select name ,substr(name,1),substr(name,1,3)  from country; -- start form 2nd char 
select name ,substr(name,1),substr(name,2,5)  from country; 

select name ,substr(name,1),substr(name,-2)  from country;
select name ,substr(name,1),substr(name,-4)  from country;  
select name ,substr(name,1),substr(name,-5)  from country; -- Iraq  is blanc 

select name ,substr(name,1),substr(name,-4,3)  from country;  

select name ,substr(name,1,1),substr(continent,1,1)  from country  

where substr(name,1,1) = substr(continent,1,1);


-- select name , continent, substr(name,1,3) from country 
-- where name like ='alg';
-- where substr (name,1,3)='Alg';


-- instr => serch position of cheracter
select name ,instr (name, 'e') from country;

 select 'yash'; -- digits
select lengrh(' yash');
select char_length('yash');
select name , char_length(name ) from country;

-- trim (extra whith  space yh fir cheracter ko remove kerna)
-- ltrim , rtrim

SELECT CHAR_LENGTH('           yesh.      ');
select trim('           yesh.      ');    

select trim(both 'g' from'            yagggshgggggg');

select name, trim ( both 'a' from name ) from country


-- lpad and rpad  -to create data of fixed characters
select name, population from country;

select name ,poputation,lpad(poputation,9,'0') from country;

