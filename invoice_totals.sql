select i.total, c.firstname || " " || c.lastname as "customer", c.country, e.firstname || " " || e.lastname as "agent" 
from invoice i, employee e, customer c
where c.customerid == c.supportrepId
and c.supportrepId == e.employeeId;