CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(255),
    ContactName VARCHAR(255),
    Address VARCHAR(255),
    City VARCHAR(100),
    PostalCode VARCHAR(20),
    Country VARCHAR(100)
);

INSERT INTO Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country) VALUES
(1, 'Alfreds Futterkiste', 'Maria Anders', 'Obere Str. 57', 'Berlin', '12209', 'Germany'),
(2, 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Avda. de la Constitución 2222', 'México D.F.', '05021', 'Mexico'),
(3, 'Antonio Moreno Taquería', 'Antonio Moreno', 'Mataderos 2312', 'México D.F.', '05023', 'Mexico'),
(4, 'Around the Horn', 'Thomas Hardy', '120 Hanover Sq.', 'London', 'WA1 1DP', 'UK'),
(5, 'Berglunds snabbköp', 'Christina Berglund', 'Berguvsvägen 8', 'Luleå', 'S-958 22', 'Sweden'),
(6, 'Blauer See Delikatessen', 'Hanna Moos', 'Forsterstr. 57', 'Mannheim', '68306', 'Germany'),
(7, 'Blondel père et fils', 'Frédérique Citeaux', '24, place Kléber', 'Strasbourg', '67000', 'France'),
(8, 'Bólido Comidas preparadas', 'Martín Sommer', 'C/ Araquil, 67', 'Madrid', '28023', 'Spain'),
(9, 'Bon app\'', 'Laurence Lebihans', '12, rue des Bouchers', 'Marseille', '13008', 'France'),
(10, 'Bottom-Dollar Marketse', 'Elizabeth Lincoln', '23 Tsawassen Blvd.', 'Tsawassen', 'T2F 8M4', 'Canada'),
(11, 'B\'s Beverages', 'Victoria Ashworth', 'Fauntleroy Circus', 'London', 'EC2 5NT', 'UK'),
(12, 'Cactus Comidas para llevar', 'Patricio Simpson', 'Cerrito 333', 'Buenos Aires', '1010', 'Argentina'),
(13, 'Centro comercial Moctezuma', 'Francisco Chang', 'Sierras de Granada 9993', 'México D.F.', '05022', 'Mexico'),
(14, 'Chop-suey Chinese', 'Yang Wang', 'Hauptstr. 29', 'Bern', '3012', 'Switzerland'),
(15, 'Comércio Mineiro', 'Pedro Afonso', 'Av. dos Lusíadas, 23', 'São Paulo', '05432-043', 'Brazil'),
(16, 'Consolidated Holdings', 'Elizabeth Brown', 'Berkeley Gardens 12 Brewery', 'London', 'WX1 6LT', 'UK'),
(17, 'Drachenblut Delikatessend', 'Sven Ottlieb', 'Walserweg 21', 'Aachen', '52066', 'Germany'),
(18, 'Du monde entier', 'Janine Labrune', '67, rue des Cinquante Otages', 'Nantes', '44000', 'France'),
(19, 'Eastern Connection', 'Ann Devon', '35 King George', 'London', 'WX3 6FW', 'UK'),
(20, 'Ernst Handel', 'Roland Mendel', 'Kirchgasse 6', 'Graz', '8010', 'Austria'),
(21, 'Familia Arquibaldo', 'Aria Cruz', 'Rua Orós, 92', 'São Paulo', '05442-030', 'Brazil'),
(22, 'FISSA Fabrica Inter. Salchichas S.A.', 'Diego Roel', 'C/ Moralzarzal, 86', 'Madrid', '28034', 'Spain'),
(23, 'Folies gourmandes', 'Martine Rancé', '184, chaussée de Tournai', 'Lille', '59000', 'France'),
(24, 'Folk och fä HB', 'Maria Larsson', 'Åkergatan 24', 'Bräcke', 'S-844 67', 'Sweden'),
(25, 'Frankenversand', 'Peter Franken', 'Berliner Platz 43', 'München', '80805', 'Germany'),
(26, 'France restauration', 'Carine Schmitt', '54, rue Royale', 'Nantes', '44000', 'France'),
(27, 'Franchi S.p.A.', 'Paolo Accorti', 'Via Monte Bianco 34', 'Torino', '10100', 'Italy'),
(28, 'Furia Bacalhau e Frutos do Mar', 'Lino Rodriguez', 'Jardim das rosas n. 32', 'Lisboa', '1675', 'Portugal'),
(29, 'Galería del gastrónomo', 'Eduardo Saavedra', 'Rambla de Cataluña, 23', 'Barcelona', '08022', 'Spain'),
(30, 'Godos Cocina Típica', 'José Pedro Freyre', 'C/ Romero, 33', 'Sevilla', '41101', 'Spain'),
(31, 'Gourmet Lanchonetes', 'André Fonseca', 'Av. Brasil, 442', 'Campinas', '04876-786', 'Brazil'),
(32, 'Great Lakes Food Market', 'Howard Snyder', '2732 Baker Blvd.', 'Eugene', '97403', 'USA');

-- count total number of rows--  
select count(*) from customers;
-- distinct filter out unique
select count(distinct country) from customers;
SELECT Count(*) AS DistinctCountries FROM (SELECT DISTINCT Country FROM Customers)as cnt; #dont forget last as cnt (mistake)

#where clause used to filter out records
#where keyword > < >= <= =(not ==) <> or !=(not equal to)
#Between 10 and 40 for a range
#like search for a pattern
#in To specify multiple possible values for a column

select * from customers;
select * from customers where country in("germany","spain");  #work as or 
select country from customers where country like "%a%"; 

#filter out which country starts with letter s
 select country from customers where country like "s%";
 #filter out which country end with letter n
 select country from customers where country like "%n";
 #second letter is e
 select country from customers where country like "_e%";
 select country from customers where country <>"Germany"; 
 select country from customers where country !="germany"; 
 
 #order by used to sort 
 select country from customers order by country asc;
 select country from customers order by country desc;
 select country,customername from customers order by country asc,customername desc ; #it will first sort by country if country have same value then sort name by descending
 
 #and if both condition true
 #or if one of the condition is true
 SELECT * FROM Customers WHERE Country = 'Spain' AND (CustomerName LIKE 'G%' OR CustomerName LIKE 'R%');
 SELECT * FROM Customers WHERE Country = 'Spain' AND CustomerName LIKE 'G%' OR CustomerName LIKE 'R%';
 
 #not gives negative result
 SELECT * FROM Customers WHERE CustomerID NOT BETWEEN 10 AND 60; #always used before coln name like not country=""
 
 #insert into : insert into table 
 #syntax insert into tablename (coln name,coln name...) values(value1,value2,...);
 select * from customers;
 insert into customers values(33,'kdsjid',"edcjhbds","245","Mumbai",98745,"India");
 
 #null value is field with no value(zero is not null value)
 #use with where clause is null is not null
 select * from customers where country is null;
 select * from customers where country is not null;
 
 #update used to update existing table records
 #syntax update table_name set coln1="", coln2="" where id=2
 update customers set country="Indiaa",city="Bangalore" where customerid=33;
 select * from customers;
 #always use with where clause else it will update all records of table
 
 #delete: used to delete existing records from table
 delete from customers where customerid=32;
 select * from customers;
 #delete from customers      delete all records of table but not table
 #drop table customers    delte entire table 

#select top clause is used to specify the number of records to return.
-- SELECT TOP 3 * FROM Customers WHERE Country='Germany'; will not work in my sql

#limit number will limit number of top rows to retuen
SELECT * FROM Customers where country="spain" limit 2;
#if u want to fetch last row then first sort then use limit

#Aggregate function : fn which performs on set of values and return a single values
#min max count sum avg
#aggregate fn ignores null values except(count)

#as is alias as i can say that nickname
select min(customerid)as minimum from customers;
select max(customerid) from customers;
select count(customerid) from customers where country="spain";
select avg(customerid),country from customers group by country;
select sum(customerid+10) from customers where country="spain";

#find customer id which is greater than average(use subquery)
select customerid,country from customers where customerid>(select avg(customerid) from customers);
#wildcard basically used for pattern matching thats why use like always
SELECT * FROM Customers WHERE CustomerName LIKE 'a__%';
#it will return all which start with a and contain atleast 3 character
# The percent sign % represents zero, one, or multiple characters
#The underscore sign _ represents one, single character

#wildcard character is used to substitute one or more characters in a string.
select * from customers;
SELECT * FROM Customers WHERE country LIKE '[bsp]%';  #it will return if any country name include b or s or p
#all customers starting with "a", "b", "c", "d", "e" or "f":  for range
SELECT * FROM Customers WHERE CustomerName LIKE '[a-f]%';

select * from customers where country like "G?%";

#round of fn

select round(avg(population),2) from city; 
#upto 2 decimal places

#in is shorthand for multiple or
select * from customers where country in ("spain","germany","uk")order by country asc;
select * from customers where country not in ("spain","germany","uk")order by country asc;
 
 #between is inclusive for both start and end values(always and never or)
 select * from customers where customerid between 2 and 5;
  select * from customers where customerid not between 2 and 5;
  
#alias are used to give coln ,table a readable name
select count(distinct country) as contry from customers;

#Join clause used to combine two or more rows from different table based on related column bw them

#Inner Join: select record that have matching values in both tables
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    EmployeeID INT,
    OrderDate DATE,
    ShipperID INT
);
CREATE TABLE Orders1 (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    EmployeeID INT,
    OrderDate DATE,
    ShipperID INT
);

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShipperID) 
VALUES 
    (10308, 2, 7, '1996-09-18', 3),
    (10309, 37, 3, '1996-09-19', 1),
    (10310, 77, 8, '1996-09-20', 2),
    (10311, 45, 4, '1996-09-21', 1),
    (10312, 23, 6, '1996-09-22', 2),
    (10313, 18, 5, '1996-09-23', 3),
    (10314, 54, 2, '1996-09-24', 1),
    (10315, 11, 9, '1996-09-25', 2);
INSERT INTO Orders1 (OrderID, CustomerID, EmployeeID, OrderDate, ShipperID) 
VALUES 
    (10308, 20, 7, '1996-09-18', 3),
    (10309, 37, 3, '1996-09-19', 1),
    (10310, 77, 8, '1996-09-20', 2),
    (10311, 4, 4, '1996-09-21', 1),
    (10312, 23, 6, '1996-09-22', 2),
    (10313, 18, 5, '1996-09-23', 3),
    (10314, 5, 2, '1996-09-24', 1),
    (10315, 11, 9, '1996-09-25', 2);

select * from orders;
select * from customers as cs inner join orders as od on cs.CustomerID=od.customerid;
select * from orders as cs inner join customers as od on cs.CustomerID=od.customerid;
#same output but order will change 
#Joining three tables
SELECT Orders.OrderID, Customers.CustomerName, orders1.orderdate,orders.customerid
FROM Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID
INNER JOIN orders1 ON Orders.ShipperID = orders1.ShipperID;
#return the intersection of all three tables

#Left join return all the matching records from right and all records from left
select * from customers left join orders on orders.customerid=customers.CustomerID;
#return all records of customer as well as matching records of orders

#Right join return all records from right and matching records from left
 select * from customers right join orders on orders.customerid=customers.CustomerID;
 #return all records from orders and matching records from customers
 
 #cross join return all records from both tables
 select count(*) from customers;
 select count(*) from orders;
 select count(*) from customers cross join orders ;  #no need of on keyword here
 #return number of rows in 1dt table * number of rows in second table
 #How many records will be returned, if Orders has 20 records and Customers has 10 cross join? 200
 
 #self join: A self join is a regular join, but the table is joined with itself.
 select count(*) from customers self join customers;
 #return n*n rows
 select count(distinct b.CustomerID) from customers a,customers b where a.CustomerID<>b.CustomerID and a.city=b.city;
#for better understanding treat them as two different table

#The UNION operator is used to combine the result-set of two or more SELECT statements.
#Every SELECT statement within UNION must have the same number of columns
#The columns must also have similar data types
#The columns in every SELECT statement must also be in the same order

#union by default return only unique value so to return duplicate use union all
select customerid from customers
union 
select customerid from orders;

#group by: used to combine rowsthat have same values in summary rows
select count(*),country from customers group by country;

#Having : introduce in sql to use with aggregate fn while where cant use with aggregate fn
#most of the time having is used with groupby clause and aggregate function
select country from customers group by country having count(country)>2;

#exists: used to check for existence of record in table returns true if it return one or more rows
select * from customers where  exists (select * from customers where customerid>10);
#last condition is true so it will normally execute the query

select * from customers  having avg(CustomerID)>CustomerID;
select * from customers;

#any : if one subquery returns true then true 
#all: if all return true (return boolean)

select customerid from customers where customerid=any(select customerid from customers where country="germany");
select customerid from customers where customerid=all(select customerid from customers where country="germany");

#select into : copies data from one table to another table
CREATE TABLE kuniii (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(255),
    ContactName VARCHAR(255),
    Address VARCHAR(255),
    City VARCHAR(100),
    PostalCode VARCHAR(20),
    Country VARCHAR(100)
);
select * from kuniii;
select * into kunu from customers;
INSERT INTO kuniii SELECT * FROM customers;
#used to copy data from one table to another table




        

 



 
 

 
 
