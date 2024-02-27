echo -e "\n\n\033[91m
█▀▀ █▀█ █▄ █ █▀▀ █░█ █▀ █▀▀ █▀▄   █▀▀ █ █ ▄▀█ █▀█ ▄▀█ █▀▀ ▀█▀ █▀▀ █▀█
█▄▄ █▄█ █░▀█ █▀░ █▄█ ▄█ ██▄ █▄▀   █▄▄ █▀█ █▀█ █▀▄ █▀█ █▄▄  █░ ██▄ █▀▄\n\n\033[0m"
sleep 2
echo -e "\n\033[94mConfiging Server for Cpanel instalation...\033[0m"
sleep 1
sudo yum update
sudo yum -y install perl
sudo yum -y install curl
sudo hostnamectl set-hostname host-by.google.info
sudo systemctl stop NetworkManager
sudo systemctl disable NetworkManager
echo -e "\n\033[94mSetting DNS...\033[0m"
sudo bash -c 'echo -e  "nameserver 8.8.8.8\nnameserver 8.8.4.4" > /etc/resolv.conf'
echo -e "\n\033[92mInstalling Cpanel Wait Until Compelete.\033[0m"
sleep 3
cd /home && curl -o latest -L https://securedownloads.cpanel.net/latest && sh latest
