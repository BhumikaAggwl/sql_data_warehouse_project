SELECT 
cid,
bdate,
gen
FROM bronze.erp_cust_az12
WHERE cid LIKE '%AW00011225%'
SELECT * FROM [silver].[crm_cust_info]
-- so we have to clean the erp.cust cid to connect wth the crm_cust id smoothly 


SELECT DISTINCT 
bdate
FROM silver.erp_cust_az12
WHERE bdate<'1924-01-01' OR bdate>GETDATE()

SELECT 
* FROM bronze.erp_cust_az12
WHERE bdate<'1926-01-01' OR bdate>GETDATE()

SELECT 
gen FROM silver.erp_cust_az12
