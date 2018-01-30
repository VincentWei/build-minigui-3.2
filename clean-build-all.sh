#!/bin/bash

runmode=ths

cd minigui
./autogen.sh; ./configure --enable-develmode --with-runmode=$runmode
sudo make uninstall; make clean; make; sudo make install
cd ..

for comp in mg-samples mgutils mgplus mgeff mgncs mgncs4touch cell-phone-ux-demo cell-phone-ux-demo; do
    cd $comp
    ./autogen.sh; ./configure --enable-develmode
    sudo make uninstall; make clean; make; sudo make install
    cd ..
done
