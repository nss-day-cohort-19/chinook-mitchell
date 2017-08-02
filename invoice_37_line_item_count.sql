--10. Looking at the InvoiceLine table, provide a query that COUNTs the number of line items 
-- for Invoice ID 37.

select i.InvoiceId, count(li.invoicelineid) lineitems
from invoice i, invoiceline li
where li.invoiceid = i.invoiceid
group by i.invoiceid
order by lineitems desc 
limit 1;