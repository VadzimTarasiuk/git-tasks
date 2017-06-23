# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
 config.vm.synced_folder ".", "/vagrant", disabled: true

 config.vm.define "jenkins" do |jenkins|
    jenkins.vm.box = "./../sbeliakou-vagrant-centos-7.3-x86_64-minimal.box"
    jenkins.vm.network "private_network", ip: "192.168.121.13"
    jenkins.vm.hostname = "jenkins"
    jenkins.vm.network :forwarded_port, guest: 80, host: 8080, auto_correct: true
    jenkins.vm.network :forwarded_port, guest: 8080, host: 8090, auto_correct: true
    jenkins.vm.provider "virtualbox" do |v|
	v.memory = "2048"
	v.name = "jenkins"
    end
    jenkins.vm.provision "shell", inline: <<-SHELL
    SHELL
  end
end
