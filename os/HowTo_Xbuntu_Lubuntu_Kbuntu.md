# Notes on how I found/installed the Xbuntu, Lubuntu or Kbuntu raspberry pi

I downloaded my os images from the ubuntu raspberry pi flavor maker, but I can't find the link anymore.

# Alternative - Add either desktop to the Ubuntu Server OS
1. Start at [HowTo_ubuntu_server_arm64](HowTo_ubuntu_server_arm64.md) for installing the ARM64 Ubuntu Server
1. add the desktop of your choice - _note:_ I am not sure if there is any configuration booking that is required if you want the option of multiple desktop environments
    ```
    sudo apt-get install xubuntu-desktop  # or
    sudo apt-get install lubuntu-desktop  # or
    sudo apt-get install kubuntu-desktop  # etc
    ```


# light versions
* light versions of the desktop environments (light as in size of downloaded material, not neccessarily runtime resources) can be installed instead which do not have the full list of convenience packages included - _I recommend installing the full packages that are referenced above_
    * for LXDE:

        ```
        sudo apt-get lxde-cor
        ```
    * for xfce4:
        ```
        # for xfce
        sudo apt-get install xfce4
        # for goodies (maybe)
        sudo apt-get install xfce4-goodies
        ```
    * To start VNCViewer with a specific desktop:
        1. Install X, VPN programs and start VNC to create a config file

            ```
            $ apt-get install xorg tightvncserver

            $ tightvncserver :1
            ```

        1. Then stop VNC and open the config file to start session with the desired desktop environment

            ```
            $ tightvncserver -kill :1

            $ nano ~/.vnc/xstartup
            ```

            * for LXDE add this to the bottom of the config file

                ```
                # For the LXDE desktop
                lxterminal &
                /usr/bin/lxsession -s LXDE &
                ```
            * for XFCE add this to the bottom of the config file

                ```
                # For the XFCE desktop
                startxfce4 &
                ```
        1. Restart VNC

            ```
            $ tightvncserver :1
            ```
