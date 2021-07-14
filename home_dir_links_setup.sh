#/bin/bash

WIN=`cmd.exe /c "<nul set /p=%UserProfile%" 2>/dev/null`
WINHOME=`wslpath $WIN`

declare -a dirs=("Apps" "Desktop" "Documents" "Downloads" "Linux" "Music" "OneDrive" "Pictures" "Videos")

if [ ! -d ~/WinHome ]; then
	ln -s $WINHOME ~/WinHome
	echo "Linking $WIN to your home directory as ~/WinHome"
else
	echo "Your Windows user directory $WIN is already linked to your home directory."
fi

for directory in "${dirs[@]}"
do 
	if [ ! -d ~/$directory ]; then
		if [ -d $WINHOME/$directory ]; then
			ln -s $WINHOME/$directory ~/$directory
			echo "Linking $WIN\\$directory to ~/$directory."
		else
			echo "Skipping $WIN\\$directory as it does not exist."
		fi
	else
		echo "$WIN\\$directory is already linked to your home directory."
	fi
done
