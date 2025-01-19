WITH project_lengths AS (
 SELECT NAME, ID, DATEDIFF('MONTH', START_DATE, FINISH_DATE) AS project_length
 FROM PROJECT
)
SELECT pl.NAME, pl.project_length, pl.ID
 FROM project_lengths pl
 WHERE pl.project_length= (
 SELECT MAX(project_length)
 FROM project_lengths
);