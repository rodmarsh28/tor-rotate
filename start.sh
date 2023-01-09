apt-get install sudo
sudo apt-get update
sudo apt install -y unzip libxi6 libgtk-3-0 libxss1 libgconf-2-4 libasound2 libxtst6 libnss3 libcanberra-gtk-module libcanberra-gtk3-module
sudo apt-get install -y xvfb
sudo apt-get install nodejs
sudo apt-get install npm
apt install docker.io
docker pull zeta0/alpine-tor:latest
docker run -d -p $SPORT:8118 -p $PORT:2090 -e tors=100 -e haproxy_login=$USER \
    -e haproxy_pass=$PASS torproxy
