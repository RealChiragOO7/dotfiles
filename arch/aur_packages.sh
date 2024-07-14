cd ~/Downloads

ide="android-studio arduino-ide-bin visual-studio-code-bin rstudio-desktop-bin"
general="anydesk-bin cava google-chrome rate-mirrors sticky-notes ttf-times-new-roman tty-clock yay"

all="$ide $general"
for package in $all; do
    echo "Installing $package"
    git clone https://aur.archlinux.org/"$package".git
    cd "$package" || exit
    makepkg -si --noconfirm --needed
    cd - || exit
    rm -rf "$package"
done
