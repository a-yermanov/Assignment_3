select p.category, c.state,
    sum(p.price * oi.quantity) as total_revenue
from 
    customers as c
join 
    orders as o on c.customer_id = o.customer_id
join 
    order_items as oi on o.order_id = oi.order_id
join 
    products as p on oi.product_id = p.product_id
where 
    o.order_date is not null
group by 
    p.category, c.state;
