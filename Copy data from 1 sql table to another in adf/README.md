To copy data from source table(EmployeeDetails) in sql server to sink table(EDetails) in sql server in adf

1.Enabled CDC in database and table using this code:
EXEC sys.sp_cdc_enable_db; // for db
EXEC sys.sp_cdc_enable_table  
@source_schema = 'muskan',   
@source_name   = 'EmployeeDetails',  // for table
@role_name     = NULL;

2.Created a table named as CDC control having table name and Last LSN(Log Sequenced Number) initially made a entry with Employee Details and null LastLSN.

3.After enabling cdc on source table, it will create a table of cdc for the source table(EmployeeDetails) for tracking changes.

4.After which  created a Stored Procedure to select only those changes which are new by comparing startLSN from source CDC table to LastLSN from CDC Control Table.

5.On the type of operation implemented in source table(insert,update,delete) same is implemented on sink table using operation from source CDC table(cdc.dbo_EmployeeDetails_CT).

6.Using this SP in adf and creating a trigger of schedule type, so that on daily basis we can get the latest changes in our sink table.

