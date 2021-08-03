#! /bin/bash

PREV_TAG=$(git describe --abbrev=0 --tags `git rev-list --tags --skip=1 --max-count=1`)
CHANGED_FILES=$(git diff --name-only $PREV_TAG HEAD)

echo $CHANGED_FILES
