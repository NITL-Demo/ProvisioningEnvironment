# ProvisioningEnvironment


root@vagrant:~/ansible-provision-docker/NTLDEMO/infrastructure# 

1) ./provision.sh


2) ansible-playbook -i ansible/hosts ansible/createDatabase.yml

3) ./deploy-release.sh 


4) docker ps -a


5) docker inspect -f '{{.Name}} - {{.NetworkSettings.IPAddress }}' $(docker ps -aq)
