-- Q4: Top-paying skills for Machine Learning roles.
-- Average salary per skill, limited to skills with at least 10 postings
--> so that a single high salary does not distort the ranking.

SELECT
    skills_dim.skills,
    count (skills_dim.skills) as skill_count,
    ROUND(AVG (salary_year_avg), 2) as average_salary
From job_postings_fact

INNER JOIN skills_job_dim On job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id

WHERE salary_year_avg IS NOT NULL
    AND job_title_short LIKE '%Machine Learning%'
GROUP BY skills_dim.skills
Having COUNT(*) >= 15
ORDER BY average_salary DESC
limit 10;