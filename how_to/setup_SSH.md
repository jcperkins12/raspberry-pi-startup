# How To Setup SSH on the Raspberry Pi

good documentation located at https://www.raspberrypi.org/documentation/remote-access/ssh/

As of the November 2016 release, Raspbian has the SSH server disabled by default.

## Enabled manually from the desktop
1. Launch Raspberry Pi Configuration from the Preferences menu
1. Navigate to the Interfaces tab
1. Select Enabled next to SSH
1. Click OK


## Enable manually with raspi-config in the terminal:
1. Enter sudo raspi-config in a terminal window
1. Select Interfacing Options
1. Navigate to and select SSH
1. Choose Yes
1. Select Ok
1. Choose Finish


## Enable from terminal with systemctl

    sudo systemctl enable ssh
    sudo systemctl start ssh


## Enable on headless client with file loaded before OS install
For headless setup, SSH can be enabled by placing a file named ssh, without any extension, onto the boot partition of the SD card from another computer. When the Pi boots, it looks for the ssh file. If it is found, SSH is enabled and the file is deleted. The content of the file does not matter; it could contain text, or nothing at all.

    cd /Path/To/boot
    touch ssh
