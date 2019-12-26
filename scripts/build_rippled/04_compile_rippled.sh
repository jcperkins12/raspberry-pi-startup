# source the .profile settings in case the user updated it
#  to reflect the new boost library
source ~/.profile

# Use CMake to build a rippled binary executable from source code
mkdir my_build
cd my_build
cmake -DCMAKE_BUILD_TYPE=Release ..
# Only use 1 processor at first to concentrate memory resources onto the one processor
cmake --build . -- -j 1

# test the resulting server
./rippled -u
