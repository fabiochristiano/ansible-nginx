Vagrant.configure("2") do |config|
  config.vm.define :nginx do |n|
    n.vm.box = "ubuntu/trusty64"
    n.vm.hostname = 'nginx.fac.com.br'
    n.vm.network "private_network", ip: "172.17.177.100"
    n.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--nicpromisc1", "allow-all"]
      v.customize ["modifyvm", :id, "--nicpromisc2", "allow-all"]
      v.customize ["modifyvm", :id, "--memory", 1024]
      v.customize ["modifyvm", :id, "--name", "nginx.fac.com.br"]
    end
    config.vm.provision "ansible" do |ansible|
       ansible.playbook = "provisioning/playbook.yml"
       ansible.inventory_path = "provisioning/inventory"
      ansible.become = true
    end
  end

end
