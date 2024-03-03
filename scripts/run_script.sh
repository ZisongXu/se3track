#!/bin/bash

if [ ! -d "$HOME/done" ]; then
    cd $HOME/
    mkdir done
    python3 -m pip install --upgrade pip
    python3 -m pip install trimesh open3d opencv-python transformations torchviz torchsummary vispy PyOpenGL plyfile pyglet pyrender scikit-image
    python3 -m pip install Pillow --upgrade
    pip install torch==2.0.0+cu118 torchvision==0.15.1+cu118 torchaudio==2.0.1 --index-url https://download.pytorch.org/whl/cu118
    pip install pillow PyYAML opencv-python numpy future-fstrings
    cd $HOME/
    git clone https://github.com/wenbowen123/iros20-6d-pose-tracking.git
    
    
fi

source $HOME/.bashrc
alias xterm="xterm -fa 'Monospace' -fs 14 &"


