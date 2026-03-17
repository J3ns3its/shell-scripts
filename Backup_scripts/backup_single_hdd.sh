inpFile=$1


# backup top level folders and files
# always add / after path with folder at the end
array=("MainData/" ".thunderbird/6794v77o.default-release/" "P4v/" ".bash_aliases" "Pictures/Wallpapers/eliot_desktop.jpg" ".config/keepassxc/"  ".config/xournalpp/" ".unison/" ".vscode/" ".emacs" ".gitconfig")

#todo use eval
for i in "${array[@]}"; do
    echo rsync -av --progress --delete "/home/jenseits/$i" "$1Backup_linux/$i"
    rsync -av --progress --delete "/home/jenseits/$i" "$1Backup_linux/$i"
done

# ".config/Unity" ".config/unityhub" 
