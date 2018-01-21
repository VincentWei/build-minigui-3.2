#!/bin/bash

git_branch='origin 64b'

for comp in minigui mgutils mgplus mgncs; do
    echo Updating $comp from remote $git_branch
    cd $comp
    git pull $git_branch
    cd ..
done
