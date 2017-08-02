-- 20. Which sales agent made the most in sales over all?

select max(groupSales.agent) as "Agent"
from (
	select e.firstname || " " || e.lastname as "agent", 
	sum(i.total) as "individualSales"
	from employee e, customer c, invoice i
	where e.employeeId = c.supportrepid
	and c.customerId = i.customerId
	group by e.firstname
) as "groupSales"
group by groupSales.agent
limit 1;