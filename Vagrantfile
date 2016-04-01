# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.box = "ubuntu"

  config.vm.synced_folder "puppet", "/tmp/puppet"
  config.vm.synced_folder "../Script", "/srv/www/dev", owner: "www-data", group: "www-data"

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "puppet/manifests"
    puppet.module_path = "puppet/modules"
    puppet.hiera_config_path = 'hiera.yaml'
    puppet.working_directory = "/tmp/puppet"
    puppet.options = "--verbose --debug"
  end

  config.vm.network "private_network", ip: "172.16.0.10"

  config.vm.provider :virtualbox do |v|
    v.customize ["modifyvm", :id, "--memory", 2048]
    v.customize ["modifyvm", :id, "--cpus", "1"]
    v.customize ["modifyvm", :id, "--cpuexecutioncap", "100"]
  end
end
