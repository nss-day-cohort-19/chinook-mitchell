-- 19. Which sales agent made the most in sales in 2009?

select max(group2009sales.agent) as "Agent", max(group2009sales.individual2009sales) as "Sales"
from (
	select e.firstname || " " || e.lastname as "agent", 
	sum(i.total) as "individual2009sales"
	from employee e, customer c
	on e.employeeId = c.supportrepid, invoice i
	on c.customerId = i.customerId
	where i.invoicedate like "2009%"
	group by e.firstname
) as "group2009sales";