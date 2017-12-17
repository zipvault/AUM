# SUP
//ServerSide Update Pusher Automate Update Reload Directory Script

//1.2
//this is to remove destination data and rebuild direcotry file structures

//1.3
//this is the rsync script to update the DST director from SRC Director



//1 Variable Keys

Webs  = 'service apache2'
Directory = '/parent/directory/'
DSTDirector = '/var/www/html'
SRCDirector = '/Uplink'
Address = '10.0.0.1'


//1.0 Reload Web server

ssh -t user@"Address" sudo 'apache2ctl stop'
echo server reloaded


//1.2 Remove and Rebuild Directors
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
// need error handling for1.3



//1.4 Reload Web server

ssh -t user@"Address" sudo 'apache2ctl start'
echo Up 
exit
