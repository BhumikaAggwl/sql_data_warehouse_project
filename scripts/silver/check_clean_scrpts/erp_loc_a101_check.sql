-- DIS THE CHECK SECTION 
SELECT 
cid,
CASE WHEN cid LIKE 'AW-%' THEN 
REPLACE(cid,'AW-','AW') END AS cid_new
FROM bronze.erp_loc_a101;


SELECT cst_key FROM silver.crm_cust_info;

--data standardisation and consistency 
SELECT 
DISTINCT cntry FROM bronze.erp_loc_a101

SELECT DISTINCT  
cntry,
CASE  WHEN TRIM(cntry)='DE' THEN 'Germany'
	WHEN TRIM(cntry) IN ('US','USA') THEN 'United States'
	WHEN TRIM(cntry)='' OR cntry IS NULL THEN 'N/A'
	ELSE TRIM(cntry)
END as new_cntry
FROM bronze.erp_loc_a101
