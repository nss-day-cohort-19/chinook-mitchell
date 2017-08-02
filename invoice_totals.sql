-- 7. Provide a query that shows the Invoice Total, Customer name, Country and Sales Agent name 
-- for all invoices and customers.

select i.total, c.firstname || " " || c.lastname as "Customer", c.country, e.firstname || " " || e.lastname as "Agent" 
from invoice i, employee e, customer c
where c.customerid == c.supportrepId
and c.supportrepId == e.employeeId
order by Agent, i.billingcountry, i.total desc;