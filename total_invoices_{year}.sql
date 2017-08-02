-- 8. How many Invoices were there in 2009 and 2011?

select strftime('%Y', i.invoicedate) as InvoiceYear, count(i.invoiceid) NumberOfInvoices
from invoice i
where InvoiceYear = '2011'
or InvoiceYear = '2009'
group by InvoiceYear;