#!/bin/bash

for comp in gvfb minigui-res minigui mg-samples mgutils mgplus mgeff mgncs mgncs4touch cell-phone-ux-demo; do
    git clone git@github.com:VincentWei/$comp.git -b rel-3-2
done
