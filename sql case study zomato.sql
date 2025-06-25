
-- 1. select a particular database
use zomato1;
-- 2. count number of rows
-- SELECT COUNT(*) FROM order_details
-- 3. return n random records

-- SELECT * FROM users ORDER BY rand() LIMIT 5
-- 4. Find null values
-- SELECT * FROM orders WHERE restaurant_rating = ''
-- 5. find number of orders placed by each customer

SELECT t2.name ,count(*) as 'no_of_orders' from orders t1
join users t2 
on t1.user_id= t2.user_id
group by t1.user_id, t2.name;

-- 6. find restaurant with most number of menu items

SELECT r_name, COUNT(*) AS 'menu_items' FROM restaurants t1
JOIN menu t2
ON t1.r_id = t2.r_id
GROUP BY t2.r_id;

-- 7. find number of votes and avg rating for all the restaurants
SELECT r_name, COUNT(*) AS 'num_votes' , ROUND(AVG(restaurant_rating),2) AS 'rate'
FROM orders t1
JOIN restaurants t2
ON t1.r_id = t2.r_id
WHERE restaurant_rating <> ''
GROUP BY t1.r_id;
-- 8. find the food that is being sold at most number of restaurants
SELECT f_name, COUNT(*) FROM menu t1
JOIN food t2
ON t1.f_id = t2.f_id
GROUP BY t1.f_id
ORDER BY COUNT(*) DESC LIMIT 1;
-- 9. find restaurant with max revenue in a given month

SELECT r_name, SUM(amount) as 'revenue' FROM orders t1
JOIN restaurants t2
ON t1.r_id = t2.r_id
WHERE MONTHNAME (DATE) = 'May'
GROUP BY t1.r_id;

-- 10. find restaurants with sales > 1500
SELECT r_name, SUM(amount) AS 'revenue' FROM orders t1
JOIN restaurants t2
ON t1.r_id = t2.r_id
GROUP BY t1.r_id
HAVING revenue > 1500;

-- 11. find customers who have never ordered

SELECT user_id, name FROM users
EXCEPT
SELECT t1.user_id, name FROM orders t1
join users t2
on t1.user_id = t2.user_id;
-- 12. Show order details of a particular customer in a given date range

select name,order_id,t1.user_id,amount,t4.f_name,monthname(date) as 'month' from orders t1
join users t2
on t1.user_id=t2.user_id
join menu t3
on t1.r_id=t3.r_id
join food t4
on t3.f_id=t4.f_id
where name='ankit' and monthname(date)='june';

-- 13. Customer favorite food
select t1.user_id, name,t4.f_name ,count(*) as 'order_count' from orders t1
join users t2
on t1.user_id=t2.user_id
join menu t3
on t1.r_id=t3.r_id
join food t4
on t3.f_id=t4.f_id
group by t1.user_id,t3.f_id,t2.name
order by user_id , count(*) desc;


select * from (select t1.user_id, name,t4.f_name ,count(*) as 'order_count' from orders t1
join users t2
on t1.user_id=t2.user_id
join menu t3
on t1.r_id=t3.r_id
join food t4
on t3.f_id=t4.f_id
group by t1.user_id,t3.f_id,t2.name
order by user_id , count(*) desc
) j
group by j.user_id;

-- 14. find most costly restaurants(Avg price/dish)

SELECT t1.r_id, r_name, round(sum(price)/count(*),2) as 'avg_price_dish'  FROM menu t1
join restaurants t2
on t1.r_id=t2.r_id
group by t1.r_id
order by avg_price_dish desc limit 1;

-- 15.  find delivery partner compensation using the formula (#deliveries * 100 + 1000*avg_rating)

SELECT t1.partner_id, t2.partner_name ,round((COUNT(*)*100)+(1000*AVG(delivery_rating)),2) as 'compensation'
from orders t1
join delivery_partner t2
on t1.partner_id=t2.partner_id
group by partner_id;

-- 16 find all the veg restaurants  
SELECT r_name FROM menu t1
JOIN food t2
ON t1.f_id = t2.f_id
JOIN restaurants t3 
ON t1.r_id = t3.r_id
GROUP BY t1.r_id
HAVING MIN(type) = 'Veg' AND MAX(type) = 'Veg';
-- 17. find min and max order value fro all the customer 

SELECT name, MIN(amount) as min_amount , MAX(amount) as max_amount FROM orders t1
JOIN users t2
on t1.user_id = t2.user_id
group by t1.user_id