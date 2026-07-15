SELECT 
*
FROM bronze.crm_prd_info

-- checking if the prd_id is null
SELECT 
prd_id,
COUNT(*)
FROM bronze.crm_prd_info
GROUP BY prd_id
HAVING COUNT(*)>1 or prd_id IS NULL

-- check for unwanted spaces 
-- expectation:no results 
SELECT
prd_nm
FROM bronze.crm_prd_info
WHERE prd_nm!=TRIM(prd_nm)

-- chek  for null(replacing with 0) or negativ numbers 
SELECT
prd_cost
FROM bronze.crm_prd_info
WHERE prd_cost<0 or prd_cost IS NULL

SELECT DISTINCT prd_line FROM bronze.crm_prd_info


-- checking for invald datestimes 
SELECT 
*
FROM bronze.crm_prd_info
WHERE prd_start_dt>prd_end_dt

-- Solution #1 -> interchanign the start and end date but sometimes when grouped by product
-- creates nonsense overalapping and sometimes having NULL st and some end is not correct 
-- but vice versa can be treated as ok 

-- 2 SOLUTION 
-- remove the end date and from the end date = start date of the 'NEXT' record or subtract by 1 


