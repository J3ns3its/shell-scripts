############################Prelude###############################################
# check os version
# lsb_release -a
# set sudo pw

#update system
#sudo apt update
#sudo apt upgrade

#apt list --installed
#removed packages that are no longer needed
#sudo apt autoremove

##################################################################################
############################START SETUP##########################################
##################################################################################

# copy MainData (start install during copy process)
# install programms with script
# install with ubuntu software and manual install
# copy remaining  data and configs
# run dconf script

# ubuntu setting changes
# compose key right alt
# Dark style
# Setup screens and enable 240hz
# system alert sound
# disable Screen Saver
# show battery percentage
# deactivate enhanced tiling

# firefox mozilla log in
# firefox keepassxc extension
# thunderbird log in

# UEFI
# switch ctrl and fn
# F keys enabled by default

##################################################################################
############################INSTALL FINISHED######################################
##################################################################################

echo "apt install apps"
sudo apt install -y firefox thunderbird ubuntu-restricted-extras libfuse2 emacs vlc xournalpp git texlive-latex-base curl unison-gtk openssh-server keepassxc gimp gnuplot gnuplot-x11 gnuplot-doc swi-prolog-core ghc cabal-install

echo "clipgrab dependency for manual c++ install"
sudo apt install qtbase5-dev qtwebengine5-dev ffmpeg build-essential && sudo apt-get upgrade

echo "libreoffice default jre"
sudo apt-get install default-jre libreoffice-java-common
#################################Install Scripts #################################
chmod u+x install_Signal.sh
./install_Signal.sh

chmod u+x install_UnityHub.sh
./install_UnityHub.sh

chmod u+x install_VisualStudio.sh
./install_VisualStudio.sh

chmod u+x install_EduVpn.sh
./install_EduVpn.sh

chmod u+x install_Miniconda.sh
./install_Miniconda.sh

chmod u+x install_Obs.sh
./install_Obs.sh

chmod u+x install_yt-dlp.sh
./install_yt-dlp.sh
#############################Software Installer##################################
# visual studio code https://code.visualstudio.com/download
# zoom
# libre office
# Texmaker
# intellij community edition
  
##############################Manual Install######################################

# haskell-mode
# https://github.com/haskell/haskell-mode

# Zeichenpad https://www.huion.com/index.php?m=content&c=index&a=lists&catid=16&myform=1&down_title=hs610
# import settings from
# MainData/Setup/Backup_files/huion_tablet.cfg

# clipgrab https://clipgrab.org/
# download appimage (optional), make sure script is linked properly
# 
# Download the yt-dlp file from: https://github.com/yt-dlp/yt-dlp?tab=readme-ov-file#release-files (Scroll down, dowload binary
# then overwrite /home/user/.local/share/ClipGrab/ClipGrab/yt-dlp

#davinci resolve
#https://apps.cloud.blackmagicdesign.com/davinci-resolve
##############################Outdated Maybe no longer neded################

#intellij dowload tar, setup manually?

# install latex german
#sudo add-apt-repository ppa:texlive-backports/ppa && sudo apt update && sudo apt install atomicparsley&& sudo apt-get install texlive-full


