# Jenkins AWS

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