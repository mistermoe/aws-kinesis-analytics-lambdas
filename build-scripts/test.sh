#! /bin/bash

PREV_TAG=$(git describe --abbrev=0 --tags `git rev-list --tags --skip=1 --max-count=1`)
echo "previous tag -> $PREV_TAG"
CHANGED_FILES=$(git diff --name-only $PREV_TAG HEAD)
echo "changed files -> $CHANGED_FILES"