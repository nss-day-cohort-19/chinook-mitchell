-- 18. Provide a query that shows total sales made by each sales agent.

select e.firstname || " " || e.lastname "Agent", sum(i.total)
from employee e, invoice i, customer c
where e.employeeid = c.supportrepid
and i.customerid = c.customerid
and e.title = "Sales Support Agent"
group by e.firstname;

--checking work. the sums of the three agents should equal the below total
select total(i.total)
from invoice i;