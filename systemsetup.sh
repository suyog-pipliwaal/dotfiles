#!/bin/bash
# Reset
Color_Off='\033[0m'       # Text Reset

Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'        # White


package_list=(
    "git"
    "vim"
    "curl"
    "gnome-tweaks"
    "nodejs"
    "npm"
	"wget"
)

function install_chrome () {
    if [[ $(which google-chrome) ]]; then
        printf "${Green}Google chrome is install\n"
        reset_text_color
    else
        printf "${Red}Google chrome is not install\n"
        
        reset_text_color #rest color of text aftering using color in printf

        wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
        sudo dpkg -i google-chrome-stable_current_amd64.deb
    fi
}

function install_package () {
    for i in ${package_list[@]}; do
        if [[ $(which $i) ]]; then
            printf "${Green}"
            printf "${i} is install\n"

        else
            printf "${Red}"
            printf "${i} is not install\n"
            sudo apt install $i
        fi
    done
    reset_text_color 

}
function reset_text_color () {
    tput init
}

install_chrome
install_package
reset_text_color


