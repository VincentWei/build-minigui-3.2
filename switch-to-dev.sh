#!/bin/bash

git_branch='dev-3-4'

cd gvfb
git pull origin master
cd ..

for comp in minigui-res mg-samples minigui mgutils mgplus mgeff mgncs mgncs4touch cell-phone-ux-demo; do
    echo Updating $comp from remote $git_branch
    cd $comp
    git pull origin $git_branch
    git checkout dev-3-4
    cd ..
done
