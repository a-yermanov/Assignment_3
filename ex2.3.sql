select
    d.department_id,
    DATE_PART('quarter', NOW()) as quarter,
    sum(ep.hours_worked * e.hourly_rate) as total_cost,
    d.budget
from
    employee_projects ep
join
    employees e on ep.employee_id = e.employee_id
join
    projects p on ep.project_id = p.project_id
join
    departments d on e.department_id = d.department_id
group by
    d.department_id, d.budget
having
    sum(ep.hours_worked * e.hourly_rate) > d.budget;
