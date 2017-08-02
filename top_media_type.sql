-- 27. Provide a query that shows the most purchased Media Type.

select m.name "Media Type", count(t.trackId) as "Sales"
from mediatype m, track t, invoice i, invoiceline il, album al, artist a
where m.mediatypeId = t.mediatypeId
and t.trackId = il.trackId
and il.invoiceId = i.invoiceId
and t.albumId = al.albumId
and al.artistId = a.artistId
group by m.name
order by "Sales" desc
limit 1;