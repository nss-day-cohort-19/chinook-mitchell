-- 8. How many Invoices were there in 2009 and 2011?

select count(i.invoiceid) numberofinvoices,
strftime('%Y', i.invoicedate) as invoiceyear
from invoice i
where invoiceyear = '2011'
or invoiceyear = '2009'
group by invoiceyear;