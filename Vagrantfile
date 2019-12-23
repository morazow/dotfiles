#
# Vagrant configurations
#

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

    config.vm.define "ubuntu" do |ubuntu|
        ubuntu.vm.box = "ubuntu/bionic64"
        ubuntu.vm.provider 'virtualbox' do |vb|
            vb.name = 'dotfiles-ubuntu'
        end
    end

    config.vm.define "debian" do |debian|
        debian.vm.box = "debian/buster64"
        debian.vm.provider 'virtualbox' do |vb|
            vb.name = 'dotfiles-debian'
        end
    end

    config.vm.hostname = "dotfiles"
    config.vm.provision "shell", inline: "cd /vagrant && ./run && ./test", privileged: false

    config.vm.provider :virtualbox do |v|
        v.cpus = 1
        v.memory = 1024
    end

end

# vi: ft=ruby :
