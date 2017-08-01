select il.invoicelineid "Invoice Line", t.name "Song", ar.name "Artist"
from invoiceline il, track t, artist ar
where t.trackid == il.trackid;