#
# Vagrant configurations
#

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

    config.vm.define "macos" do |macos|
        macos.vm.box = "jhcook/macos-sierra"
        macos.vm.provider 'virtualbox' do |vb|
            vb.name = 'dotfiles-macos'
        end

        macos.vm.synced_folder ".", "/vagrant", type: "nfs"
    end

    config.vm.define "ubuntu" do |ubuntu|
        ubuntu.vm.box = "ubuntu/xenial64"
        ubuntu.vm.provider 'virtualbox' do |vb|
            vb.name = 'dotfiles-ubuntu'
        end
    end

    config.vm.define "debian" do |debian|
        debian.vm.box = "debian/stretch64"
        debian.vm.provider 'virtualbox' do |vb|
            vb.name = 'dotfiles-debian'
        end
    end

    config.ssh.forward_x11 = true
    config.ssh.forward_agent = true

    config.vm.hostname = "dotfiles"
    config.vm.network "private_network", ip: "192.168.23.33"
    config.vm.provision "shell", inline: "cd /vagrant && ./run", privileged: false

    config.vm.provider :virtualbox do |v|
        v.cpus = 4
        v.memory = 8192

        # Disable USB
        v.customize ["modifyvm", :id, "--usb", "off"]
        v.customize ["modifyvm", :id, "--usbehci", "off"]

        v.customize ['modifyvm', :id, '--vram', '128']
        v.customize ['modifyvm', :id, '--accelerate3d', 'on']
        v.customize ['modifyvm', :id, '--clipboard', 'bidirectional']

        v.customize ["modifyvm", :id, "--natdnsproxy1", "off"]
        v.customize ["modifyvm", :id, "--natdnshostresolver1", "off"]
    end

end

# vi: ft=ruby :
