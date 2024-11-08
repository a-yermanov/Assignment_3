select
    p.project_id,
    d.department_id,
    d.budget,
    sum(ep.hours_worked * e.hourly_rate) as total_cost
from
    employee_projects ep
join
    employees e on ep.employee_id = e.employee_id
join
    projects p on ep.project_id = p.project_id
join
    departments d on p.department_id = d.department_id
group by
    p.project_id, d.department_id, d.budget
having
    sum(ep.hours_worked * e.hourly_rate) > d.budget;
