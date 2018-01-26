#!/bin/bash

runmode=procs

cd minigui
./autogen.sh; ./configure --enable-develmode --with-runmode=$runmode
make; sudo make install
cd ..

for comp in mg-samples mgutils mgplus mgeff mgncs mgncs4touch; do
    cd $comp
    ./autogen.sh; ./configure --enable-develmode
    make; sudo make install
    cd ..
done
