#
wdir=~/MainData/Notes_Mind

for subdir in $wdir/*/    # list directories in the form "/tmp/dirname/"
do
    subdir=${subdir%*/}      # remove the trailing "/"
    subdir=${subdir##*/}
    echo -e "\n$subdir"
    if test $subdir = PDF
    then
	echo "Ignoring PDF Folder"
    else
	cd $wdir/$subdir

	for file in *.odt    
	do
	    file=${file%*.odt}    
	    file=${file##*/}
	    if test "$file" = "*"
	    then
		echo "    no odt files in this folder"
	    else
	    echo "    convert: $file"
	    libreoffice --convert-to pdf $wdir/$subdir/$file.odt >/dev/null
	    mv $wdir/$subdir/$file.pdf $wdir/PDF/$subdir/$file.pdf
	    fi
	done

	for file in *.xopp
		    
	do
	    file=${file%*.xopp}    
	    file=${file##*/}	    
	    if test "$file" = "*"
	    then
		echo "    no xopp files in this folder"
	    else
	    echo "    convert: $file"
	    xournalpp -p $file.pdf $file.xopp &>/dev/null
	    mv $wdir/$subdir/$file.pdf $wdir/PDF/$subdir/$file.pdf
	    fi
	done
    fi
done

