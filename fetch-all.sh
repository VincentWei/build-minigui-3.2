#!/bin/bash

if [ ! -f myconfig.sh ]; then
    cp config.sh myconfig.sh
fi

source myconfig.sh

for comp in minigui-res minigui mg-samples mgutils mgplus mgeff mgncs mgncs4touch cell-phone-ux-demo; do
    git clone $REPO_URL/$comp.git -b rel-3-2
done

# The software are always in master branch
for comp in gvfb mg-demos mg-tools; do
    git clone $REPO_URL/$comp.git
done

