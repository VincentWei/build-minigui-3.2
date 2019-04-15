#!/bin/bash

for comp in minigui-res mg-samples minigui mgutils mgplus mgeff mgncs mgncs4touch cell-phone-ux-demo; do
    echo "checking status in $comp"
    cd $comp
    git status
    cd ..
done
