#!/bin/bash

if [ ! -d "$HOME/done" ]; then
    cd $HOME/
    mkdir done
    
    
fi

source $HOME/.bashrc
alias xterm="xterm -fa 'Monospace' -fs 14 &"

