select payment_type, to_char(creation_time, 'mm'), sum(sale_value) from user_sales
group by payment_type,to_char(creation_time, 'mm')
order by payment_type, to_char(creation_time, 'mm') ;