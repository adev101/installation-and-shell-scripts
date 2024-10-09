# Automated Password SSH  setup
	
# Follow below steps before running the script
#	In worker node setup password of root or any other user using passwd command
#	In case of same server also setup a password with passwd command.
#	Update file /etc/ssh/sshd_config with PasswordAuthentication yes
#	Update file /etc/ssh/sshd_config.d/60-cloudimg-settings.conf with "PasswordAuthentication yes"     and       "PermitRootLogin yes"
#	systemctl restart ssh -> on all servers


#	Create a file with ip address (name = ipaddr) as follows in same path as script:
#[root]  -> user with which you want to set ssh to following server
#13.60.239.17
#<you can add more IP here to which ssh will be done via root>

#[test]  -> user with which you want to set ssh to following server
#51.20.106.51	
#<you can add more IP here to which ssh will be done via test user>

	
 #      	Create the script as follows: 



ipAddFile="./ipaddr"
ssh-keygen -t rsa -N ""
keyfile=/root/.ssh/id*.pub
key=`head -1 $keyfile`
echo "$ipAddFile"

for IP in `cat $ipAddFile`; do
  if [[ $IP == *"["* ]]; then
          echo "$IP"|cut -d "[" -f2 | cut -d "]" -f1>tempUserName.txt
  else
            user=$(cat tempUserName.txt)
            ssh-copy-id $user@$IP
            echo "Key copied to $IP"
  fi
done
rm -rf tempUserName.txt
