sudo apt update

sudo apt install -y wget curl git
sudo apt install -y xorg
sudo apt install -y build-essential cmake make gcc g++ pkg-config
sudo apt install -y libx11-dev libxft-dev libxinerama-dev libxrandr-dev libxext-dev libx11-xcb-dev libxcb1-dev libxcb-util0-dev libxcb-xinerama0-dev libxcb-randr0-dev


# Terminal Emulator
sudo apt install -y alacritty

# Dmenu
$DIR=$(pwd)
cd ~
git clone https://git.suckless.org/dmenu
cd dmenu
make clean
sudo make install
cd $DIR

# Librewolf
sudo apt install -y extrepo
sudo extrepo enable librewolf
sudo extrepo update librewolf
sudo apt install -y librewolf

# Compositor
sudo apt install -y xcompmgr

# Network Manager
sudo apt install -y network-manager network-manager-gnome

# Pipewire Audio
sudo apt install -y pipewire pipewire-pulse pipewire-audio-client-libraries pavucontrol

# Enable Laptop Touch Click
xinput set-prop 11 "libinput Tapping Enabled" 1

#Fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/DepartureMono.zip
$DIR=$(pwd)
cd ~/Downloads
unzip DepartureMono.zip -d ~/.local/share/fonts/DepartureMono
cd $DIR

cp .config ~/
cp .librewolf ~/
cp Pictures ~/
cp .xinitrc ~/