#!/bin/bash

cd gvfb
git pull
cd ..

for comp in minigui-res mg-samples minigui mgutils mgplus mgeff mgncs mgncs4touch mg-tools cell-phone-ux-demo; do
    echo Updating $comp
    cd $comp
    git pull
    cd ..
done
