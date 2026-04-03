Customer Churn Analysis using Azure Data Engineering & Power BI This project demonstrates an end-to-end data engineering and analytics pipeline for analyzing customer churn in the telecom industry. The solution integrates Azure Data Factory, Databricks (PySpark), and Power BI to process data, generate insights, and visualize churn patterns. Architecture

Data Source → CSV dataset (Telecom churn dataset)
Azure Blob Storage → Raw & Processed Data
Azure Data Factory → Data Ingestion & Orchestration
Azure Databricks → Data Processing (PySpark)
Power BI → Dashboard & Visualization Step 1: Create Azure Resources
Create a Resource Group
Create a Storage Account
Inside Storage Account:
Create containers:
raw-data
final-data
Step 2: Upload Dataset

Download Telecom Churn dataset (CSV)
Upload it into raw-data container.
Step 3: Setup Azure Databricks

Create Azure Databricks workspace
Create a Cluster
Copy:
Workspace URL
Cluster ID
Generate Access Token
Step 4: Connect Databricks to Blob Storage spark.conf.set( "fs.azure.account.key.<storage_account>.blob.core.windows.net", "<ACCESS_KEY>" )

Step 5: Load Data in PySpark df = spark.read.csv( "wasbs://raw-data@<storage_account>.blob.core.windows.net/telecom_churn.csv", header=True )

Step 6: Data Cleaning & Transformation Handle null values Convert data types Create new features

Step 7: Create Star Schema Dimension Tables dim_customer dim_services dim_contract Fact Table fact_churn

Step 8: Save Processed Data

Step 9: Setup Azure Data Factory Create ADF instance

Step 10: Create Linked Services Azure Blob Storage (use Access Key) Azure Databricks: Workspace URL Access Token Cluster ID

Step 11: Build ADF Pipeline Pipeline includes: Databricks Notebook Activity Steps: Add Notebook Activity Pass parameter: input_path Trigger pipeline

Step 12: Schedule Trigger Create Trigger (Daily) Run pipeline

Step 13: Power BI Dashboard Load processed data from Blob Storage Create relationships (Star Schema) Create dashboard
