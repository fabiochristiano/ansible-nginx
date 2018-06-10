path=$(pwd)

if [ -f "./hosts" ]; then
  rm hosts
fi

ssh-keygen -R "172.17.177.100"
ssh-keyscan -H 172.17.177.100 >> ~/.ssh/known_hosts
ssh-keygen -R "172.17.177.101"
ssh-keyscan -H 172.17.177.100 >> ~/.ssh/known_hosts
ssh-keygen -R "172.17.177.102"
ssh-keyscan -H 172.17.177.100 >> ~/.ssh/known_hosts


echo "[nginx]" > ./provisioning/inventory
echo "172.17.177.100 ansible_user=vagrant ansible_ssh_private_key_file=\"${path}/.vagrant/machines/nginx/virtualbox/private_key\"" >> ./provisioning/inventory
echo "[webserver1]" >> ./provisioning/inventory
echo "172.17.177.101 ansible_user=vagrant ansible_ssh_private_key_file=\"${path}/.vagrant/machines/webserver1/virtualbox/private_key\"" >> ./provisioning/inventory
echo "[webserver2]" >> ./provisioning/inventory
echo "172.17.177.102 ansible_user=vagrant ansible_ssh_private_key_file=\"${path}/.vagrant/machines/webserver2/virtualbox/private_key\"" >> ./provisioning/inventory
