-- 26. Provide a query that shows the top 3 best selling artists.

select a.name "Artist", count(t.trackId) as "Sales"
from track t, invoice i, invoiceline il, album al, artist a
where t.trackId = il.trackId
and il.invoiceId = i.invoiceId
and t.albumId = al.albumId
and al.artistId = a.artistId
group by a.name
order by "Sales" desc
limit 3;