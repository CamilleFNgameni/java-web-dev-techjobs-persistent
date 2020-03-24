## Part 1: Test it with SQL

SELECT
  COLUMN_NAME, DATA_TYPE
FROM
  INFORMATION_SCHEMA.COLUMNS
WHERE
  TABLE_SCHEMA = 'techjobs'
AND
  TABLE_NAME = 'job';

## Part 2: Test it with SQL
##write a query to list the names of the employers in St. Louis City.
SELECT name
FROM techjobs.employer
WHERE location = 'St. Louis City';

## Part 3: Test it with SQL
##write the SQL statement to remove the job table

DROP TABLE techjobs.job;

## Part 4: Test it with SQL
##write a query to return a list of the names and descriptions of all skills that are attached
##to jobs in alphabetical order. If a skill does not have a job listed,
##it should not be included in the results of this query.
select distinct name,description
from skill,job_skills
where skill.id = job_skills.skills_id and job_skills.jobs_id is not null
order by name asc;