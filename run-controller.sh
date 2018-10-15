#!/bin/sh

cd $SNAP
pwd
touch /home/vd/write-access-test
python3 -m controller.Controller -c /home/vd/Desktop/config.json
