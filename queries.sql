-- Insert data
INSERT INTO employees (first_name, last_name, department, salary, hire_date) VALUES
('John', 'Doe', 'Sales', 75000, '2020-03-15'),
('Jane', 'Smith', 'Marketing', 82000, '2019-06-22'),
('Alice', 'Brown', 'Sales', 68000, '2021-01-10'),
('Bob', 'Jones', 'IT', 95000, '2018-09-05'),
('Emma', 'Davis', 'Marketing', 70000, '2022-04-18');

-- All employees
SELECT * FROM employees;

-- Employees in Sales
SELECT first_name, last_name, salary
FROM employees
WHERE department = 'Sales';

-- Average salary by department
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
ORDER BY avg_salary DESC;

-- Top 3 earners
SELECT first_name, last_name, salary
FROM employees
ORDER BY salary DESC
LIMIT 3;

-- Hired after 2020
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date > '2020-01-01';

-- Number of employees per department
SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department
ORDER BY employee_count DESC;

-- Total salary cost by department
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department
ORDER BY total_salary DESC;