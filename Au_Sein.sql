-- Problem 5 Solution --
-- Author: Au Sein --
/*
SELECT e.first_name, e.last_name
FROM employees e
WHERE e.salary > (
    SELECT salary
    FROM employees
    WHERE first_name = 'Luis' AND last_name = 'Popp'
) AND e.salary < (
    SELECT salary
    FROM employees
    WHERE first_name = 'Alexander' AND last_name = 'Hunold'
);
*/

-- Problem 6 Solution --
-- Author: Au Sein --
/*
SELECT AVG(e.salary) AS avg_salary_germany_employee
FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id
JOIN countries c ON l.country_id = c.country_id
WHERE c.country_name = 'Germany';
*/

-- Problem 7 Solution --
-- Author: Au Sein --
/*
SELECT department_id, AVG(salary) AS avg_salary_dept
FROM employees
GROUP BY department_id
HAVING COUNT(employee_id) >= 8;
*/

-- Problem 8 Solution --
-- Author: Au Sein --
/*
SELECT MIN(salary) AS min_salary, MAX(salary) AS max_salary
FROM employees e
JOIN jobs j ON e.job_id = j.job_id
WHERE j.job_title LIKE '%Programmer';
*/