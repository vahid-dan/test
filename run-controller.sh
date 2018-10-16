#!/bin/sh

echo $SNAP
echo $SNAP_DATA
echo $SNAP_USER_DATA

cd $SNAP
python3 -m controller.Controller -c $SNAP_USER_DATA/config.json
