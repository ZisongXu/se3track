-c /bin/bash

apt-get update 
DEBIAN_FRONTEND=noninteractive apt-get install -y keyboard-configuration
DEBIAN_FRONTEND=noninteractive TZ="Europe/London" apt-get install -y tzdata
apt-get -y upgrade

apt-get install -y --force-yes \
    wget \
    vim-gtk \
    zip \
    unzip \
    git \
    build-essential \
    software-properties-common \
    xterm \
    pypy \
    cmake \
    curl \
    python \
    psmisc \
    apt-utils \
    python3-pip \
    mesa-utils \
    firefox-geckodriver \
    libassimp-dev \
    pciutils \
    nvidia-cuda-toolkit \
    software-properties-common

add-apt-repository -y ppa:deadsnakes/ppa
add-apt-repository -y ppa:ubuntu-toolchain-r/test
apt-get update
apt-get install -y software-properties-common lsb-release
apt-key adv --fetch-keys https://apt.kitware.com/keys/kitware-archive-latest.asc
apt-add-repository -y "deb https://apt.kitware.com/ubuntu/ $(lsb_release -cs) main"
apt-get update
apt-get install -y cmake
apt-get install -y --no-install-recommends apt-utils git gdb pkg-config qt5-default libusb-1.0-0-dev wget software-properties-common
add-apt-repository -y ppa:ubuntu-toolchain-r/test
apt-get update
apt-get install -y g++ gcc libstdc++6
apt-get install -y --no-install-recommends build-essential cmake freeglut3-dev git g++ gcc libeigen3-dev libglew-dev libjpeg-dev libsuitesparse-dev libudev-dev libusb-1.0-0-dev unzip zlib1g-dev cython3 libfreetype6-dev python-setuptools python3-yaml curl vim net-tools
apt-get install -y python3.8 python3.8-dev
cd / && wget https://bootstrap.pypa.io/get-pip.py
python3 get-pip.py
ln -sf /usr/bin/python3.8 /usr/local/bin/python3
ln -sf /usr/bin/python3.8 /usr/bin/python3

cd / && wget https://download.blender.org/release/Blender3.3/blender-3.3.0-linux-x64.tar.xz
tar xvf blender-3.3.0-linux-x64.tar.xz && rm -rf blender-3.3.0-linux-x64.tar.xz
ln -s /blender-3.3.0-linux-x64/blender /usr/bin/blender

cd / && wget https://files.pythonhosted.org/packages/c2/dc/6be133f92213a2e70b9196902c0a1a8a9f960042e2983173ef9b77cdc5c4/transformations-2021.6.6.tar.gz
tar xvzf transformations-2021.6.6.tar.gz
cp transformations-2021.6.6/transformations/transformations.py /blender-3.3.0-linux-x64/3.3/python/lib/python3.10/site-packages/










# Let's have a custom PS1 to help people realise in which container they are
# working.
CUSTOM_ENV=/.singularity.d/env/99-zz_custom_env.sh
cat >$CUSTOM_ENV <<EOF
#!/bin/bash
PS1="[se3track] Singularity> \w \$ "
EOF
chmod 755 $CUSTOM_ENV
