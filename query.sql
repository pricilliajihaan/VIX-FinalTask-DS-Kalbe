--Age Average of each Marital Status
select "Marital Status", (avg(age) as age_avg
from customer c
group by "Marital Status" 

--Age average of each gender
select  gender , (avg(age) as age_avg
from customer c
group by gender

--Store with highest Quantity Sales 
select storename, sum(qty) as total_qty  
from transaction t  
join store s on t.storeid = s.storeid
group by storename
order by total_qty desc
limit 1

-- product with highest total amount sales
Select "Product Name", sum(totalamount) as sum_total
from product p
join "Transaction" t ON t.productid = p.productid
group by "Product Name"
order by sum_total desc
limit 1
