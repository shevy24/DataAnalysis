select count (old_account_id), count (new_account_id), furni_type
from user_trades group by furni_type order by furni_type;

