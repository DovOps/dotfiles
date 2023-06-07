
sudo apt update
#get .net package list
wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb

sudo apt-get update && \
  sudo apt-get install -y dotnet-sdk-7.0

# update package list for github cli
type -p curl >/dev/null || (sudo apt update && sudo apt install curl -y)
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
&& sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& sudo apt update \
&& sudo apt install gh -y

# github cli login
sudo apt update
sudo apt-get  install -y gh

sudo apt-get  install -y gradle curl git  openjdk-17-jre-headless 


curl -sL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt-get install -y nodejs
nvm install --lts
nvm use --lts



#install code-server
wget -O- https://aka.ms/install-vscode-server/setup.sh | sh

#install code-insiders code cli tunnel

# for pre 20.x ubuntu
sudo apt update
sudo apt install snapd

# install code-insiders
sudo snap install code-insiders --classic

# option to run code-insiders
code-insiders tunnel --accept-server-license-terms





