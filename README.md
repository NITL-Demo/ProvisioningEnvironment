# ProvisioningEnvironment


root@vagrant:~/ansible-provision-docker/NTLDEMO/infrastructure# 

./provision.sh
ansible-playbook -i ansible/hosts ansible/createDatabase.yml
./deploy-release.sh 

docker ps -a
docker inspect -f '{{.Name}} - {{.NetworkSettings.IPAddress }}' $(docker ps -aq)
