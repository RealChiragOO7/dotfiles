cd /usr/share/icons && sudo git clone https://github.com/EliverLara/candy-icons

cd ~/Downloads
ide="android-studio arduino-ide-bin visual-studio-code-bin rstudio-desktop-bin"
motrix="aria2-fast motrix"
general="anydesk-bin cava google-chrome realvnc-vnc-viewer sticky-notes ttf-times-new-roman tty-clock yay"

all="$ide $motrix $general"
for package in $all; do
    echo "Installing $package"
    git clone https://aur.archlinux.org/"$package".git
    cd "$package" || exit
    makepkg -si --noconfirm --needed
    cd - || exit
    rm -rf "$package"
done

## Some after installation commands
libtool --finish /usr/lib

#sudo chown -R $USER:$USER /opt/android-studio
dirs_usr="idea pycharm"
for i in dirs_usr; do
    sudo chown -R $USER:$USER /usr/share/"$i"/
done
