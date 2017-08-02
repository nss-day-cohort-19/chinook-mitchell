-- 25. Provide a query that shows the top 5 most purchased tracks over all.

select t.name "Track", count(il.trackId) "Purchase Count"
from track t, invoice i, invoiceline il
where t.trackId = il.trackId
and il.invoiceId = i.invoiceId
group by t.name
order by "Purchase Count" desc
limit 5;