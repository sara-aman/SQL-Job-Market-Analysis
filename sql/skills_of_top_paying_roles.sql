-- Q2: Which skills are required for the top 5 highest-paying roles?
-- Uses the same top 5 job titles as Q1.

SELECT
    job_title_short,
    skills_dim.skills,
    COUNT(*) AS skill_count
FROM job_postings_fact

INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id

WHERE job_postings_fact.salary_year_avg IS NOT NULL
  AND job_postings_fact.job_title_short IN (
        SELECT job_title_short
        FROM job_postings_fact
        WHERE salary_year_avg IS NOT NULL
        GROUP BY job_title_short
        HAVING COUNT(*) >= 10
        ORDER BY AVG(salary_year_avg) DESC
        LIMIT 5
    )
GROUP BY job_postings_fact.job_title_short, skills_dim.skills
ORDER BY AVG(job_postings_fact.salary_year_avg) DESC;