cd ~/Downloads

ide="android-studio arduino-ide-bin visual-studio-code-bin rstudio-desktop-bin"
general="anydesk-bin google-chrome rate-mirrors ttf-times-new-roman yay"

all="$ide $general"
for package in $all; do
    echo "Installing $package"
    git clone https://aur.archlinux.org/"$package".git
    cd "$package" || exit
    makepkg -si --noconfirm --needed
    cd - || exit
    rm -rf "$package"
done
