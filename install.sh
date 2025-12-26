#Install Scipt for Windows Eleven Theme for Ubuntu



#Install Require Packages
echo 'Installing the Packages'
sudo apt install git make gettext

#Extracting the Cursor
echo 'Extracting the Cursor'
unzip Win11OS.zip

#Extracing the Icons
echo 'Extracing the Icons'
unxz Windows-Eleven.tar.xz
tar -xf Windows-Eleven.tar


#Extracting the Theme
echo 'Extracting the Theme'
unxz Win11-round-Light-compact.tar.xz
tar -xf Win11-round-Light-compact.tar

#Cloning dashtopanel from Git Repository
echo 'Cloning dashtopanel from Git Repository'
git clone https://github.com/home-sweet-gnome/dash-to-panel.git

#Creating the .icons and .theme directorys
echo 'Creating the .icons and .theme directorys'

if [ -d "$HOME/.icons" ]; then
	mv Windows-Eleven $HOME/.icons
else
	mkdir -p $HOME/.icons
	mv Windows-Eleven $HOME/.icons
fi

if [ -d "$HOME/.themes" ]; then
	mv Win11-round-Light-compact $HOME/.themes
else
	mkdir -p $HOME/.themes
	mv Win11-round-Light-compact $HOME/.themes
fi

if [ -d "$HOME/.icons" ]; then
	cd Win11OS
	mv Win11OS $HOME/.icons

else
	mkdir -p $HOME/.icons
	cd Win11OS
	mv Win11OS $HOME/.icons
fi

#copying the wallpaper
echo 'copying the wallpaper'
mkdir -p $HOME/wallpaper
sudo cp $HOME/win11-theme-ubuntu/biom.jpg /usr/share/backgrounds

#Disabling dash-to-dock
echo 'Disabling dash-to-dock'
gsettings set org.gnome.shell.extensions.dash-to-dock autohide false
gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed false
gsettings set org.gnome.shell.extensions.dash-to-dock intellihide false

#Enabling dash-to-panel and user-theme
echo 'Enabling dash-to-panel and user-theme'
gnome-extensions enable 'dash-to-panel@jderose9.github.com'
gnome-extensions enable 'user-theme@gnome-shell-extensions.gcampax.github.com'

#setting the Wallpaper
echo 'setting the Wallpaper'
gsettings set org.gnome.desktop.background picture-uri 'file:///usr/share/backgrounds/biom.jpg'

#setting the Theme
echo 'setting the Theme'
gsettings set org.gnome.desktop.interface gtk-theme 'Win11-round-Light-compact'
gsettings set org.gnome.shell.extensions.user-theme name 'Win11-round-Light-compact'

#setting the icon-theme
echo 'setting the icon-theme'
gsettings set org.gnome.desktop.interface icon-theme 'Windows-Eleven'

#setting the cursor-theme
echo 'setting the cursor-theme'
gsettings set org.gnome.desktop.interface cursor-theme 'Win11OS'

#Setting the Desktop Icons
echo 'Setting the Desktop icons'
gsettings set org.gnome.shell.extensions.ding start-corner 'top-left'
gsettings set org.gnome.shell.extensions.ding show-trash  'true'
