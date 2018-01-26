#!/bin/bash

for comp in gvfb minigui-res minigui mg-samples mgutils mgplus mgncs mgncs4touch; do
    git clone git@github.com:VincentWei/$comp.git
done
