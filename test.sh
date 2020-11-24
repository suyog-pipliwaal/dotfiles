#!/bin/bash


package_list=(
    'git'
    'curl'
    'vim'
    'gonome-tweak'    
)
for i in ${package_list[@]}; do
    if [[ $(which $i) ]]; then
        echo "install $i"
    else
        echo "not install $i"
    fi
done 

if [[ $(which google-chrome) ]]; then
    echo "google chrome is install"
else 
    echo "google chrome  not install"
fi
