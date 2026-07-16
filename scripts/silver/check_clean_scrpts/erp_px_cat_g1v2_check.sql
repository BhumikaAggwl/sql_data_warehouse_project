SELECT 
* FROM bronze.erp_px_cat_g1v2

-- check 
SELECT * FROM bronze.erp_px_cat_g1v2
WHERE cat!=TRIM(cat) OR subcat!=TRIM(subcat) OR maintenance!=TRIM(maintenance)

SELECT * FROM silver.erp_px_cat_g1v2
WHERE cat!=TRIM(cat) OR subcat!=TRIM(subcat) OR maintenance!=TRIM(maintenance)


SELECT DISTINCT maintenance FROM bronze.erp_px_cat_g1v2
SELECT DISTINCT maintenance FROM silver.erp_px_cat_g1v2
