-- 9. What are the respective total sales for each of those years?

select  'S' || sum(i.total) as "Total",
			strftime('%Y', i.invoicedate) as InvoiceYear
from invoice i 
where InvoiceYear = '2011'
or invoiceyear = '2009'
group by invoiceyear