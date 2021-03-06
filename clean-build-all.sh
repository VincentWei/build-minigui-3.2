#!/bin/bash

if [ ! -f myconfig.sh ]; then
    cp config.sh myconfig.sh
fi

source myconfig.sh

runmode=$RUNMODE
nr_jobs=$NR_JOBS

echo UNINSTALL, MAKE, AND INSTALL MiniGUI FIRST...
cd minigui
./autogen.sh; ./configure --enable-develmode --with-runmode=$runmode
sudo make uninstall; make clean; make -j$nr_jobs; sudo make install
cd ..

echo UNINSTALL AND CLEAN OTHERS...
for comp in mgncs4touch mgncs mgeff mgplus mgutils; do
    cd $comp
    ./autogen.sh; ./configure --enable-develmode
    sudo make uninstall; make clean
    cd ..
done

echo MAKE AND INSTALL NOW...
for comp in mgutils mgplus mgeff mgncs mgncs4touch mg-tools mg-samples mg-demos cell-phone-ux-demo; do
    cd $comp
    make -j$nr_jobs; sudo make install
    cd ..
done
