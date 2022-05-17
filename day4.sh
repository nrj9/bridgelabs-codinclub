for files in x.java y.java z.java
do
        
	folderName=`echo $files | awk -F. '{print $1}'`;
	touch $files;
	echo $files;
	echo $folderName;
	printf "\n";

	if [ -d $folderName ]
	then
		rm -r $folderName;
	fi

	if [ $folderName = x ]
	then
		mkdir -p $folderName/java;
		cp -r $files $folderName/java/$files;
	fi

        if [ $folderName = y ]
        then
                mkdir -p $folderName/py;
                cp -r $files $folderName/py/$files;
        fi
        if [ $folderName = z ]
        then
                mkdir -p $folderName/js;
                cp -r $files $folderName/js/$files;
        fi


	mkdir -p $folderName;
	
done
