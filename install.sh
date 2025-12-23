#Install Scipt for Windows Eleven Theme for Ubuntu



#Install Require Packages
sudo apt install git make gettext

#Extracting the Mousepointer
unzip Win11OS.zip

#Extracing the Icons
unxz Windows-Eleven.tar.xz
tar -xvf Windows-Eleven.tar

#Extracting the Wallpaper
unxz windows-eleven.tar.xz
tar -xvf windows-eleven.tar

#Extracting the Theme
unxz Win11-round-Light-compact.tar.xz
tar -xvf Win11-round-Light-compact.tar

#Cloning dashtopanel from Git Repository
git clone https://github.com/home-sweet-gnome/dash-to-panel.git

#Creating the .icons and .theme directorys

if [ -d $HOME/.icons]; then
	mv Windows-Eleven $HOME/.icons
else
	mkdir -p $HOME/.icons
	mv Windows-Eleven $HOME/.icons
fi

if [ -d $HOME/.themes]; then
	mv Win11-round-Light-compact $HOME/.themes
else
	mkdir-p $HOME/.themes
	mv Win11-round-Light-compact $HOME/.themes
fi

if [ -d $HOME/.icons]; then
	mv Win11OS $HOME/.icons
else
	mkdir -p $HOME/.icons
	mv Win11OS $HOME/.icons
fi
