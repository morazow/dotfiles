#!/bin/sh

## Install consolas font on linux.
# Found this on the internet.
set -e
set -x
mkdir temp
cd temp
wget http://download.microsoft.com/download/E/6/7/E675FFFC-2A6D-4AB0-B3EB-27C9F8C8F696/PowerPointViewer.exe
cabextract -L -F ppviewer.cab PowerPointViewer.exe
cabextract ppviewer.cab
cp *.TTF ~/.fonts/
cd ..
rm -rf temp/

## After this open, font-manager 
## and enable user fonts
