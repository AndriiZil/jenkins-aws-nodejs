# Jenkins

- Jenkins is a Continuous Integration (CI) tool used by developers to build and test their applications.

## Licence

![License](https://img.shields.io/badge/License-MIT-blue.svg)

## Technologies

![image](https://img.shields.io/badge/Jenkins-49728B?style=for-the-badge&logo=jenkins&logoColor=white)
![image](https://img.shields.io/badge/Docker-2CA5E0?style=for-the-badge&logo=docker&logoColor=white)

* Add `8080` PORT to Security Group
* Check Password
```
    sudo cat /var/lib/jenkins/secrets/initialAdminPassword
```
* Restart Jenkins after installation
```
    http://JENKINS.SERVER.IP:8080/restart
```

### Steps

1. Create EC2 Instance with at least 2Gb of memory and install software from the `setup-jenkins.sh` file. Configure `8080`
PORT on Security Group
2. Generate `ssh keys` on the Jenkins machine and add `public key` to the `known_hosts` of NodeJS machine
3. Install Docker on the NodeJS machine
4. On Jenkins machine add private key to the `Manage Jenkins > Credentials`. Install `SSH Agent` plugin `Manage Jenkins > Plugins`.
Add `private key` to the `Manage Jenkins > Credentials > System > Global Credentials`. Add id from the credentials to the `ssh agent`
in pipeline
5. Install Docker on Jenkins Server
6. Create Dockerhub repository, and create image in pipelines for that repo with specific naming
7. Publish Docker Image to the Dockerhub repository
8. SSH into the NodeJS Server from Jenkins Server and create User there