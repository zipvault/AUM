# AUM
//Automated Update Machine Script to Update Local Directories

//1.1 need to work out how to link these Variable Text fields to the shell script

//1.2
//this is to remove destination data and rebuild direcotry file structures, need to make it run prior to 1.3 script

//1.3
//this is the rsync script to update the DST director from SRC Director

//1.4
//Need to work out how to reload and reset apache2 from within a script for remote trigger as i couldnot get it to reload 
//with SSH or SFTP - t -t.



//1.1 Variable Key Lang

Directory = '/parent/directory/'
DSTDirector = 'somefolder'
SRCDirector = '/var/www/html'
Address = '10.0.0.1'


//1.2 Remove and Rebuild DIrectories
echo Remove and Rebuild Directories
cd Directory
rm -fr DSTDirector
mkdir -p DSTDirector + '/css' 
mkdir -p DSTDirector + '/scripts' 
mkdir -p DSTDirector + '/images' 
mkdir -p DSTDirector + '/assets'

//1.3 Rsync Update Script

#!/bin/sh
echo TRANSFER INITIATED
echo Commence Uplink
rsync -rhv --update SRCDirector + '/images/*' root@Address:DSTDirector + '/images'
rsync -rhv --update SRCDirector + '/css/*' root@Address:DSTDirector + '/css'
rsync -rhv --update SRCDirector + '/scripts/*' root@Address:DSTDirector + '/scripts'
rsync -rhv --update SRCDirector + '/assets/*' root@Address:DSTDirector + '/assets'
rsync -rhv --update SRCDirector + '/*' root@Address:DSTDirector
echo UPLINK COMPLETE
echo --progress Uplink 100 Percent Complete
// you need error handling in 1.3

//1.4 Reload Web server

ssh -t user@"Address" sudo 'apache2ctl restart'
echo server reloaded
exit
