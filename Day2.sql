
---filter

SELECT name, area FROM cities WHERE area > 4000;

SELECT name, area FROM cities WHERE area <> 5000;   --not equals

SELECT name, area FROM cities WHERE area BETWEEN 5000 AND 10000;
SELECT name, area FROM cities WHERE name IN('Tokyo','Delhi','Paris');
SELECT name, area FROM cities WHERE name NOT IN('Tokyo','Delhi','Paris');
SELECT name, area FROM cities WHERE name NOT IN('Tokyo','Delhi','Paris') AND name='Berlin';
select name,population/area as population_density from cities where population/area >100000;

select name, price*units_sold as total_revenue from phones where price*units_sold>1000000;


----update

update cities set population=696969 where name='Tokyo';
DELETE FROM cities WHERE name='Tokyo';