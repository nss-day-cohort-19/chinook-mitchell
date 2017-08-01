select count(i.billingcountry) "Invoices", i.billingcountry
from invoice i
group by billingcountry;