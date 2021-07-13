#/bin/bash

WIN=`cmd.exe /c "<nul set /p=%UserProfile%" 2>/dev/null`
WINHOME=`wslpath $WIN`

declare -a dirs=("Apps" "Desktop" "Documents" "Downloads" "Linux" "Music" "OneDrive" "Pictures" "Videos")

#ln -s $WINHOME ~/WinHome

for directory in "${dirs[@]}"
	do 
		#if [-d $directory ]; then
		#	ln -s $WINHOME/$directory ~/$directory
		#fi
		echo $directory
	done
