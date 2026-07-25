Qures tests silver.crm_cust_info 

select cst_id,
count(*)
from silver.crm_cust_info 
group by cst_id 
having count (*) >1 or cst_id is null;

---- chike first name ----
select cst_firstname from silver.crm_cust_info
WHERE  cst_firstname != trim(cst_firstname)

  ----- chike last name -----
select cst_lastname from silver.crm_cust_info
WHERE  cst_lastname != trim(cst_lastname)

  ------- chake gendar ------
select cst_gndr from silver.crm_cust_info
WHERE  cst_gndr != trim(cst_gndr)
-- Lets check the values in gender columns

SELECT DISTINCT cst_gndr
from silver.crm_cust_info;


-- Lets check the values in marital status col 

SELECT DISTINCT cst_marital_status
from silver.crm_cust_info;
