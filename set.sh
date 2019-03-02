#!/bin/bash

sed -i "s|echo.*|echo $(date)|g" buildspec.yml
