select c.firstname || " " || c.lastname "Name", i.invoiceId, i.invoicedate, i.billingcountry 
from customer c left join invoice i 
where c.customerId == i.customerId 
and i.billingcountry == "Brazil";