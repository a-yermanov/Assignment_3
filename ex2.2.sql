with recursive weekly_hours as (
    select 
        ep.employee_id,
        sum(ep.hours_worked) as total_hours
    from 
        employee_projects ep
    join 
        projects p on ep.project_id = p.project_id
    where 
        p.total_hours_allocated > 0
    group by 
        ep.employee_id
)
select 
    employee_id,
    total_hours / 4 as average_weekly_hours
from 
    weekly_hours
where 
    total_hours / 4 > 40;
