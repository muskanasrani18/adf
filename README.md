Azure Data Engineering Projects
A collection of end-to-end data engineering projects built on Microsoft Azure, demonstrating real-world use of Azure Data Factory, Azure Databricks, PySpark, and Power BI.

Projects
1. Customer Churn Analysis — Telecom
End-to-end analytics pipeline to analyse customer churn behaviour in the telecom industry using the IBM Telco Customer Churn dataset (7,043 records).
Tools: Azure Blob Storage, Azure Databricks, PySpark, Azure Data Factory, Power BI
Highlights:
Built star schema with 1 fact table and 3 dimension tables
Engineered derived variables — Tenure Group, Exit Reason, Active/Inactive Status
Identified 26.54% overall churn rate with month-to-month customers churning 15x more than two-year contract customers
Built interactive Power BI dashboard with dynamic slicers and cross filtering

2. SQL to Azure Blob Storage Migration
Data migration pipeline from on-premise SQL Server to Azure Blob Storage using Self-Hosted Integration Runtime.
Tools: Azure Data Factory, SQL Server, Azure Blob Storage
Highlights:
Configured Self-Hosted Integration Runtime for secure on-premise connectivity
Implemented CDC (Change Data Capture) for incremental data loading
Automated daily sync using scheduled trigger

3. GitHub to Azure Blob Storage File Copy
Automated pipeline to copy multiple files from GitHub to Azure Blob Storage dynamically.
Tools: Azure Data Factory, Azure Blob Storage
Highlights:
Used Lookup activity to read filenames from a JSON config file
ForEach activity to iterate and copy files dynamically
Parameterised datasets for reusable pipeline design

4. Delete Files Greater Than 200 Bytes
Automated pipeline to clean up large files from Azure Blob Storage based on file size.
Tools: Azure Data Factory, Azure Blob Storage
Highlights:
GetMetadata and ForEach activities to inspect each file
IF condition to check file size and trigger delete activity
Fully automated with no manual intervention required

5. Skip Empty Files During Copy
Pipeline that intelligently skips empty files while copying data between containers.
Tools: Azure Data Factory, Azure Blob Storage
Highlights:
Lookup activity to check file record count before copying
IF condition to skip empty files
Backup copy and delete mechanism for processed files
Fully parameterised pipeline

6. Copy Latest File from Container
Pipeline to identify and copy only the most recently modified file from a source container.
Tools: Azure Data Factory, Azure Blob Storage
Highlights:
GetMetadata and ForEach to inspect last modified dates
Variable comparison logic to identify the latest file
Parameterised copy activity for dynamic file handling

Skills Demonstrated
Azure Data Factory pipeline design and orchestration
PySpark data transformation and dimensional modelling
Azure Blob Storage management
Power BI dashboard development
Pipeline automation and scheduling
Parameterisation and reusable pipeline design
Power BI dashboard development
Pipeline automation and scheduling
Parameterisation and reusable pipeline design
