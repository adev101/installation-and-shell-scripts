#!/bin/bash

ipAddFile=$2
user=$1
for IP in `cat $ipAddFile`; do

  ssh -l $user $IP "sudo apt install docker.io -y"
done


# ./docker.sh root ipaddress.txt
