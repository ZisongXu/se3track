#!/bin/bash

if [ ! -d "$HOME/done" ]; then
    cd $HOME/
    mkdir done
    cd $HOME/catkin_ws/
    catkin_make
    pip install pyquaternion
    pip3 install pybullet
    pip3 install pandas
    pip3 install scikit-surgerycore
    pip3 install seaborn
    pip3 install gdown
    wget https://repo.anaconda.com/archive/Anaconda3-2022.10-Linux-x86_64.sh 
    bash Anaconda3-2022.10-Linux-x86_64.sh -b -p $HOME/Anaconda
    rm -rf Anaconda3-2022.10-Linux-x86_64.sh
    export PATH="$HOME/Anaconda/bin:$PATH"
    source ~/.bashrc
    pip3 install gdown
    
fi

source $HOME/.bashrc
alias xterm="xterm -fa 'Monospace' -fs 14 &"

