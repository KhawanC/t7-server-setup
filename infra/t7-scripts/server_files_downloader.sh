BoiiiUrl="https://github.com/Ezz-lol/boiii-free/releases/latest/download/boiii.exe"

#Install curl and wget
sudo apt install curl wget -y

#WINE
sudo dpkg --add-architecture i386
sudo mkdir -pm755 /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/jammy/winehq-jammy.sources
sudo apt update
sudo apt install --install-recommends winehq-stable -y

#Retrieves SteamCMD
sudo add-apt-repository multiverse -y; sudo apt update
sudo steam steam/question select "I AGREE" | sudo debconf-set-selections | apt install steamcmd -y
echo steam steam/question select "I AGREE" | debconf-set-selections && \
    echo steam steam/license note '' | debconf-set-selections && \
    DEBIAN_FRONTEND=noninteractive apt install -q -y --no-install-recommends steamcmd

#Downloading server files
current_dir=$(pwd)
steamcmd +force_install_dir "$current_dir" +login anonymous +@sSteamCmdForcePlatformType windows +app_update 545990 validate +quit

#deleting unecessary folders
rm -rf steamapps

#deleting unecessary files
cd UnrankedServer
#rm -rf copydedicated.bat
#rm -rf  Launch_Server.bat

#downloading latest t7/boiii/bo3 client
curl -L $BoiiiUrl -o boiii.exe