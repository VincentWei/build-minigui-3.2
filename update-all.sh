#!/bin/bash

git_branch='64b'

for comp in minigui mgutils mgplus mgncs mgeff mgncs4touch; do
    echo Updating $comp from remote $git_branch
    cd $comp
    git pull origin $git_branch
    cd ..
done
