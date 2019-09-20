set +e

echo "Updating everything..."
#notify-send "Updating everything..."
{
sudo apt-get update
sudo apt update
} &> /dev/null

echo "Installing Brave Browser..."
#notify-send "Installing Brave Browser..."
{
wget -O brave-browser-nightly_0.72.38_amd64.deb https://github.com/brave/brave-browser/releases/download/v0.72.38/brave-browser-nightly_0.72.38_amd64.deb
sudo apt install ./brave-browser-nightly_0.72.38_amd64.deb -y
} &> /dev/null

echo "Installing Spotify..."
#notify-send "Installing Spotify..."
{
wget -O spotify-client_1.1.10.546.ge08ef575-19_amd64.deb http://repository.spotify.com/pool/non-free/s/spotify-client/spotify-client_1.1.10.546.ge08ef575-19_amd64.deb
sudo apt install ./spotify-client_1.1.10.546.ge08ef575-19_amd64.deb -y
} &> /dev/null

#echo "Installing Python's IDLE..."
#{
#wget -O python.deb http://http.us.debian.org/debian/pool/main/p/python-defaults/idle_2.7.9-1_all.deb
#sudo apt install ./python.deb
#} &> /dev/null

echo "Installing VLC..."
#notify-send "Installing VLC..."
{
sudo apt-get install vlc -y
} &> /dev/null

echo "Getting cool wallpaper..."
#notify-send "Getting cool wallpaper..."
{
wget -O wallpaper.jpg https://web.archive.org/web/20190920170123/https://s17-us2.startpage.com/cgi-bin/serveimage?url=https:%2F%2Fi.imgur.com%2FtTtvLFV.jpg&sp=d20f29331f22df35f0acb85a9c0a40c9
gsettings set org.gnome.desktop.background picture-uri "wallpaper.jpg"
} &> /dev/null

echo "Installing Musixmatch..."
#notify-send "Installing Musixmatch..."
{
wget -O musixmatch_3.6.1_amd64.deb https://anonymousfiles.io/f/musixmatch_3.6.1_amd64.deb
sudo apt install ./musixmatch_3.6.1_amd64.deb -y
} &> /dev/null

echo "Installing Android Messages..."
#notify-send "Installing Android Messages..."
{
wget -O android-messages-desktop_3.0.0_amd64.deb https://github.com/chrisknepper/android-messages-desktop/releases/download/v3.0.0/android-messages-desktop_3.0.0_amd64.deb
sudo apt install ./android-messages-desktop_3.0.0_amd64.deb -y
} &> /dev/null

echo "Installing Caprine (FaceBook Messenger)..."
#notify-send "Installing Caprine (FaceBook Messenger)..."
{
wget -O caprine_2.38.0_amd64.deb https://github.com/sindresorhus/caprine/releases/download/v2.38.0/caprine_2.38.0_amd64.deb
sudo apt install ./caprine_2.38.0_amd64.deb -y
} &> /dev/null

echo "Installing Writefull..."
#notify-send "Installing Writefull..."
{
wget -O writefull_3.0.0-beta19_amd64.deb https://s3-eu-west-1.amazonaws.com/writefull-binaries/3.0.0-beta19/writefull_3.0.0-beta19_amd64.deb
sudo apt install ./writefull_3.0.0-beta19_amd64.deb -y
} &> /dev/null

echo "Looks like everything went according to plan, buddy! Press enter to kill me."
#notify-send "I'm finished. Go back to the terminal and kill me now."
read varname
