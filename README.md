# OPi-Zero2-OPPatcher
# <font color='red'>**IF YOU NEED COMPILE OTHER TARGET,DO NOT APPLY IT!!!**</font>
Simpily replace target,uboot and mac80211 files to support h616 cpu and other staff.  
Code is highly WIP and may have untested bugs,if you don't have the ability of debugging,  
don't use.(cuz i don't have much time to explain how to make it works).
### Feature:
- usb&ethernet phy support from https://github.com/armbian/build.
- support usb port on 13-pin connector.
- 5Ghz AW859A AP runs at 11ac mode.
## Known Issue(For this branch):
- randomized usb port sequence due to load delay
### Package Version:
- 6.1.38 kernel
- 6.1.24 mac80211
- 2022.10 uboot

## How to use:
- **Build from source code(recommended)**

  1.git clone this repo to your fresh openwrt build system.  
  (use a just-downloaded buildroot is recommended)  
  2.execute the replace.sh script  
  3.you are all set,enjoy it  

- **Use pre-compiled image with some software on it**

  You can just download the builds here.  
  https://github.com/Kazagumo/op-local/actions/workflows/blank.yml  
  Those Firmware will automatically bring up the wifi,so no wired ethernet  
  connection needed. the default wireless settings have no encryption,  
  do remember to change password and change wireless settings ASAP.  
