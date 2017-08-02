-- 21. Provide a query that shows the count of customers assigned to each sales agent.

select e.firstname || " " || e.lastname as "agent", count(c.supportrepId)
from employee e, customer c
where e.employeeId = c.supportrepId
group by e.firstname;