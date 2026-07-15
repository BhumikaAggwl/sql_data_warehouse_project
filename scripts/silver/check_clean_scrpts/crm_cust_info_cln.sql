--explore the quality issues and clean 
SELECT 
*
FROM bronze.crm_cust_info;

-- checking if there any null 
SELECT 
cst_id,
COUNT(*)
FROM bronze.crm_cust_info 
GROUP BY cst_id
HAVING COUNT(*)>1 OR  cst_id IS NULL;

-- NOW focusing on one of cst_id=29466 and picking the highest (latest) date
-- this now removes the duplicates we had 
SELECT
*
FROM(
SELECT
*,
ROW_NUMBER() OVER(PARTITION BY cst_id ORDER BY cst_create_date DESC) as flag_last
FROM bronze.crm_cust_info)t
WHERE flag_last=1

-- Check for unwanted spaces
-- by checking if the name after triming isnt the same before triming 
-- Expectation: no results 
SELECT 
cst_firstname,
cst_lastname 
FROM bronze.crm_cust_info
WHERE cst_firstname!=TRIM(cst_firstname)
OR  cst_lastname!=TRIM(cst_lastname)

-- geder conistense
SELECT
DISTINCT
cst_gndr
FROM bronze.crm_cust_info
-- now we want consistency in the data so we gonna complet the F-> female and M->male

-- same for mairtal status where teh cardinality is low 
SELECT 
DISTINCT 
cst_marital_status
FROM bronze.crm_cust_info;

-- ##########################################################################################################
--NOW CHECKING FOR SILVER 
--explore the quality issues and clean 
SELECT 
*
FROM silver.crm_cust_info;

-- checking if there any null 
SELECT 
cst_id,
COUNT(*)
FROM silver.crm_cust_info 
GROUP BY cst_id
HAVING COUNT(*)>1 OR  cst_id IS NULL;

-- NOW focusing on one of cst_id=29466 and picking the highest (latest) date
-- this now removes the duplicates we had 
SELECT
*
FROM(
SELECT
*,
ROW_NUMBER() OVER(PARTITION BY cst_id ORDER BY cst_create_date DESC) as flag_last
FROM silver.crm_cust_info)t
WHERE flag_last=1

-- Check for unwanted spaces
-- by checking if the name after triming isnt the same before triming 
-- Expectation: no results 
SELECT 
cst_firstname,
cst_lastname 
FROM silver.crm_cust_info
WHERE cst_firstname!=TRIM(cst_firstname)
OR  cst_lastname!=TRIM(cst_lastname)

-- geder conistense
SELECT
DISTINCT
cst_gndr
FROM silver.crm_cust_info
-- now we want consistency in the data so we gonna complet the F-> female and M->male

-- same for mairtal status where teh cardinality is low 
SELECT 
DISTINCT 
cst_marital_status
FROM silver.crm_cust_info;
