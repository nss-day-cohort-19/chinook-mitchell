-- 24. Provide a query that shows the most purchased track of 2013.

select t.name, max(allPurchases.purchaseCount) "2013 Purchases"
from track t, (
	select t.name "Track", count(il.trackId) "purchaseCount"
	from track t, invoice i, invoiceline il
	where t.trackId = il.trackId
	and il.invoiceId = i.invoiceId
	and i.invoicedate like "2013%"
	group by t.name
	order by "purchaseCount"
) "allPurchases";