# Notes on how I found/installed the raspbian-nspawn-64 OS for Raspberry Pi

This is my current favorite OS for my raspberry pi because it seems to have a very light QTDE (formerly LXDE or xbuntu) desktop environment that is fully optimized for the raspberry pi (a.k.a rasbian) but it also has a x64 debian kernel that can run in the background to run x64 compiled programs in their own environment.

This gives me the flexability to run x64 programs while still staying in the relative comfort zone of an operating system like raspbian that doesn't expect it's users to be fully knowledgable of linux/unix styled operating systems.

The original source code can be found at https://github.com/sakaki-/raspbian-nspawn-64

Download with:
```
wget -c https://github.com/sakaki-/raspbian-nspawn-64/releases/download/v1.3.0/raspbian-nspawn-64.img.xz
wget -c https://github.com/sakaki-/raspbian-nspawn-64/releases/download/v1.3.0/raspbian-nspawn-64.img.xz.asc
```

if you like, verify the image using gpg (this step is optional)
```
gpg --keyserver pool.sks-keyservers.net --recv-key DDE76CEA
gpg --verify raspbian-nspawn-64.img.xz.asc raspbian-nspawn-64.img.xz
```
