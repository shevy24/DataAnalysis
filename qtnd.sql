



select new_user_category, count(account_id)/count(distinct account_id)
from hotels_visits
group by new_user_category
order by 1;