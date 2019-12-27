# NOTE: newer version of the compilers are not
#    provided by stock distributions
#    and are provided by the /test toolchain
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo apt-get update

# common packages
sudo apt-get install git build-essential pkg-config autoconf automake libtool bison flex libpq-dev parallel

# if using g++ or building with libstdc++
sudo apt-get install gcc-6 g++-6 cpp-6

# if using clang
#sudo apt-get install clang-5.0
# clang with libstdc++
#sudo apt-get install gcc-6

# optional: pandoc (to compile man pages)
sudo apt-get install pandoc
