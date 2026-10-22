-- Q1: Which job titles have the highest average salary?
-- Average yearly salary per job title (postings with a stated salary), top 5.
--> Titles with at least 10 postings only, to avoid distortion by very small samples.

SELECT 
    count (job_title_short),
    job_title_short,
    ROUND(AVG(salary_year_avg), 2) AS average_salary
FROM job_postings_fact
WHERE salary_year_avg IS NOT NULL
GROUP BY job_title_short
    HAVING COUNT(*) >= 10
ORDER BY average_salary DESC
limit 5;