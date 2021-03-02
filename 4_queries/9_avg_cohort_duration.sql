SELECT avg(total_duration)
FROM
(SELECT cohorts.name as name, sum(completed_at - started_at) as total_duration
FROM cohorts
JOIN students ON students.id = student_id
JOIN assistance_requests ON assistance_requests.student_id
GROUP BY name
) as total_durations;
