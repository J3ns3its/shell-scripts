inpFile=$1
inpFile=$2
# backup top level folders and files
# always add / after path with folder at the end
array=("Backup_linux/" "SideData/" "MKV/" "Keepass/")
for i in "${array[@]}"; do
    echo rsync -av --progress --delete "$1$i" "$2$i"
    rsync -av --progress --delete "$1$i" "$2$i"
done

