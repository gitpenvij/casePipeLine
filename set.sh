#!/bin/bash

sed -i "s|echo.*|echo $(date)|g" buildspec.yml
git add --all .
git commit -am "${1}"

git push 
