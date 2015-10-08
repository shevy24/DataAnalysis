select site, to_char(creation_time, 'mm'), sum(sale_value) from user_sales
group by site,to_char(creation_time, 'mm')
order by site, to_char(creation_time, 'mm') ;