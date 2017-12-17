# AUM
Automated Update Machine

//Automated Update Machine Script to Update Local Directories
//I am using this to update webservers from ftp server, but i need to finish 1.1 and 1.2 and 1.4

//1.1 need to work out how to link these Variable Text fields to the shell script for example $address = 10.0.0.0
so i can change the address equals at the start of the script instead of having to find and replace each required address location

//1.2
//this is to remove destination data and rebuild direcotry file structures, need to make it run prior to 1.3 script

//1.3
//this is the rsync script to update the DST director from SRC Director currently works locally auth by key

//1.4
//Need to work out how to reload apache2 from within a script for remote trigger as i could not get it to reload 
//with SSH or SFTP - t -t, within a shell.


Please see AUM.RTF attached in Git
