#!/bin/sh

cd $SNAP
python3 -m controller.Controller -c $SNAP_USER_DATA/config.json
