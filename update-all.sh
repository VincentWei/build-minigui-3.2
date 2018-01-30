#!/bin/bash

git_branch='master'

for comp in gvfb minigui-res mg-samples minigui mgutils mgplus mgeff mgncs mgncs4touch cell-phone-ux-demo; do
    echo Updating $comp from remote $git_branch
    cd $comp
    git pull origin $git_branch
    cd ..
done
