select invoiceid, count(invoicelineid) "number of line items"
from invoiceline
group by invoiceid;