#/bin/sh

# Change the vagrant home if you have UTF8 characters in your home directory
#export VAGRANT_HOME=/cygdrive/d
vagrant box add ubuntu https://oss-binaries.phusionpassenger.com/vagrant/boxes/latest/ubuntu-14.04-amd64-vmwarefusion.box
vagrant plugin install vagrant-vbguest

vagrant up
vagrant provision
