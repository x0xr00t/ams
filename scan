
#!/bin/bash
#
# Author: p hoogeveen
# Aka   : x0xr00t
# Build : 0000000
# Name  : scan

exec lynis audit system &
while ps axg | grep -vw grep | grep -w lynis > /dev/null; do sleep 1; done
sleep 30
exec chkrootkit &
while ps axg | grep -vw grep | grep -w chkrootkit > /dev/null; do sleep 1; done
sleep 30
exec rkhunter -c &
while ps axg | grep -vw grep | grep -w rkhunter > /dev/null; do sleep 1; done
sleep 30
exec  clamscan -r  / &
while ps axg | grep -vw grep | grep -w clamav > /dev/null; do sleep 1; done
sleep 10
exec  clamscan -r -i / &
while ps axg | grep -vw grep | grep -w clamav > /dev/null; do sleep 1; done
