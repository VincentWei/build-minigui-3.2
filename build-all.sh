#!/bin/bash

runmode=ths
nr_jobs=8

cd minigui
./autogen.sh; ./configure --enable-develmode --with-runmode=$runmode
make -j$nr_jobs; sudo make install
cd ..

for comp in mgutils mgplus mgeff mgncs mg-samples mgncs4touch cell-phone-ux-demo; do
    cd $comp
    ./autogen.sh; ./configure --enable-develmode
    make -j$nr_jobs; sudo make install
    cd ..
done
