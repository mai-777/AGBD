/*(7 de Mayo)JOIN:*/
SELECT j.job_title, e.last_name FROM jobs j
JOIN employees e ON j.job_id = e.job_id