select i.invoiceId, i.total, e.firstname || " " || e.lastname as "agent" 
from invoice i, employee e, customer c 
where i.customerId == c.supportrepId 
and c.supportrepId == e.employeeId;