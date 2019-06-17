#!/bin/bash

# GVFB is always in master branch
git clone git@github.com:VincentWei/gvfb.git

for comp in minigui-res minigui mg-samples mgutils mgplus mgeff mgncs mgncs4touch cell-phone-ux-demo; do
    git clone git@github.com:VincentWei/$comp.git -b rel-3-2
done

# mg-tools is always in master branch
git clone git@github.com:VincentWei/mg-tools.git

