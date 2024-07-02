# Jenkins

- Jenkins is a Continuous Integration (CI) tool used by developers to build and test their applications.

## Licence

![License](https://img.shields.io/badge/License-MIT-blue.svg)

## Technologies

![image](https://img.shields.io/badge/Jenkins-49728B?style=for-the-badge&logo=jenkins&logoColor=white)
![image](https://img.shields.io/badge/Docker-2CA5E0?style=for-the-badge&logo=docker&logoColor=white)

- Visit page [Jenkins Download](https://pkg.jenkins.io/debian-stable/) in order to install Jenkins
* Check status
```
    systemctl status jenkins
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
