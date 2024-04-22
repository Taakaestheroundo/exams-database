CREATE TABLE employees (
id INT PRIMARY KEY,
name VARCHAR(255),
salary DECIMAL(10, 2),
department_id INT,
hire_date DATE );

CREATE TABLE departments (
id INT PRIMARY KEY,
name VARCHAR(255) );
INSERT INTO departments (id, name) VALUES (1, 'Engineering');
INSERT INTO departments (id, name) VALUES (2, 'Sales');
INSERT INTO departments (id, name) VALUES (3, 'Marketing');
INSERT INTO departments (id, name) VALUES (4, 'HR');
INSERT INTO employees (id, name, salary, department_id, hire_date) VALUES (1, 'Alice',
60000.00, 1, '2020-01-01');
INSERT INTO employees (id, name, salary, department_id, hire_date) VALUES (2, 'Bob',
70000.00, 1, '2020-01-15');
INSERT INTO employees (id, name, salary, department_id, hire_date) VALUES (3,
'Charlie', 80000.00, 2, '2020-02-01');
INSERT INTO employees (id, name, salary, department_id, hire_date) VALUES (4, 'Dave',
90000.00, 3, '2020-02-15');
INSERT INTO employees (id, name, salary, department_id, hire_date) VALUES (5, 'Eve',
100000.00, 4, '2020-03-01');

 SELECT e.name, e.hire_date
FROM employees e
JOIN (
    SELECT department_id, MIN(hire_date) as min_hire_date
    FROM employees
    GROUP BY department_id
) ed ON e.department_id = ed.department_id AND e.hire_date = ed.min_hire_date;
