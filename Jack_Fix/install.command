#!/bin/bash

#set -x

clear
 
echo "This Script Requires Administrator Privileges!"
sudo mount -uw /;killall Finder
cd ~/Desktop/Jack_Fix

function progressIndicator(){
echo -ne '[..........................] (0%)\r'
sleep 0.05
echo -ne '[#.........................] (5%)\r'
sleep 0.03
echo -ne '[##........................] (10%)\r'
sleep 0.03
echo -ne '[###.......................] (15%)\r'
sleep 0.05
echo -ne '[####......................] (20%)\r'
sleep 0.05
echo -ne '[#####.....................] (25%)\r'
sleep 0.03
echo -ne '[#####.....................] (25%)\r'
sleep 0.03
echo -ne '[######....................] (30%)\r'
sleep 0.03
echo -ne '[#######...................] (35%)\r'
sleep 0.03
echo -ne '[########..................] (40%)\r'
sleep 0.03
echo -ne '[#########.................] (45%)\r'
sleep 0.03
echo -ne '[##########................] (50%)\r'
sleep 0.03
echo -ne '[###########...............] (55%)\r'
sleep 0.03
echo -ne '[[############..............] (60%)\r'
sleep 0.03
echo -ne '[#############.............] (65%)\r'
sleep 0.03
echo -ne '[###############...........] (70%)\r'
sleep 0.03
echo -ne '[#################.........] (75%)\r'
sleep 0.03
echo -ne '[####################......] (80%)\r'
sleep 0.03
echo -ne '[#######################...] (85%)\r'
sleep 0.03
echo -ne '[##########################] (100%)\r'
echo -ne '\n'
}

sudo cp JackFix /usr/bin
sudo chmod 755 /usr/bin/JackFix
sudo chown root:wheel /usr/bin/JackFix
echo "Install JackFix:"
progressIndicator
echo -ne "\n"


sudo cp hda-verb /usr/bin
sudo chmod 755 /usr/bin/hda-verb
sudo chown root:wheel /usr/bin/hda-verb
echo "Install hda-verb:"
progressIndicator
echo -ne "\n"


sudo cp jack.fix.plist /Library/LaunchAgents/
sudo chmod 644 /Library/LaunchAgents/jack.fix.plist
sudo chown root:wheel /Library/LaunchAgents/jack.fix.plist
sudo launchctl load /Library/LaunchAgents/jack.fix.plist
echo "Install jack.fix.plist:"
progressIndicator
echo -ne "\n"


defaultColor="\033[0m"
red="\033[0;31m"

echo -e "$red Successfully installed, reboot now to take effect! $defaultColor"
afplay /System/Library/Sounds/Glass.aiff

exit 0
