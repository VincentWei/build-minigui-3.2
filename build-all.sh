#!/bin/bash

cd minigui
./autogen.sh; ./configure --enable-develmode --with-runmode=sa
make; sudo make install
cd ..

for comp in 'mgutils mgplus mgncs'; do
    cd $comp
    ./autogen.sh; ./configure --enable-develmode
    make; sudo make install
    cd ..
done
