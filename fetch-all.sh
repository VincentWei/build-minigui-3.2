#!/bin/bash

for comp in gvfb minigui-res minigui mg-samples mgutils mgplus mgeff mgncs mgncs4touch cell-phone-ux-demo; do
    git clone https://github.com/VincentWei/$comp.git
done
