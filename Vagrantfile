# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |jenkins|

jenkins.vm.box = "setup"
jenkins.vm.hostname = "jenkins-a-d"
jenkins.vm.box_url = "~/Documents/vagrant/setup.box"


jenkins.vm.network "private_network", ip: "192.168.56.122"
jenkins.vm.network "public_network", bridge: "enp4s0"

jenkins.vm.provider "virtualbox" do |vb|
vb.memory = "4096"
vb.name = "jenkins"
end

jenkins.vm.post_up_message = "jenkins vm is loaded"

end