#!/bin/sh

cd $SNAP
pwd
touch /home/vd/write-access-test
touch /snap/ipopvpn/x1/write-access-test
python3 -m controller.Controller -c /home/vd/Desktop/config.json
