# On the Jenkins machine create ssh key
ssh-keygen -t rsa -b 4096 -C 'andrii.zilnyk@gmail.com'
mv jenkins_rsa jenkins_rsa.pub ~/.ssh/

# On NodeJS Machine
# Manually add the contents of ~/.ssh/id_rsa.pub from the Jenkins server to ~/.ssh/authorized_keys on the remote Ubuntu server.
sudo nano ~/.ssh/authorized_keys

# From the jenkins server or container in order to add "known_hosts" file connect to the server using command
ssh ubuntu@DNS.ADDRESS
