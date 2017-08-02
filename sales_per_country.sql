-- 22. Provide a query that shows the total sales per country.

select i.billingcountry, sum(i.total) "Total Sales"
from invoice i
group by i.billingcountry;