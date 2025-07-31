Steps to copy latest file from input container to output container
Created a GetMetaData activity to get child items.
Then used foreach activity to read child items one by one.
In which used another GetMetaData Activity to read file by parameterizing the file name which is being fetched by foreach activity and reading item name and last modified date.
Then created 2 variables latestfile and prev modified date having default value as 1900-01-01 00:00:00
Used if loop and passed the condition to check if getmetadata2 latest modified date is greater than prev then update the latest file name as getnetadata2 file name using set variable and using another set variable to store prev modified date. 
Copying the latest file by passing only latest file name in parameter.
