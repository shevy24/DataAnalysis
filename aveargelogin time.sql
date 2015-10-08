select site, to_char(creation_time, 'mm'), sum(sale_value) from user_sales
group by site,to_char(creation_time, 'mm')
order by site, to_char(creation_time, 'mm') ;

with logins as (
select site, hotel_login_time, 
hotel_login_time - lag(hotel_login_time) 
over (partition by site order by hotel_login_time) as diff 
from hotels_visits)


select site, avg(diff)
from logins
group by site
order by site;