# Ansible - NGINX with Vagrant
This repository contains a example of virtual machines running NGINX to study some features. The VMs are created via Vagrant and provisioned via Ansible.

You just need to install [Vagrant](http://vagrantup.com/), [VirtualBox](https://www.virtualbox.org/), [Ansible](http://www.ansible.com/), run [configure_inventory.sh](https://github.com/fabiochristiano/ansible-nginx/blob/master/configure_inventory.sh) to configure inventory and [configure_hosts.sh](https://github.com/fabiochristiano/ansible-nginx/blob/master/configure_hosts.sh) to configure hosts file.

http://nginx.fac.com.br/

Redirect:
http://nginx.fac.com.br/pudim

Load Balance:

On Vagrantfile has more 2 webservers for Nginx use loadbalance.

http://nginx.fac.com.br/webserver

while true; do curl http://nginx.fac.com.br/webserver/; sleep 1; done

Root dir was changed from usr/share/nginx/html/ to /var/www/html/ and /var/www/error/ 

## License

MIT license.

