select total(total) as "2009 total"
from invoice i
where i.invoicedate like "2009%"
union all
select total(total) as "2011 total"
from invoice i
where i.invoicedate like "2011%";
 
select total,
	total(case when invoicedate = "2009%") as "2009_total",
	total(case when invoicedate = "2011%") as "2011_total"
from invoice;