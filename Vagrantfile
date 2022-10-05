# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  #RedHat vm 
  config.vm.define 'rhel8' do |rhel8|
    rhel8.vm.hostname = 'rhel8'
    rhel8.vm.box = "generic/rhel8"
    rhel8.vm.network 'private_network', ip: '192.168.50.10'
    rhel8.vm.provider 'virtualbox' do |s|
      s.customize ["modifyvm", :id, "--memory", 1024]
    end 
  end

  #CentOs vm 
  config.vm.define 'stream' do |stream|
    stream.vm.hostname = 'stream'
    stream.vm.box = "centos/stream8"
    stream.vm.network 'private_network', ip: '192.168.50.11'
    stream.vm.provider 'virtualbox' do |s|
      s.customize ["modifyvm", :id, "--memory", 1024]
    end 
  end

  #Ubuntu vm 
  config.vm.define 'focal' do |focal|
    focal.vm.hostname = 'focal'
    focal.vm.box = "ubuntu/focal64"
    focal.vm.network 'private_network', ip: '192.168.50.12'
    focal.vm.provider 'virtualbox' do |s|
      s.customize ["modifyvm", :id, "--memory", 1024]
    end 
  end
  # config.vm.provision 'shell', path: 'provision.sh'
end
