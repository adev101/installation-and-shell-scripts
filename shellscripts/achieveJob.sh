#Archive Job:

#!/bin/bash

srcPath=/home/ubuntu/shellscript/srcfolder
tgtPath=/home/ubuntu/shellscript/targetfolder

echo "Starting Archiving job as per scheduled time: "

cd $srcPath
cp * $tgtPath

echo "Archival process completed"

Schedule: 0 5 * * *

