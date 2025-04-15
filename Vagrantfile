PROVISIONING_PATH = "/vagrant_data"
VM_BOX = "ubuntu/jammy64"

Vagrant.configure("2") do |config|

  config.vm.define "master" do |master|
    master.vm.box = VM_BOX
    master.vm.hostname = "master"
    master.vm.network "private_network", ip: "192.168.33.10"
    master.vm.synced_folder "./playbooks", PROVISIONING_PATH
    master.vm.synced_folder "./ssh", "/home/vagrant/ssh"

    master.vm.provider "virtualbox" do |vb|
      vb.name = "ansible-lab-master"
      vb.cpus = "2"
      vb.memory = "3072"
    end

    master.vm.provision "shell", path: "scripts/install_ansible.sh"
    master.vm.provision "shell", path: "scripts/install_galaxy_roles.sh",
      args: "#{PROVISIONING_PATH}"
    master.vm.provision "shell", path: "scripts/manage_pub_keygen.sh"
  end

  config.vm.define "node1" do |node1|
    node1.vm.box = VM_BOX
    node1.vm.hostname = "node1"
    node1.vm.network "private_network", ip: "192.168.33.11"
    node1.vm.synced_folder "./ssh", "/home/vagrant/ssh"

    node1.vm.provider "virtualbox" do |vb|
      vb.name = "ansible-lab-node1"
      vb.cpus = "1"
      vb.memory = "1024"
    end

    node1.vm.provision "shell", path: "scripts/copy_pub_keycontent.sh"
  end

  config.vm.define "node2" do |node2|
    node2.vm.box = VM_BOX
    node2.vm.hostname = "node2"
    node2.vm.network "private_network", ip: "192.168.33.12"
    node2.vm.synced_folder "./ssh", "/home/vagrant/ssh"

    node2.vm.provider "virtualbox" do |vb|
      vb.name = "ansible-lab-node2"
      vb.cpus = "1"
      vb.memory = "1024"
    end

    node2.vm.provision "shell", path: "scripts/copy_pub_keycontent.sh"
  end
end