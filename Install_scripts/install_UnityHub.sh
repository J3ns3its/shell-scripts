#Unity https://docs.unity3d.com/hub/manual/InstallHub.html
echo "Installing Unityhub"
    #To add the public signing key, run the following command:
wget -qO - https://hub.unity3d.com/linux/keys/public | gpg --dearmor | sudo tee /usr/share/keyrings/Unity_Technologies_ApS.gpg > /dev/null

    #To add the Unity Hub repository, you need an entry in /etc/apt/sources.list.d. Run the following command to add the Unity Hub repository:
sudo sh -c 'echo "deb [signed-by=/usr/share/keyrings/Unity_Technologies_ApS.gpg] https://hub.unity3d.com/linux/repos/deb stable main" > /etc/apt/sources.list.d/unityhub.list'

    #Update the package cache and install the package:
sudo apt update && sudo apt upgrade && sudo apt-get install unityhub

# for unityhub not starting
chmod +x ./apparmor-addrule.sh
sudo ./apparmor-addrule.sh /opt/unityhub/unityhub-bin
