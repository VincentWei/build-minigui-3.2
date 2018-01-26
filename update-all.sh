#!/bin/bash

git_branch='master'

for comp in qvfb minigui-res mg-samples minigui mgutils mgplus mgncs mgeff mgncs4touch; do
    echo Updating $comp from remote $git_branch
    cd $comp
    git pull origin $git_branch
    cd ..
done
