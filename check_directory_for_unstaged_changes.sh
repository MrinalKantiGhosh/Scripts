#!/bin/bash

REPOSITORY_LIST=($(ls -d */))

for REPOSITORY in ${REPOSITORY_LIST[@]} ; do
    cd ${REPOSITORY}
    if [[ -d ".git" ]]; then
      if [[  ! $(git status | grep "nothing to commit, working tree clean") ]]; then
        echo ${REPOSITORY}
      fi
    fi
    cd ..
done



