SELECT version();
CREATE TABLE employees(
     id VARCHAR(50),
name VARCHAR (255),
Age VARCHAR(255),
Address VARCHAR(255)

);
INSERT INTO employees(id,name,Age,Address)
VALUES
(1001,'Rohan',26,'Delhi'),
(1002,'Ankit',30,'Gurgaon'),
(1003,'Gaurav',27,'Mumbai'),
(1004,'Raja',32,'Nagpur');

SELECT * FROM employees;


SELECT * FROM employees WHERE id::int = 1004;

SELECT * FROM employees;

SELECT * FROM employees WHERE name LIKE 'R%';


-- Ascending order
SELECT id, age, name FROM employees ORDER BY age ASC;
-- Descending order
SELECT id, age, name FROM employees ORDER BY age DESC;



SELECT DISTINCT address FROM employees;