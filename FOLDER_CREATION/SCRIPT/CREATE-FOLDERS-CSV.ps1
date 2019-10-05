# Powershell Script to Create a List of Folders from a Input CSV File containing Folder Names
set-executionpolicy remotesigned
#set-executionpolicy unrestricted
Set-Location "D:\TESSERACT\SCRIPTS\FOLDER_CREATION\OUTPUT" 
 
$Folders = Import-Csv D:\TESSERACT\SCRIPTS\FOLDER_CREATION\INPUT\FOLDER_LIST.csv
 
ForEach ($Folder in $Folders) { 
 
New-Item $Folder.Name -type directory 

} 