#!/bin/bash

runmode=ths

cd minigui
./autogen.sh; ./configure --enable-develmode --with-runmode=$runmode
make; sudo make install
cd ..

for comp in mg-samples mgutils mgplus mgeff mgncs mgncs4touch cell-phone-ux-demo; do
    cd $comp
    ./autogen.sh; ./configure --enable-develmode
    make; sudo make install
    cd ..
done
