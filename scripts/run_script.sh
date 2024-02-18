#!/bin/bash

if [ ! -d "$HOME/done" ]; then
    cd $HOME/
    mkdir done
    cd $HOME/catkin_ws/
    catkin_make
    
    
fi

source $HOME/.bashrc
alias xterm="xterm -fa 'Monospace' -fs 14 &"

