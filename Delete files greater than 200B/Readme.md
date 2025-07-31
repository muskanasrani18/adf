Steps for Deleting files greater than 200B size
Created GetMetadata activity to read child items.
After which use foreach activity to read those one by one 
Use another getMetadata to get item name and size of files by parameterzing file name and fetching from foreach
Used if condition to check if getmetadata2 output size greater than 200 then do delete that file from source by passing file name from getmetadata2 item name.
