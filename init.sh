echo "Updating everything..."
sudo apt-get update
sudo apt update

echo "Installing Brave Browser..."
wget -O brave-browser-nightly_0.72.38_amd64.deb https://github.com/brave/brave-browser/releases/download/v0.72.38/brave-browser-nightly_0.72.38_amd64.deb
sudo apt install ./brave-browser-nightly_0.72.38_amd64.deb

echo "Installing Spotify..."
wget -O spotify-client_1.1.10.546.ge08ef575-19_amd64.deb http://repository.spotify.com/pool/non-free/s/spotify-client/spotify-client_1.1.10.546.ge08ef575-19_amd64.deb
sudo apt install ./spotify-client_1.1.10.546.ge08ef575-19_amd64.deb

#echo "Installing Musixmatch..."
#wget -O musixmatch.deb https://download-app.musixmatch.com/
#sudo apt install ./musixmatch.deb

#echo "Installing Python's IDLE..."
#wget -O python.deb http://http.us.debian.org/debian/pool/main/p/python-defaults/idle_2.7.9-1_all.deb
#sudo apt install ./python.deb

echo "Installing VLC..."
sudo apt-get install vlc

echo "Getting cool wallpaper..."
wget -O wallpaper.png https://web.archive.org/web/20190920042719if_/https://i.pinimg.com/originals/9e/e4/7c/9ee47c85ed6b1730fa73bd5a347a0c69.png
gsettings set org.gnome.desktop.background picture-uri "wallpaper.png"
