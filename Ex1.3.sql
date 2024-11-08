select 
    product_id,
    order_date,
    avg(quantity) over (
        partition by product_id 
        order by order_date 
        range between INTERVAL '7 days' preceding and current row
    ) as rolling_7_day_avg
from 
    order_items
join 
    orders on order_items.order_id = orders.order_id;
