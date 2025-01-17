WITH project_counts AS (
    SELECT CLIENT_ID, COUNT(*) AS project_count
    FROM PROJECT
    GROUP BY CLIENT_ID
)
SELECT c.NAME, pc.project_count
FROM project_counts pc;