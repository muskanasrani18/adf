Skipping empty file while copying data from input container in source to output container in sink side.
Created a get metadata activity to get child items.
Used ForEach activity to iterate through all the files present in input container.
Used Lookup container to get the count and see the empty file.
Used if condition to check if not empty then copy else don't copy.
Also used another copy activity to copy the files from input container to backup container and then used delete activity to remove already iterated files via foreach.
This whole pipeline was parameterised.
