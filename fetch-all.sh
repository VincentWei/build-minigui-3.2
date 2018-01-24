#!/bin/bash

git_branch='64b'

for comp in gvfb minigui mgutils mgplus mgncs mgncs4touch; do
    git clone git@github.com:VincentWei/$comp.git
    cd $comp
    git branch $git_branch; git checkout $git_branch
    git pull origin $git_branch
done
