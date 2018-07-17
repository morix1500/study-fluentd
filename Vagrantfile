## -*- mode: ruby -*-
## vi: set ft=ruby :
#
## All Vagrant configuration is done below. The "2" in Vagrant.configure
## configures the configuration version (we support older styles for
## backwards compatibility). Please don't change it unless you know what
## you're doing.
#Vagrant.configure("2") do |config|
#  # The most common configuration options are documented and commented below.
#  # For a complete reference, please see the online documentation at
#  # https://docs.vagrantup.com.
#
#  # Every Vagrant development environment requires a box. You can search for
#  # boxes at https://vagrantcloud.com/search.
#  config.vm.box = "ubuntu/xenial64"

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/xenial64"

  config.vm.define :web do | web |
    web.vm.hostname = "web"
    web.vm.network :private_network, ip: "192.168.33.10", virtualbox__intnet: "intnet"
  end

  config.vm.define :fluentd do | fluentd |
    fluentd.vm.hostname = "fluentd"
    fluentd.vm.network :private_network, ip: "192.168.33.20", virtualbox__intnet: "intnet"
    fluentd.vm.network :forwarded_port, guest: 5601, host:5601
  end
end
