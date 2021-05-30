#!/bin/bash
#
# Author: p hoogeveen
# Aka   : x0xr00t
# Build : 0000000
# Name  : asm


echo "    ▄▄▄·     .▄▄ ·     • ▌ ▄ ·.             "           
echo "   ▐█ ▀█     ▐█ ▀.     ·██ ▐███▪           "           
echo "   ▄█▀▀█     ▄▀▀▀█▄    ▐█ ▌▐▌▐█·          "            
echo "   ▐█ ▪▐▌    ▐█▄▪▐█    ██ ██▌▐█▌                         "
echo "    ▀  ▀      ▀▀▀▀     ▀▀  █▪▀▀▀                         "
echo "    ▄▄▄· ▄• ▄▌▄▄▄▄▄      • ▌ ▄ ·.  ▄▄▄· ▄▄▄▄▄▄▄▄ .·▄▄▄▄  "
echo "   ▐█ ▀█ █▪██▌•██  ▪     ·██ ▐███▪▐█ ▀█ •██  ▀▄.▀·██▪ ██ "
echo "   ▄█▀▀█ █▌▐█▌ ▐█.▪ ▄█▀▄ ▐█ ▌▐▌▐█·▄█▀▀█  ▐█.▪▐▀▀▪▄▐█· ▐█▌"
echo "   ▐█ ▪▐▌▐█▄█▌ ▐█▌·▐█▌.▐▌██ ██▌▐█▌▐█ ▪▐▌ ▐█▌·▐█▄▄▌██. ██ "
echo "    ▀  ▀  ▀▀▀  ▀▀▀  ▀█▄▀▪▀▀  █▪▀▀▀ ▀  ▀  ▀▀▀  ▀▀▀ ▀▀▀▀▀• "
echo "   • ▌ ▄ ·.  ▄▄▄· ▄▄▌  ▄▄▌ ▐ ▄▌ ▄▄▄· ▄▄▄  ▄▄▄ .          "
echo "   ·██ ▐███▪▐█ ▀█ ██•  ██· █▌▐█▐█ ▀█ ▀▄ █·▀▄.▀·          "
echo "   ▐█ ▌▐▌▐█·▄█▀▀█ ██▪  ██▪▐█▐▐▌▄█▀▀█ ▐▀▀▄ ▐▀▀▪▄          "
echo "   ██ ██▌▐█▌▐█ ▪▐▌▐█▌▐▌▐█▌██▐█▌▐█ ▪▐▌▐█•█▌▐█▄▄▌          "
echo "   ▀▀  █▪▀▀▀ ▀  ▀ .▀▀▀  ▀▀▀▀ ▀▪ ▀  ▀ .▀  ▀ ▀▀▀           "
echo "   .▄▄ ·  ▄▄·  ▄▄▄·  ▐ ▄  ▐ ▄ ▄▄▄ .▄▄▄                   "
echo "   ▐█ ▀. ▐█ ▌▪▐█ ▀█ •█▌▐█•█▌▐█▀▄.▀·▀▄ █·                 "
echo "   ▄▀▀▀█▄██ ▄▄▄█▀▀█ ▐█▐▐▌▐█▐▐▌▐▀▀▪▄▐▀▀▄                  "
echo "   ▐█▄▪▐█▐███▌▐█ ▪▐▌██▐█▌██▐█▌▐█▄▄▌▐█•█▌                 "
echo "    ▀▀▀▀ ·▀▀▀  ▀  ▀ ▀▀ █▪▀▀ █▪ ▀▀▀ .▀  ▀                 "
 
read -p "Please Enter the system user: " user
asm-scan=/home/$user/asm-scan/

mkdir $ams-scan
cd asm-scan 
exec lynis audit system 2>&1 | tee lyn-ms.txt 
while ps axg | grep -vw grep | grep -w lynis > /dev/null; do sleep 1; done
sleep 30
exec chkrootkit 2>&1 | tee chrootkit-ms.tx
while ps axg | grep -vw grep | grep -w chkrootkit > /dev/null; do sleep 1; done
sleep 30
exec rkhunter -c 2>&1 | tee rkhunter-ms.txt
while ps axg | grep -vw grep | grep -w rkhunter > /dev/null; do sleep 1; done
sleep 30
exec  clamscan -r  / 2>&1 | tee clam-ms.txt
while ps axg | grep -vw grep | grep -w clamscan > /dev/null; do sleep 1; done
sleep 10
exec  clamscan -r -i / 2>&1 | tee clam-ms.txt
while ps axg | grep -vw grep | grep -w clamscan > /dev/null; do sleep 1; done


declare file="lyn-ms.txt"
declare regex1="\s+$f\s+"
declare regex1="\s+cf\s+"
declare file_content=$( cat "${file}" )
if [[ " $file_content " =~ $regex ]] 
    then
        exec lynis audit system 2>&1 | tee lyn-ms.txt | egrep -i '^(found|warning)' lyn-ms.txt 
        while ps axg | grep -vw grep | grep -w lynis > /dev/null; do sleep 1; done
        sleep 20   
    else
        exec lynis audit system 2>&1 | tee lyn-ms.txt | egrep -i '^(not found|no infection)' lyn-ms.txt 
        while ps axg | grep -vw grep | grep -w lynis > /dev/null; do sleep 1; done
        sleep 20
    elif
        exec chkrootkit 2>&1 | tee chrootkit-ms.tx
        while ps axg | grep -vw grep | grep -w chkrootkit > /dev/null; do sleep 1; done
        sleep 20
    else
        exec chkrootkit 2>&1 | tee chrootkit-ms.tx
        while ps axg | grep -vw grep | grep -w chkrootkit > /dev/null; do sleep 1; done
        sleep 20
    elif
        exec rkhunter -c 2>&1 | tee rkhunter-ms.txt
        while ps axg | grep -vw grep | grep -w rkhunter > /dev/null; do sleep 1; done
        sleep 20  
    else
        exec rkhunter -c 2>&1 | tee rkhunter-ms.txt
        while ps axg | grep -vw grep | grep -w rkhunter > /dev/null; do sleep 1; done
        sleep 20
    elif
    
fi
