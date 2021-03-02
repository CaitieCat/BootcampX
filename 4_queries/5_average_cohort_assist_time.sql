SELECT cohort_id as name, avg(completed_at - started_at) as average_request_time
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY name
ORDER BY average_request_time DESC;