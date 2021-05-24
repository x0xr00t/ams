#!/bin/bash
#
#
#
#
#


GREEN_TEXT="\033[32m"
RED_TEXT="\033[31m"

if [ "$EUID" -ne 0 ]
  then echo -e "Please use ${RED_TEXT}root${GREEN_TEXT}for this installer"
  exit
fi




echo "{i}-------------------------------------{i}"
echo "  Note: Ok We Starting.........   "
echo "  Don't Be A Dummy And Cancel........   "
echo "  Don't Close The Terinal .......   "
echo "  Proceeding......Be Patiant....."
echo "  Installing......Apt Sources....."
echo "{i}-------------------------------------{i}"
lyns="lynis"
if [ -x /bin/lynis ]; then
    echo "{v}It appears that $lyns exists :D"
else
    echo "{x} Arggg...It appears that $lyns does not exist, we will install it."
    cd /opt/
    wget https://downloads.cisofy.com/lynis/lynis-2.6.6.tar.gz
    tar xvzf lynis-2.6.6.tar.gz
    mv lynis /usr/local/
    ln -s /usr/local/lynis/lynis /usr/local/bin/lynis
fi
chk="chkrootkit"
if [ -x /bin/chkrootkit ]; then
    echo "{v}It appears that $chk exists :D"
else
    echo "{x} Arggg...It appears that $chk does not exist, we will install it."
    sudo apt install chkrootkit -y
fi
rkh="rkhunter"
if [ -x /bin/sqlplus ]; then
    echo "{v}It appears that $rkh exists :D"
else
    echo "{x} Arggg...It appears that $rkh does not exist, we will install it."
    sudo apt install rkhunter -y
fi
clmv="rkhunter"
if [ -x /bin/clamav ]; then 
    echo "{v}It appears that $clmv exists :D"
else
    echo "{x} Arggg...It appears that $clmv does not exist, we will install it."
    sudo apt install clamav -y
fi

