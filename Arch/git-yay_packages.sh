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
