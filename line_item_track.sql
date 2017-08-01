select il.invoicelineid, t.name
from invoiceline il, track t
where t.trackid == il.trackid
group by invoicelineid;