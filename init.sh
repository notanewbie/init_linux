set +e

echo "Installing Brave Browser Nightly..."
notify-send "Installing Brave Browser Nightly..."
sudo apt install apt-transport-https
curl -s https://brave-browser-apt-nightly.s3.brave.com/brave-core-nightly.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-nightly.gpg add -
source /etc/os-release
echo "deb [arch=amd64] https://brave-browser-apt-nightly.s3.brave.com/ $UBUNTU_CODENAME main" | sudo tee /etc/apt/sources.list.d/brave-browser-nightly-${UBUNTU_CODENAME}.list
sudo apt update
sudo apt install brave-browser-nightly

echo "Installing Brave Browser..."
notify-send "Installing Brave Browser..."
sudo apt install apt-transport-https
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ trusty main" | sudo tee /etc/apt/sources.list.d/brave-browser-release-trusty.list
sudo apt update
sudo apt install brave-browser

echo "Installing Spotify..."
notify-send "Installing Spotify..."
wget -O spotify-client_1.1.10.546.ge08ef575-19_amd64.deb http://repository.spotify.com/pool/non-free/s/spotify-client/spotify-client_1.1.10.546.ge08ef575-19_amd64.deb
sudo apt install ./spotify-client_1.1.10.546.ge08ef575-19_amd64.deb -y

echo "Installing VLC..."
notify-send "Installing VLC..."
sudo apt-get install vlc -y

echo "Getting cool wallpaper..."
notify-send "Getting cool wallpaper..."
wget -O wallpaper.jpg https://i.imgur.com/tTtvLFV.jpg
gsettings set org.gnome.desktop.background picture-uri "wallpaper.jpg"

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

echo "Installing Anbox..."
notify-send "Installing Anbox..."
wget -O anbox_0.0~git20190124-1_amd64.deb http://ftp.br.debian.org/debian/pool/contrib/a/anbox/anbox_0.0~git20190124-1_amd64.deb
sudo apt install ./anbox_0.0~git20190124-1_amd64.deb -y

echo "Installing Whalebird..."
notify-send "Installing Whalebird..."
wget -O Whalebird-2.8.6-linux-x64.deb https://github.com/h3poteto/whalebird-desktop/releases/download/2.8.6/Whalebird-2.8.6-linux-x64.deb
sudo apt install ./Whalebird-2.8.6-linux-x64.deb -y

echo "Looks like everything went according to plan, buddy! Press enter to kill me."
notify-send "I'm finished. Go back to the terminal and kill me now."
read varname
