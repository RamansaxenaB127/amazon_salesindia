create database amazonsaleindia;
use amazonsaleindia;

create table amsale(

    sno INT,
    order_id VARCHAR(20),
    order_date DATE,
    customer_segment VARCHAR(50),
    product_category VARCHAR(50),
    sub_category VARCHAR(50),
    region VARCHAR(20),
    state VARCHAR(50),
    sales DECIMAL(10,2),
    quantity INT,
    discount DECIMAL(5,2),
    profit DECIMAL(10,2),
    shipping_cost DECIMAL(10,2)
);



select * from amsale limit 50;


-- Top region sales
select region , round(sum(sales),1) as topsaleregion
from amsale
group by region 
order by topsaleregion asc;


-- Top product & sales
select product_category , round(sum(sales),1) as topproduct
from amsale
group by sub_category 
order by topproduct desc;

-- profit by region 

select region , round(sum(profit),1) as regionprofit
from amsale
group by region
order by regionprofit desc;






