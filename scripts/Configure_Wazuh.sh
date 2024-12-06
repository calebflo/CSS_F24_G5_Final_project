sudo apt update
sudo apt upgrade -y
##install Wazuh repository
curl -s https://packages.wazuh.com/4.x/debian/wazuh.key | sudo apt-key add -
echo "deb https://packages.wazuh.com/4.x/debian/ stable main" | sudo tee /etc/apt/sources.list.d/wazuh.list
sudo apt update
##install wazuh manager
sudo apt install wazuh-manager -y
##start and enable wazuh
sudo systemctl enable wazuh-manager
sudo systemctl start wazuh-manager
##install wazuh agent on endpoint
curl -s https://packages.wazuh.com/4.x/debian/wazuh.key | sudo apt-key add -
echo "deb https://packages.wazuh.com/4.x/debian/ stable main" | sudo tee /etc/apt/sources.list.d/wazuh.list
sudo apt update
sudo apt install wazuh-agent -y
##configure the agent to connect to the wazuh manager
sudo nano /var/ossec/etc/ossec.conf
##start and enable wazuh agent
sudo systemctl enable wazuh-agent
sudo systemctl start wazuh-agent
##check wazuh agent status
sudo systemctl status wazuh-agent
##Phishing simulation and testing
t



