echo "Updating everything..."
sudo apt-get update
sudo apt update

echo "Installing Brave Browser..."
wget -O brave-browser-nightly_0.72.38_amd64.deb https://github.com/brave/brave-browser/releases/download/v0.72.38/brave-browser-nightly_0.72.38_amd64.deb
sudo apt install ./brave-browser-nightly_0.72.38_amd64.deb

echo "Installing Spotify..."
wget -O spotify-client_1.1.10.546.ge08ef575-19_amd64.deb http://repository.spotify.com/pool/non-free/s/spotify-client/spotify-client_1.1.10.546.ge08ef575-19_amd64.deb
sudo apt install ./spotify-client_1.1.10.546.ge08ef575-19_amd64.deb

#echo "Installing Python's IDLE..."
#wget -O python.deb http://http.us.debian.org/debian/pool/main/p/python-defaults/idle_2.7.9-1_all.deb
#sudo apt install ./python.deb

echo "Installing VLC..."
sudo apt-get install vlc

echo "Getting cool wallpaper..."
wget -O wallpaper.png https://web.archive.org/web/20190920042719if_/https://i.pinimg.com/originals/9e/e4/7c/9ee47c85ed6b1730fa73bd5a347a0c69.png
gsettings set org.gnome.desktop.background picture-uri "wallpaper.png"

echo "Installing Musixmatch..."
wget -O musixmatch_3.6.1_amd64.deb https://anonymousfiles.io/f/musixmatch_3.6.1_amd64.deb
sudo apt install ./musixmatch_3.6.1_amd64.deb

echo "Installing Android Messages..."
wget -O android-messages-desktop_3.0.0_amd64.deb https://github.com/chrisknepper/android-messages-desktop/releases/download/v3.0.0/android-messages-desktop_3.0.0_amd64.deb
sudo apt install ./android-messages-desktop_3.0.0_amd64.deb

echo "Installing Caprine (FaceBook Messenger)..."
wget -O caprine_2.38.0_amd64.deb https://github.com/sindresorhus/caprine/releases/download/v2.38.0/caprine_2.38.0_amd64.deb
sudo apt install ./caprine_2.38.0_amd64.deb
