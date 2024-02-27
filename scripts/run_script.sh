#!/bin/bash

if [ ! -d "$HOME/done" ]; then
    cd $HOME/
    mkdir done
    python3 -m pip install --upgrade pip
    python3 -m pip install trimesh open3d opencv-python transformations torchviz torchsummary vispy PyOpenGL plyfile pyglet pyrender scikit-image
    python3 -m pip install Pillow --upgrade
    python3 -m pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118
    pip install pillow PyYAML opencv-python numpy future-fstrings
    
fi

source $HOME/.bashrc
alias xterm="xterm -fa 'Monospace' -fs 14 &"


