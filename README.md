#                                                  OUR FIRST TASK
## Creating Vagrantfile 
Vagrantfile include :
Configuration of VM
Provisioning script:
a) Jenkins installed to folder /opt/jenkins/
b) Server should be run under ‘jenkins’ user and started from init script as service
c) JENKINS_HOME=/opt/jenkins/master
d) JENKINS_DIR=/opt/jenkins/bin  ( <- .war is here)
e) Closed by Nginx and available by link http://jenkins
