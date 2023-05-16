
sudo apt update
#get .net package list
wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb

sudo apt-get update && \
  sudo apt-get install -y dotnet-sdk-7.0


sudo apt-get  install -y gradle curl git  openjdk-17-jre-headless 
sudo apt-get  -y remove nodejs
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash 
source ~/.bashrc

curl -sL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt-get install -y nodejs




#install code-server
wget -O- https://aka.ms/install-vscode-server/setup.sh | sh





