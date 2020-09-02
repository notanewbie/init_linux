set +e

echo "Fixing the time..."
notify-send "Fixing the time..."
timedatectl set–ntp no
timedatectl set–ntp yes

echo "Getting cool wallpaper..."
notify-send "Getting cool wallpaper..."
wget -O wallpaper1.jpg https://i.imgur.com/tTtvLFV.jpg
gsettings set org.gnome.desktop.background picture-uri "wallpaper1.jpg"

echo "Getting another cool wallpaper in case that one isn't nice enough for you..."
notify-send "Getting another cool wallpaper in case that one isn't nice enough for you..."
wget -O wallpaper2.jpg https://cdn-image.departures.com/sites/default/files/1578607308/header-pamukkale-thermal-pools-turkey-HOTSPRINGS0120.jpg

echo "Updating everything..."
notify-send "Updating everything..."
sudo apt-get update
sudo apt update

echo "Installing Brave Browser..."
notify-send "Installing Brave Browser..."
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key add -
sudo sh -c 'echo "deb https://brave-browser-apt-release.s3.brave.com disco main" >> /etc/apt/sources.list.d/brave.list'
sudo apt update
sudo apt install brave-browser -y

echo "Installing Brave Browser Nightly..."
notify-send "Installing Brave Browser Nightly..."
curl -s https://brave-browser-apt-nightly.s3.brave.com/brave-core-nightly.asc | sudo apt-key add -
sudo sh -c 'echo "deb https://brave-browser-apt-nightly.s3.brave.com disco main" >> /etc/apt/sources.list.d/brave-browser-dev.list'
sudo apt update
sudo apt install brave-browser-nightly -y

echo "Installing Waterfox..."
notify-send "Installing Waterfox..."
wget -O waterfox.tar.bz2 https://cdn.waterfox.net/releases/linux64/installer/waterfox-current-2020.08.en-US.linux-x86_64.tar.bz2
tar -xvjf ./waterfox.tar.bz2 
cd ./waterfox
./waterfox

echo "Installing GIMP..."
notify-send "Installing GIMP..."
wget -O gimp_2.10.8-2_amd64.deb http://http.us.debian.org/debian/pool/main/g/gimp/gimp_2.10.8-2_amd64.deb
sudo apt install ./gimp_2.10.8-2_amd64.deb -y

echo "Installing Spotify..."
notify-send "Installing Spotify..."
wget -O spotify-client_1.1.10.546.ge08ef575-19_amd64.deb http://repository.spotify.com/pool/non-free/s/spotify-client/spotify-client_1.1.10.546.ge08ef575-19_amd64.deb
sudo apt install ./spotify-client_1.1.10.546.ge08ef575-19_amd64.deb -y

echo "Installing GIMP..."
notify-send "Installing GIMP..."
wget -O gimp_2.10.8-2_amd64.deb http://http.us.debian.org/debian/pool/main/g/gimp/gimp_2.10.8-2_amd64.deb
sudo apt install ./gimp_2.10.8-2_amd64.deb -y

echo "Installing GIMP (from Sudo)..."
notify-send "Installing GIMP (from Sudo)..."
sudo apt-get install gimp -y

echo "Installing VLC..."
notify-send "Installing VLC..."
sudo apt-get install vlc -y

echo "Installing Musixmatch..."
notify-send "Installing Musixmatch..."
wget -O musixmatch_3.6.1_amd64.deb https://anonymousfiles.io/f/musixmatch_3.6.1_amd64.deb
sudo apt install ./musixmatch_3.6.1_amd64.deb -y

echo "Installing Android Messages..."
notify-send "Installing Android Messages..."
wget -O android-messages-desktop_3.0.0_amd64.deb https://github.com/chrisknepper/android-messages-desktop/releases/download/v3.0.0/android-messages-desktop_3.0.0_amd64.deb
sudo apt install ./android-messages-desktop_3.0.0_amd64.deb -y

echo "Installing Caprine (FaceBook Messenger)..."
notify-send "Installing Caprine (FaceBook Messenger)..."
wget -O caprine_2.38.0_amd64.deb https://github.com/sindresorhus/caprine/releases/download/v2.38.0/caprine_2.38.0_amd64.deb
sudo apt install ./caprine_2.38.0_amd64.deb -y

echo "Installing Writefull..."
notify-send "Installing Writefull..."
wget -O writefull_3.0.0-beta19_amd64.deb https://s3-eu-west-1.amazonaws.com/writefull-binaries/3.0.0-beta19/writefull_3.0.0-beta19_amd64.deb
sudo apt install ./writefull_3.0.0-beta19_amd64.deb -y

echo "Installing Whalebird..."
notify-send "Installing Whalebird..."
wget -O Whalebird-2.8.6-linux-x64.deb https://github.com/h3poteto/whalebird-desktop/releases/download/2.8.6/Whalebird-2.8.6-linux-x64.deb
sudo apt install ./Whalebird-2.8.6-linux-x64.deb -y

echo "Installing Minetest..."
notify-send "Installing Minetest..."
sudo apt install minetest -y

echo "Installing AssaultCube..."
notify-send "Installing AssaultCube..."
sudo apt install assaultcube -y

echo "Installing Tesseract..."
notify-send "Installing Tesseract..."
sudo apt install tesseract-ocr -y

echo "Looks like everything went according to plan, buddy! Press enter to kill me."
notify-send "I'm finished. Go back to the terminal and kill me now."
read varname
