PS1="[se3track] Singularity> \w \$ "
export ROS_MASTER_URI=http://localhost:11311
export ROS_HOSTNAME=localhost

# export PATH="$HOME/Anaconda/bin:$PATH"  # commented out by conda initialize

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/home/zisongxu/Anaconda/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/home/zisongxu/Anaconda/etc/profile.d/conda.sh" ]; then
#         . "/home/zisongxu/Anaconda/etc/profile.d/conda.sh"
#     else
#         export PATH="/home/zisongxu/Anaconda/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# <<< conda initialize <<<


# export LD_LIBRARY_PATH=$HOME/Anaconda/envs/rlgpu/lib/:$LD_LIBRARY_PATH
# export PATH="$HOME/Anaconda/bin:$PATH"
# export PATH="/opt/glibc-2.34-install/bin:$PATH"
# export LD_LIBRARY_PATH=/usr/lib/nvidia-cuda-toolkit:$LD_LIBRARY_PATH

# set PATH for cuda 10.2 installation
# if [ -d "/usr/local/cuda-10.2/bin/" ]; then
#     export PATH=/usr/local/cuda-10.2/bin${PATH:+:${PATH}}
#     export LD_LIBRARY_PATH=/usr/local/cuda-10.2/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
# fi

# export CPLUS_INCLUDE_PATH="$CPLUS_INCLUDE_PATH:/usr/include/eigen3"
# export CPLUS_INCLUDE_PATH="$CPLUS_INCLUDE_PATH:/opt/glibc-2.34-install/include"
