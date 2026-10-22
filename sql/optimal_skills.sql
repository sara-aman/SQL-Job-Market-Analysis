-- Q5: Which skills are optimal to learn for Machine Learning roles (high demand and high salary)?
-- Skills with an average salary above 130,000 and at least 10 postings (postings with a stated salary).
--> Demand level: High Demand = 150 or more postings, Low Demand = less than 150.

SELECT
    skills_dim.skills,
    COUNT (skills_dim.skills) as skills_count,
    CASE
        WHEN COUNT(*) >= 150 THEN 'High Demand'
        ELSE 'Low Demand'
    END AS demand_level,
    ROUND(AVG(salary_year_avg), 2) as average_skill_salary
From job_postings_fact

INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id

WHERE salary_year_avg IS NOT NULL
AND job_title_short LIKE '%Machine Learning%'
GROUP BY skills_dim.skills
HAVING AVG(salary_year_avg) > 130000 AND COUNT(*) >= 10
ORDER BY average_skill_salary DESC, skills_count DESC;