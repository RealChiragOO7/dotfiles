## Some after installation commands
libtool --finish /usr/lib

#sudo chown -R $USER:$USER /opt/android-studio
dirs_usr="idea pycharm"
for i in dirs; do
    sudo chown -R $USER:$USER /usr/share/"dirs"
done

cd /usr/share/icons && sudo git clone https://github.com/EliverLara/candy-icons
