-- Q3: Most in-demand skills for Machine Learning roles (all postings, with or without salary).
SELECT
    job_title_short,
    skills_dim.skills,
    count (skills_dim.skills) as skills_number
From job_postings_fact
INNER JOIN skills_job_dim On job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id

WHERE salary_year_avg IS NOT NULL AND job_title_short LIKE '%Machine Learning%'
GROUP BY job_title_short, skills_dim.skills
ORDER BY skills_number DESC
limit 10;