# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
 config.vm.define "Jenkins" do |Jenkins| 
 jenkins.vm.box = "setup"
 jenkins.vm.hostname = "pyurchuk-ndolya.jenkins"
 jenkins.vm.box_url = "sbeliakou-vagrant-centos-7.3-x86_64-minimal.box"


jenkins.vm.network "private_network", ip: "192.168.56.100"
jenkins.vm.network "public_network", bridge: "enp1s0"

jenkins.vm.provider :virtualbox do |vb|
vb.memory = "4096"
vb.name = "jenkins"
end

config.vm.post_up_message = "VM has been successfully created"

#config.vm.provision "shell", inline: <<-SHELL


#SHELL

end
