#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ $- == *i* ]] && source /usr/share/blesh/ble.sh --noattach

source ./.bash_aliases
export EDITOR=nano
export EXA_COLORS="da=35;40;1"
export PATH='$PATH:~/.bin'

PS1='[\u@\h \W]\$ '

[[ ${BLE_VERSION-} ]] && ble-attach
