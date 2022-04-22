#!/usr/bin/shell
cd /usr/bin
sudo rm gcc
sudo rm g++

# switch to gcc-4.8 
sudo ln -s gcc-4.8 gcc
sudo ln -s g++-4.8 g++

# switch to gcc-7
# sudo ln -s gcc-7 gcc
# sudo ln -s g++-7 g++

# switch to gcc-9
# sudo ln -s gcc-9 gcc
# sudo ln -s g++-9 g++

cd /root/workspace/mao
gcc --version
g++ --version