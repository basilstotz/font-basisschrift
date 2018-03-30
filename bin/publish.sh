#!/bin/sh

DEB=$(find . -name "${1}_1.0-1ubuntu*_all.deb")
echo $DEB
echo
echo "copying..."
scp $DEB root@archive.amxa.ch:/tmp/$DEB
echo "including..."
#ssh root@archive.amxa.ch includedeb ubuntu trusty $DEB
ssh root@archive.amxa.ch reprepro -b /srv/apt/debian includedeb trusty /tmp/$DEB \; rm /tmp/$DEB
echo "fertig"
