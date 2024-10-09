
#Housekeeping Job
#!/bin/bash

tgtPath=/home/ubuntu/shellscript/targetfolder


echo "Starting Housekeeping job as per scheduled time: "

cd $tgtPath

rm -rf *

echo "Housekeeping process completed"


Schedule: 30 * * * *
