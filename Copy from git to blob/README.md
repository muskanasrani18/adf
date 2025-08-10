To do: Copy files from github link to sink container in azure blob

1. Created a json file to store filenames.
2. Uploaded that json file in source param container in azure blob and used lookup to read filenames from json file.
3. Foreach activity to iterate through all the filenames coming from lookup activity.
4. Then inside foreach used copy activity to copy files from git to sink:
    1. Created a dataset pointing towards http and passed github base url and in relative url this @{item().FileName}
    2. After which created foldername and filename parameter in sink side dataset of copy activity.
    3. and then passed foldername as @replace(item().FileName,'.csv','')to not include .csv and file name as @item().FileName
5. After which it will create a foldername and upload the file inside that foldername inside sink container in azure blob container. 
