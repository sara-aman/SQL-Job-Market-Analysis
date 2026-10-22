-- Additional: Skill category analysis for Machine Learning roles.
-- Average salary per skill category (skills_dim.type), postings with a stated salary.
-- skill_mentions = number of skill mentions in the category (one posting can count several times).

SELECT
    COUNT (*) as skill_mentions,
    skills_dim.type as skill_category,
    ROUND(AVG(job_postings_fact.salary_year_avg), 2) AS avg_salary

From job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id

WHERE job_postings_fact.salary_year_avg IS NOT NULL
  AND job_postings_fact.job_title_short LIKE '%Machine Learning%'
GROUP BY skills_dim.type
ORDER BY avg_salary DESC;