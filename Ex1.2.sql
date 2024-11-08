with category_spend as (
    select 
        c.customer_id,
        c.state,
        p.category,
        sum(p.price * oi.quantity) as total_spend
    from 
        customers as c
    join 
        orders as o on c.customer_id = o.customer_id
    join 
        order_items as oi on o.order_id = oi.order_id
    join 
        products as p on oi.product_id = p.product_id
    group by 
        c.customer_id, c.state, p.category
)
select 
    category,
    customer_id,
    state,
    total_spend
from 
    category_spend
where 
    (category, total_spend) in (
        select category, max(total_spend)
        from category_spend
        group by category
    );
