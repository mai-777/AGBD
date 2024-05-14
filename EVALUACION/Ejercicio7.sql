SELECT p.name, p.ssn, gc.membership_id, gm.membership_status, gc.check_in_date FROM get_fit_now_check_in gc
JOIN get_fit_now_member gm on gc.membership_id = gm.id
JOIN person p on gm.person_id = p.id
WHERE check_in_date like '2018%'
GROUP by p.name
ORDER BY gm.membership_status DESC, p.ssn ASC 