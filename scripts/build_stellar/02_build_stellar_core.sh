# get to ~/src/stellar-core and checkout the master branch creating the directories if needed
cd ~
if [ ! -d "./src" ]
then
    mkdir src
fi
cd src
if [ ! -d "./stellar-core" ]
then
    git clone https://github.com/stellar/stellar-core.git
fi
cd stellar-core

# setup git modules
git submodule init
git submodule update

# build stellar-core
./autogen.sh
./configure
# for now only compile on 1 thread to concentrate RAM resources
make -j1

# test
make check

# install
make install



# for building with clang and libc++
# install libc++ headers
#sudo apt-get install libc++-dev libc++abi-dev
#export CC=clang-5.0
#export CXX=clang++-5.0
#export CFLAGS="-O3 -g1 -fno-omit-frame-pointer"
#export CXXFLAGS="$CFLAGS -stdlib=libc++ -isystem /usr/include/libcxxabi"
#./autogen.sh && ./configure && make -j1
