#!/usr/bin/env bash

NODEJS_VER=$1
NODEJS_INS=$2

. ~/.nvm/nvm.sh

if [ ! -f $NODEJS_INS ]; then
  nvm install $NODEJS_VER
  nvm use $NODEJS_VER
  nvm alias default $NODEJS_VER
  touch $NODEJS_INS
  nvm current | tee ~/.node-version
fi
