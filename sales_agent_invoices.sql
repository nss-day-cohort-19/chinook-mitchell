--6. Provide a query that shows the invoices associated with each sales agent. 
--The resultant table should include the Sales Agent's full name.

select e.firstname || " " || e.lastname as Agent , i.invoiceId, i.total
from invoice i, employee e, customer c 
where i.customerId == c.supportrepId 
and c.supportrepId == e.employeeId
order by agent, i.billingcountry, i.total desc;