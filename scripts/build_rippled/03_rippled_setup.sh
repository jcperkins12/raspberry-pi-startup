# get to ~/src/rippled and checkout the master branch creating the directories if needed
cd ~
if [ ! -d "./src" ]
then
    mkdir src
fi
cd src
if [ ! -d "./rippled" ]
then
    git clone https://github.com/ripple/rippled.git
fi
cd rippled
git checkout master
