# Plex paths
<pre>
plex 
  |
  |--config
  |    |--plex
  |    |--prowlarr
  |    |--qbittorrent
  |    |--radarr
  |    |--sonarr
  |
  |--data
       |--media
       |    |--movies
       |    |--tvshows
       |
       |--torrents
       |    |--movies
       |    |--tvshows
</pre>

* Radarr and Sonarr must have access to /data.
* Plex must have access to both media and torrents.

# Setup

`mkdir ~/plex && cd ~/plex`

`mkdir config data`

`cd data && mkdir media torrents`

`cd media && mkdir movies tvshows`

`cd .. && cd torrents && mkdir movies tvshows`

## Create Symbolic Link
`cd ~/plex/data/media && ln -s ~/plex/data/torrents/movies movies`

`cd ~/plex/data/media && ln -s ~/plex/data/torrents/tvshows tvshows`

## Permissions to the current user
`sudo chown -R $USER:$USER /home/rpi/plex/data/`                

`sudo chmod -R a=,a+rX,u+w,g+w /home/rpi/plex/data/`


## Installing Dependencies
`sudo apt-get install apt-transport-https ca-certificates curl gnupg lsb-release`

`sudo install -m 0755 -d /etc/apt/keyrings`

`sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc`

`sudo chmod a+r /etc/apt/keyrings/docker.asc`

## Add the repository to Apt sources:


<pre>echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null</pre>

`sudo apt-get update`
 ## Dependencies for docker-compose
`sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin`

`sudo usermod -aG docker $(whoami)`

`sudo curl -L "https://github.com/docker/compose/releases/download/v2.29.1/docker-compose-linux-aarch64" -o /usr/local/bin/docker-compose`

`sudo chmod +x /usr/local/bin/docker-compose`

## Firewall
### Install
`sudo apt-get install ufw dnsutils`

### Enable
`sudo ufw enable`

`sudo ufw default deny outgoing`

`sudo ufw default deny incoming`

`sudo ufw allow out on wlan0 from any to any`

`sudo ufw allow in on wlan0 from any to any`

### Allow local addresses
`sudo ufw allow from 192.168.0.1/24`

### Allow ssh
`sudo ufw allow ssh`

`sudo ufw allow 22`

### View all firewall rules
`sudo ufw status numbered`

### Turn off firewall
`sudo ufw disable`
