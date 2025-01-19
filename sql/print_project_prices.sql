SELECT p.NAME AS NAME,
DATEDIFF(MONTH, p.START_DATE, COALESCE(p.FINISH_DATE, CURRENT_DATE())) * SUM(w.SALARY) AS PRICE
 FROM project_worker pw
 JOIN project p ON pw.PROJECT_ID = p.ID
 JOIN worker w ON pw.WORKER_ID = w.ID
 GROUP BY p.ID
 ORDER BY PRICE DESC;