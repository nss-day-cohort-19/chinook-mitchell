-- 17. Provide a query that shows all Invoices but includes the # of invoice line items.

select *, count(invoicelineid) "number of line items"
from invoice i, invoiceline il
where il.invoiceId == i.invoiceId
group by i.invoiceid;