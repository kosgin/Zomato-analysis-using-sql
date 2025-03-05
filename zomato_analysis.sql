#Get the count of restaurants in the dataset.
select count(name) from zomato_table;
#Find the number of restaurants offering online orders (online_order = 'yes') and offline orders (online_order = 'no').
    SELECT
    COUNT(*) AS number_of_restaurants
FROM
    zomato_table
WHERE
    online_order = 'yes';
    
#Get the average rating for each restaurant.
SELECT name,AVG(rate) AS rate
FROM zomato_table
GROUP BY name;
#Find restaurants with the highest and lowest ratings.
SELECT name, rate AS High
FROM zomato_table
WHERE rate = (SELECT MAX(rate) FROM zomato_table)
LIMIT 1;


SELECT name, rate AS low
FROM zomato_table
WHERE rate = (SELECT MIN(rate) FROM zomato_table)
LIMIT 1;

#Which cuisine type (in listed_in(type)) has the most number of restaurants?
#select count(listed_in(type)) from zomato_table;
  SELECT
    list,
    COUNT(*) AS number_of_restaurants
FROM
    zomato_table
GROUP BY
    list
ORDER BY
    number_of_restaurants DESC
LIMIT 1;

#Which listed_in(type) category has the highest average rating?
select list, avg(rate) as avg_rating from zomato_table
group by 
list 
order by avg_rating desc limit 1; 
#Find all restaurants that offer online ordering, are rated above 4, and have a cost under 1000 for two people.
select name,rate,cost from zomato_table
where rate>4 && cost<1000 && online_order="yes";
#Find all restaurants that offer online ordering, are rated above 4, and have a cost under 1000 for two people.
select name,rate,cost from zomato_table
where rate>4 and cost<1000 and online_order="yes";

#Find all restaurants with a rating greater than 4 and costing more than 1000 for two people.
SELECT name, rate, cost
FROM zomato_table
WHERE rate > 4 AND cost * 2 > 1000;

#Top 5 restaurant categories based on ratings and average cost.
select list,avg(rate) as avg_rating,avg(cost) as avg_cost from zomato_table
group by list
order by avg_rating desc,
avg_cost desc 
limit 5;
#Which restaurant category (list) has the highest average cost?
select list,avg(cost) as avg_cost
from zomato_table
group by list
order by avg_cost desc limit 1;
#Find the restaurants that have no online ordering (online_order = 'no'), but still have a rating of 4.0S or higher.
select name,online_order,rate from zomato_table
where online_order="no" and rate>=4.0;





















     
  





