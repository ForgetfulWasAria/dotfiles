#/bin/bash

paru -Qqe | sed '/paru/d'echo > ~/dotfiles/paclist

paru -Qqm > ~/dotfiles/aurlist

powershell.exe -c winget.exe export -o .\\wingetlist
