cd /usr/share/icons && sudo git clone https://github.com/EliverLara/candy-icons

cd ~/Downloads
ide="android-studio arduino-ide-bin visual-studio-code-bin rstudio-desktop-bin"
motrix="aria2-fast motrix"
general="anydesk-bin google-chrome protonvpn-gui sticky-notes ttf-times-new-roman tty-clock wps-office yay"
python="python-progress python-program"

all="$ide $motrix $general $python"
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
for i in dirs; do
    sudo chown -R $USER:$USER /usr/share/"dirs"
done

yay ncurses5-compat-libs obs-studio-git
