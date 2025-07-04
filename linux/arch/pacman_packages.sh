archive="p7zip tar unrar unzip zip"
boot="efibootmgr grub os-prober"
browser="firefox"
bt="alsa-firmware alsa-plugins alsa-utils bluez bluez-libs bluez-utils"
chat="discord telegram-desktop"
codecs="flac faac wavpack libmad opus libvorbis libwebp x265 libde265 x264 libmpeg2 libvpx"
download="aria2 curl rclone wget yt-dlp"
env="android-tools bc clang docker docker-compose gcc gdb libc++ nodejs npm sdl yarn"
firewall="firewalld"
fs="dosfstools mtools squashfs-tools"
general="dialog ffmpeg gimp git less libusb-compat networkmanager obs-studio qbittorrent repo scrcpy sudo"
gpu="amd-ucode libva-mesa-driver mesa vulkan-radeon xf86-video-amdgpu"
ide="pycharm-community-edition"
kernel="linux linux-firmware linux-headers"
mpv="mpv mpv-mpris"
networking="iputils net-tools"
pipewire="pipewire pipewire-alsa pipewire-pulse wireplumber"
printer="cups cups-browsed cups-filters cups-pdf system-config-printer"
py="python python-pip"
ssh="openssh putty tmate"
sys_info="fastfetch htop smartmontools"
terminal_editors="gedit nano vim"

pacman -S $archive $boot $browser $bt $chat $codecs $download $env $firewall $fs $general $gpu $ide $kernel $mpv $networking $pipewire $printer $py $ssh $sys_info $terminal_editors
