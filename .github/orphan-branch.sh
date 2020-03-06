#!/bin/bash
set -e

if [ `git branch -r | grep origin/$1` ] ; then
    echo "Branch ${1} exists already. Checking out..."
    git checkout --track origin/$1
else
    echo "Branch named ${1} does not exist yet. Creating orphan..."
    git checkout --orphan $1
fi
exit 0