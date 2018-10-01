#!/bin/sh

cd $SNAP
pwd
python3 -m controller.Controller -c ./config/ipop-config.json
