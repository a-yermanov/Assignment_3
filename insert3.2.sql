INSERT INTO departments (budget) VALUES
(100000), (150000), (200000);

INSERT INTO employees (department_id, hourly_rate) VALUES
(1, 500), (1, 100), (2, 55), (3, 65);

INSERT INTO projects (department_id, total_hours_allocated) VALUES
(1, 100), (2, 200), (3, 150);

INSERT INTO employee_projects (employee_id, project_id, hours_worked) VALUES
(1, 1, 200), (2, 1, 40), (3, 2, 400), (4, 3, 60);
