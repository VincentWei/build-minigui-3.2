#!/bin/bash

runmode=ths

cd minigui
./autogen.sh; ./configure --enable-develmode --with-runmode=$runmode
make; sudo make install
cd ..

for comp in mgutils mgplus mgeff mgncs mg-samples mgncs4touch cell-phone-ux-demo; do
    cd $comp
    ./autogen.sh; ./configure --enable-develmode
    make; sudo make install
    cd ..
done
