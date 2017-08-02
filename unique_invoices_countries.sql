select distinct i.billingcountry "Billing Country"
from invoice i
group by i.billingcountry;