select total(total) as "2011 total"
from invoice i
where i.invoicedate like "2011%";