CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    budget NUMERIC
);

CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    department_id INT REFERENCES departments(department_id),
    hourly_rate NUMERIC
);

CREATE TABLE projects (
    project_id SERIAL PRIMARY KEY,
    department_id INT REFERENCES departments(department_id),
    total_hours_allocated INT
);

CREATE TABLE employee_projects (
    employee_project_id SERIAL PRIMARY KEY,
    employee_id INT REFERENCES employees(employee_id),
    project_id INT REFERENCES projects(project_id),
    hours_worked INT
);
