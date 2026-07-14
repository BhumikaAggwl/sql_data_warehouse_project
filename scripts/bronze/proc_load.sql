/*
===============================================================================
Stored Procedure: Load Bronze Layer (Source -> Bronze)
===============================================================================
Script Purpose:
    This stored procedure loads data into the 'bronze' schema from external CSV files. 
    It performs the following actions:
    - Truncates the bronze tables before loading data.
    - Uses the `BULK INSERT` command to load data from csv Files to bronze tables.

Parameters:
    None. 
	  This stored procedure does not accept any parameters or return any values.

Usage Example (make sure to run this using new query):
    EXEC bronze.load_bronze;
===============================================================================
*/
CREATE OR ALTER PROCEDURE bronze.load_bronze
AS
BEGIN
	BEGIN TRY
		
		-- ETL BOTTLENECKS TO FIGURE OUT 
		DECLARE @start_time DATETIME ,
				@end_time DATETIME,
				@batch_start_time DATETIME,
				@batch_end_time DATETIME ;
		
		SET @batch_start_time=GETDATE();
		PRINT '======================================================';
		PRINT 'Loading Bronze Layer';
		PRINT '======================================================';

		PRINT '---------------------------------------------------------'
		PRINT 'Loading CRM Tables'
		PRINT '---------------------------------------------------------'

		SET @start_time=GETDATE();
		PRINT 'TRUNCATING crm_cust_info';
		TRUNCATE TABLE bronze.crm_cust_info;
		PRINT 'INSERTING crm_cust_info';
		BULK INSERT bronze.crm_cust_info
		FROM 'D:\New folder\sql-data-warehouse-project-main\datasets\source_crm\cust_info.csv'

			WITH (
				FIRSTROW=2	,		-- FIRST ROW IS ACTUALLY SECOND ROW
				FIELDTERMINATOR=',',
				TABLOCK
			);
		SET @end_time=GETDATE();

		PRINT '>> Load Duration'+CAST(DATEDIFF(SECOND,@start_time,@end_time) AS NVARCHAR)+'seconds';
		PRINT '-----------------';
	-- SELECT * FROM bronze.crm_cust_info
	-- SELECT COUNT(*) FROM bronze.crm_cust_info

	-- SQL Bulk INSERT load ALL CSV files into bronze tables
		
		SET @start_time=GETDATE();
		PRINT 'TRUNCATING crm_prd_info';
		TRUNCATE TABLE bronze.crm_prd_info;

		PRINT 'INSERTING crm_prd_info'
		BULK INSERT bronze.crm_prd_info
		FROM 'D:\New folder\sql-data-warehouse-project-main\datasets\source_crm\prd_info.csv'
			WITH (
				FIRSTROW=2	,		
				FIELDTERMINATOR=',',
				TABLOCK
			);
		
		SET @end_time=GETDATE();
		PRINT 'LOAD DURATION'+CAST(DATEDIFF(SECOND,@start_time,@end_time) AS NVARCHAR) +'seconds';
		PRINT '--------------------';

		SET @start_time=GETDATE();
		PRINT 'TRUNCATING crm_sales_details';
		TRUNCATE TABLE bronze.crm_sales_details;

		PRINT 'INSERTING crm_sales_details';
		BULK INSERT bronze.crm_sales_details
				FROM 'D:\New folder\sql-data-warehouse-project-main\datasets\source_crm\sales_details.csv'
				WITH (
					FIRSTROW = 2,
					FIELDTERMINATOR = ',',
					TABLOCK
				);
		SET @end_time=GETDATE();

		PRINT '>> Load Duration'+CAST(DATEDIFF(SECOND,@start_time,@end_time) AS NVARCHAR)+'seconds';
		PRINT '-----------------';

		PRINT '---------------------------------------------------------';
		PRINT 'Loading ERP Tables';
		PRINT '---------------------------------------------------------';

		SET @start_time=GETDATE()
		PRINT ' TRUNCATING erp_loc_a101';
		TRUNCATE TABLE bronze.erp_loc_a101;

		PRINT 'INSERTING erp_loc_a101';
		BULK INSERT bronze.erp_loc_a101
		FROM 'D:\New folder\sql-data-warehouse-project-main\datasets\source_erp\LOC_A101.csv'
			WITH (
				FIRSTROW=2	,		
				FIELDTERMINATOR=',',
				TABLOCK
			);
		SET @end_time=GETDATE();

		PRINT '>> Load Duration '+ CAST(DATEDIFF(SECOND,@start_time,@end_time) AS NVARCHAR)+' seconds';
		PRINT '-----------------';


		SET @start_time=GETDATE()
		PRINT 'TRUNCATING erp_cust_az12';
		TRUNCATE TABLE bronze.erp_cust_az12;
		PRINT 'INSERTING erp_cust_az12';
		BULK INSERT bronze.erp_cust_az12
		FROM 'D:\New folder\sql-data-warehouse-project-main\datasets\source_erp\CUST_AZ12.csv'
			WITH (
				FIRSTROW = 2,
				FIELDTERMINATOR = ',',
				TABLOCK
				);
		SET @end_time=GETDATE();

		PRINT '>> Load Duration'+CAST(DATEDIFF(SECOND,@start_time,@end_time) AS NVARCHAR)+'seconds';
		PRINT '-----------------';

		SET @start_time=GETDATE()
		PRINT 'TRUNCATING erp_px_cat_g1v2';
		TRUNCATE TABLE bronze.erp_px_cat_g1v2;
				PRINT 'INSERTING erp_px_cat_g1v2';
				BULK INSERT bronze.erp_px_cat_g1v2
				FROM 'D:\New folder\sql-data-warehouse-project-main\datasets\source_erp\PX_CAT_G1V2.csv'
				WITH (
					FIRSTROW = 2,
					FIELDTERMINATOR = ',',
					TABLOCK
				);
		SET @end_time=GETDATE();

		PRINT '>> Load Duration'+CAST(DATEDIFF(SECOND,@start_time,@end_time) AS NVARCHAR)+'seconds';
		PRINT '-----------------';

		SET @batch_end_time=GETDATE()
		PRINT '>> loading Duration' + CAST(DATEDIFF(SECOND,@start_batch_time,@end_batch_time) AS NVARCHAR) +'seconds';
		PRINT '-----------------';


		END TRY
	BEGIN CATCH
		-- WHEN THERE IS ERROR IN LOADING THE SQL TABLE THEN CATCH BEGINS TO DO ERROR HANDLING 
		PRINT '=====================================';
		PRINT 'ERROR OCCURED DURING LOADING BRONZE LAYER';
		PRINT 'Error Message'+ ERROR_MESSAGE();
		PRINT 'Error Message' + CAST(ERROR_NUMBER() AS NVARCHAR);
		PRINT 'Error Message' + CAST(ERROR_STATE() AS NVARCHAR);
		PRINT '=====================================';
	END CATCH
END


EXEC bronze.load_bronze
