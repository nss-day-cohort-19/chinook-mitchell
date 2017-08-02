-- 11. Looking at the InvoiceLine table, provide a query that COUNTs the number of line items 
-- for each Invoice. HINT: GROUP BY

select invoiceid, count(invoicelineid) "number of line items"
from invoiceline
group by invoiceid;