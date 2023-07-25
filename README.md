# OPi-Zero2-OPPatcher
# <font color='red'>**IF YOU NEED COMPILE OTHER TARGET,DO NOT APPLY IT!!!**</font>
Simpily replace target,uboot and mac80211 files to support h616 cpu and other staff.  
Code is highly WIP and may have untested bugs,if you hate uncertainty,do not use.
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
**1.git clone this repo to your openwrt build system.**  
**2.execute the replace.sh script**  
**3.you are all set,enjoy it**
