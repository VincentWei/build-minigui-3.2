#!/bin/bash

git_branch='rel-3-2'

cd gvfb
git pull origin master
cd ..

for comp in minigui-res mg-samples minigui mgutils mgplus mgeff mgncs mgncs4touch cell-phone-ux-demo; do
    echo Updating $comp from remote $git_branch
    cd $comp
    git pull origin $git_branch
    git checkout $git_branch
    cd ..
done
