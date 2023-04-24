-- create table

create table cities(
name VARCHAR(50),
country VARCHAR(50),
population bigint,
area INTEGER	
);


SELECT * FROM public.cities


--        -2147483647                integer              2147483647
-- -9,223,372,036,854,775,808        bigint               9,223,372,036,854,775,808


insert into cities(name,country,population,area)
values
('Tokyo','Japan',5465778898,4355),
('Paris','France',5778898,5667),
('Berlin','Germany',865446565,44124);

---diffrent select ops

select * from cities;

select name,country,population from cities;

select name,population/area as population_density from cities;


--exercise

create table phones(
name varchar(50),
manufacturer varchar(50),
price       int,
units_sold	int
);

insert into phones (name,manufacturer,price,units_sold)
values
 ('N1280','Nokia',199,1925),       
 ('Iphone 4','Apple',399,9436),
('Galaxy S','Samsung',299,2359),
('S5620 Monte','Samsung',250,2385),
('N8','Nokia',150,7543), 
('Droid','Motorola',150,8395),
('Wave S8500','Samsung',175,9259);  


select name,price*units_sold as revenue from phones;


-------------------string function

--- join two cols
select name || ' , ' || country as location from cities;
select concat(name,' , ',country) as location from cities;

--uppser and lower
select concat(LOWER(name),' , ',UPPER(country)) as location from cities;