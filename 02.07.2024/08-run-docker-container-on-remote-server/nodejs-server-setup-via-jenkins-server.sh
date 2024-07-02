# From Jenkins Server
ssh ubuntu@ec2-3-70-133-82.eu-central-1.compute.amazonaws.com
sudo usermod -aG docker $(whoami)
sudo systemctl restart docker
exit