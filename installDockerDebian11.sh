#1- Update Package Index and Install dependencies
sudo apt update
sudo apt install apt-transport-https ca-certificates curl gnupg lsb-release -y
#2- Configure Docker Repository
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
    $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

#3- Install Docker Engine
sudo apt update
sudo apt -y install docker-ce docker-ce-cli containerd.io
sudo docker version
sudo systemctl status docker
sudo systemctl start docker