#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="vlc"

if dpkg -l | grep -q $PACKAGE; then
 echo "$PACKAGE is installed."
 dpkg -s $PACKAGE | grep -E 'Version|Maintainer|Description'
else
 echo "$PACKAGE is NOT installed."
fi

case $PACKAGE in
 vlc) echo "VLC: an open source media player capable of playing almost any format." ;;
 firefox) echo "Firefox: an open web browser developed by Mozilla." ;;
 mysql) echo "MySQL: a powerful open source relational database." ;;
 git) echo "Git: a distributed version control system created by Linus Torvalds." ;;
 *) echo "Unknown package." ;;
esac
