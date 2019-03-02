#!/bin/bash

sed -ie "s|echo.*|echo $(date)|g" buildspec.yml
