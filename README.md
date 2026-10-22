🚀 Machine Learning Job Market Analysis

SQL (PostgreSQL) analysis of data and Machine Learning job postings: which roles pay best, which skills Machine Learning Engineers need, and which skills combine high demand with high salary. Python (pandas, Matplotlib) is used only to visualise the final results.

Completed during self-study, following Luke Barousse's [SQL for Data Analytics](https://youtu.be/7mz73uXD9DA) course. The skill category analysis, demand levels, thresholds and chart are my own extensions of the original project.

**Tools:** PostgreSQL, SQL, Python 3.9 (pandas, Matplotlib), VS Code

**SQL concepts:** filtering and aggregation, `GROUP BY` and `HAVING`, `INNER JOIN` across three tables, `CASE` expressions, subqueries

## Beyond the course

- **Skill category analysis** using the `type` column of the skills table
- **Demand levels** (High Demand = 150 or more postings) and a high-salary filter (average above 130,000)
- **Minimum sample sizes**, so that a few high salaries do not distort the rankings
- **Python bar chart** of average salary by skill category

## Key findings

**Top-paying roles:** Senior Data Scientist (average 154,050) and Senior Data Engineer (145,867) pay the most. Machine Learning Engineer ranks fifth among the five top titles, at 126,786.

**Skills of the top-paying roles:** Python, SQL, AWS and Spark are among the most requested skills across all five top-paying roles.

**Most in-demand skills (Machine Learning Engineer):** Python leads with 391 postings (about 68% of the 573 postings with a salary), followed by TensorFlow (195), PyTorch (190), AWS (174), Spark (113) and SQL (112).

**Highest-paying skills:** Excel (159,622), Scala (157,451) and Airflow (144,821) lead the ranking. Spark (138,904) and SQL (136,859) also appear, with about 110 postings each.

**Optimal skills:** Only TensorFlow (195 postings, average 133,798) and PyTorch (190 postings, 133,475) combine high demand with an average salary above 130,000. Go, Excel and Scala have the highest averages but fewer postings.

**Skill categories:** Libraries (131,280; 977 mentions), programming (129,735; 1,028) and cloud (128,777; 413) have the highest averages among the larger categories. Web frameworks, operating systems and async skills are lower, at about 105,000 to 111,000.

> **Data note:** Salary analyses use only postings with a stated salary, a small share of all postings. Skills and titles with very few postings are excluded, and results based on 10 to 20 postings should be read with caution.

![Average salary by skill category]([C:\Users\Sara\Desktop\Self_Learing\SQL_YouTube\output.png].png)

The Python script loads the exported SQL results (CSV) and plots the average salary per skill category for Machine Learning roles.
