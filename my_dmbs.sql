CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT,
    salary DECIMAL(10,2),
    commission_pct DECIMAL(4,2)
);

INSERT ALL
    INTO employees (employee_id, first_name, last_name, department_id, salary, commission_pct) VALUES (1, 'John', 'Doe', 101, 5000.00, 0.10)
    INTO employees (employee_id, first_name, last_name, department_id, salary, commission_pct) VALUES (2, 'Jane', 'Smith', 102, 6000.00, 0.15)
    INTO employees (employee_id, first_name, last_name, department_id, salary, commission_pct) VALUES (3, 'Alice', 'Johnson', 103, 5500.00, 0.12)
    INTO employees (employee_id, first_name, last_name,s department_id, salary, commission_pct) VALUES (4, 'Bob', 'Brown', 101, 5200.00, 0.08)
    INTO employees (employee_id, first_name, last_name, department_id, salary, commission_pct) VALUES (5, 'Charlie', 'Davis', 104, 7000.00, 0.20)
    INTO employees (employee_id, first_name, last_name, department_id, salary, commission_pct) VALUES (6, 'Eve', 'Wilson', 105, 4800.00, 0.10)
    INTO employees (employee_id, first_name, last_name, department_id, salary, commission_pct) VALUES (7, 'Frank', 'Martinez', 102, 6300.00, 0.13)
    INTO employees (employee_id, first_name, last_name, department_id, salary, commission_pct) VALUES (8, 'Grace', 'Garcia', 103, 5900.00, 0.18)
    INTO employees (employee_id, first_name, last_name, department_id, salary, commission_pct) VALUES (9, 'Hank', 'Lee', 104, 6500.00, 0.16)
    INTO employees (employee_id, first_name, last_name, department_id, salary, commission_pct) VALUES (10, 'Ivy', 'Lopez', 105, 4700.00, 0.09)
SELECT * FROM dual;


CREATE TABLE department_jobs(
    job_title VARCHR(50,
    department_id INT,
    PRIMARY KEY (department_id, job_title)
);

INSERT ALL
    INTO department_jobs (department_id, job_title) VALUES (10, 'Software Engineer')
    INTO department_jobs (department_id, job_title) VALUES (20, 'Data Analyst')
    INTO department_jobs (department_id, job_title) VALUES (30, 'Product Manager')
    INTO department_jobs (department_id, job_title) VALUES (20, 'Database Administrator')
    INTO department_jobs (department_id, job_title) VALUES (30, 'Project Coordinator')
    INTO department_jobs (department_id, job_title) VALUES (10, 'DevOps Engineer')
    INTO department_jobs (department_id, job_title) VALUES (40, 'UX Designer')
    INTO department_jobs (department_id, job_title) VALUES (50, 'Systems Analyst')
    INTO department_jobs (department_id, job_title) VALUES (40, 'Network Engineer')
    INTO department_jobs (department_id, job_title) VALUES (10, 'Web Developer')
SELECT * FROM dual;


INSERT ALL
    INTO department_jobs (department_id, job_title) VALUES (101, 'Software Engineer')
    INTO department_jobs (department_id, job_title) VALUES (101, 'Data Analyst')
    INTO department_jobs (department_id, job_title) VALUES (102, 'Product Manager')
    INTO department_jobs (department_id, job_title) VALUES (102, 'Database Administrator')
SELECT * FROM dual;


select first_name, last_name
From employees;

SELECT first_name || ' ' || last_name AS full_name
From employees;

Select first_name , salary , salary*12 As annual_salary
from employees;


SELECT 
    first_name,
    salary + 500 AS bonus_salary,
    (salary + 500) * 12 AS annual_bonus_salary
FROM 
    employees;



SELECT 
    first_name, 
    salary, 
    salary * commission_pct AS commission,
    (salary + salary * commission_pct) * 12 AS annual_salary_commission
FROM 
    employees;
