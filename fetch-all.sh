#!/bin/bash

$git_branch='origin 64b'

for comp in gvfb minigui mgutils mgplus mgncs; do
    git clone git@github.com:VincentWei/$comp.git
done
