# compile boost to the users lib directory inside a general boost directory
cd /usr/local
if [ ! -d "./boost" ]
then
    mkdir boost
    cd boost
fi

# build
wget https://dl.bintray.com/boostorg/release/1.71.0/source/boost_1_71_0.tar.gz
tar -xzf boost_1_71_0.tar.gz
cd boost_1_71_0
./bootstrap.sh
./b2 headers
# for now limit to 1 processor to concentrate memory resources onto one process
# ./b2 -j<Num Parallel>
./b2 -j1

# it is advisable to add the following line to the users ~/.profile script
#  'export BOOST_ROOT=/usr/local/boost//boost_1_71_0'
echo "it is advisable to add the following line to the users ~/.profile script -- 'export BOOST_ROOT=/usr/local/boost/boost_1_71_0'"
