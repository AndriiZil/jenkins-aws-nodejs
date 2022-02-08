# Jenkins AWS

## Links
* https://medium.com/konvergen/jenkins-for-node-js-app-on-aws-ec2-part-1-installing-jenkins-on-ec2-24675cc08998
* https://medium.com/konvergen/jenkins-for-node-js-app-on-aws-ec2-part-2-creating-a-node-js-app-3a0fb6b63bc7
* https://medium.com/konvergen/jenkins-for-node-js-app-on-aws-ec2-part-3-jenkins-node-js-app-integration-1fa9d1306d25

* Installation
```
    sudo apt update
    java -version
    sudo apt install default-jre
    java -version
```
* Output
```
    openjdk version "11.0.13" 2021-10-19
    OpenJDK Runtime Environment (build 11.0.13+8-Ubuntu-0ubuntu1.20.04)
    OpenJDK 64-Bit Server VM (build 11.0.13+8-Ubuntu-0ubuntu1.20.04, mixed mode, sharing)
```
```
    sudo apt install default-jdk
    javac -version
```
* Output should be
```
    javac 11.0.13
```
### Jenkins Installation
```
    https://pkg.jenkins.io/debian-stable/
```
* Check status
```
    systemctl status jenkins
```
### Firewall
```
    sudo ufw allow 8080
    sudo ufw allow 22
    sudo ufw status
    sudo ufw enable
```
* Add `8080` PORT to Security Group
* Check Password
```
    sudo cat /var/lib/jenkins/secrets/initialAdminPassword
```
* Restart Jenkins after installation
```
    http://JENKINS.SERVER.IP:8080/restart
```
* Create Instance for NodeJS APP end expose `3000` PORT
* Make SSH Key on this Instance
```
    ssh-keygen -t rsa -b 4096 -C "andrii.zilnyk@gmail.com"
```
* Check and add key to the Github
```
    cat ~/.ssh/id_rsa.pub
```
* Past key inti GitHub and clone repo via SSH
```
    git clone git@github.com:AndriiZil/nodejs-jenkins-aws-test.git
```
### Install NodeJS Jenkins Plugin
* Add WebHook to GitHub
```
    http://JENKINS.SERVER.IP:8080/github-webhook/
```
### SSH into Jenkins server
```
    sudo su - jenkins
    ssh-keygen -t rsa
    cat ~/.ssh/id_rsa.pub
```
* COPY Key to the NodeJS APP Server
```
    vim ~/.ssh/authorized_keys
```
* Set Permissions
```
    chmod 700 ~/.ssh
    chmod 600 ~/.ssh/*
```
* Change Security Group Permissions for NodeJS APP SSH PORT