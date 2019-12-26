# Notes on how I found/installed the Ubuntu Mate for raspberry pi

It's been awhile so I'm just including the link that I started with and will fill more details if I every repeat the steps with Ubuntu Mate image.
* Start here - https://ubuntu-mate.org/raspberry-pi/


# Alternative - Add mate desktop to the Ubuntu Server OS
1. Start at [HowTo_ubuntu_server_arm64](HowTo_ubuntu_server_arm64.md) for installing the ARM64 Ubuntu Server
1. run the code below - _note_: it has been awhile since I tried this and I'm not sure if I got all the bugs worked out when I did. It may be better to start with a fresh install if all you want is the ubuntu mate desktop
    ```
    sudo add-apt-repository ppa:ubuntu-mate-dev/xenial-mate
    sudo apt-get update
    sudo apt-get upgrade
    sudo apt-get install mate-dock-applet
    ```
