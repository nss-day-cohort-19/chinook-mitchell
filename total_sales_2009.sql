select total(total) as "2009 total"
from invoice i
where i.invoicedate like "2009%";