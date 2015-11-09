# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "debian/jessie64"
  config.vm.box_check_update = false
  config.vm.provider "virtualbox" do |v|
    v.memory = 512
  end

  # Update apt, install puppet, use the cache to speed up
  config.vm.provision "shell", inline: <<-SHELL
    sudo apt-get update
    sudo apt-get install -y puppet
    sudo cp /vagrant/aptcache/* /var/cache/apt/archives
  SHELL

#  config.vm.provision "puppet" do |puppet|
#    puppet.manifests_path = "puppet/manifests"
#    puppet.module_path = "puppet/modules"
#    puppet.manifest_file  = "site.pp"
#  end

  nodes = [
      'arbiter01',
      'scheduler01',
      'scheduler02',
      'poller01',
      'poller02',
      'broker01',
      'broker02',
      'reactionner01',
      'reactionner02',
  ]

  nodes.each do |node|
      config.vm.define "#{node}" do |v|
          v.vm.hostname = node
      end
  end
end
