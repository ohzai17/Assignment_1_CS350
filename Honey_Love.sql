/* Problem 1 Solution */ 
/* Author: Honey Love */

SELECT country_name
FROM countries
WHERE country_name LIKE '%in%' OR country_name LIKE '%In%';

/* Problem 2 Solution */ 
/* Author: Honey Love */

SELECT countries.region_id, COUNT(*)
FROM countries
GROUP BY countries.region_id;

/* Problem 3 Solution */ 
/* Author: Honey Love */

SELECT employees.first_name, employees.last_name
FROM employees
JOIN jobs ON employees.job_id = jobs.job_id
WHERE jobs.job_title LIKE '%Manager%';

/* Problem 4 Solution */ 
/* Author: Honey Love */

SELECT e.first_name, e.last_name
FROM employees e
JOIN employees m ON e.manager_id = m.employee_id
WHERE m.first_name = 'Nancy' AND m.last_name = 'Greenberg';



