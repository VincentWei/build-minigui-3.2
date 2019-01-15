#!/bin/bash

echo MAKE TARBALLS OF GVFB
cd gvfb
make package_source
mv *.tar.gz ..
cd ..

echo MAKE TARBALLS OF MINIGUI
for comp in minigui minigui-res mgutils mgplus mgeff mgncs mg-samples mgncs4touch cell-phone-ux-demo; do
    cd $comp
    make dist
    mv *.tar.gz ..
    cd ..
done

