-- 23. Which country's customers spent the most?

select i.billingcountry, max(countrySales.allSales) "sales"
from invoice i, (
	select i.billingcountry "thisCountry", sum(i.total) "allSales"
	from invoice i
	group by i.billingcountry
) "countrySales"
where i.billingcountry = countrySales.thisCountry;