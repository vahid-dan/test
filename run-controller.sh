#!/bin/sh

echo $SNAP
echo $SNAP_DATA
echo $SNAP_USER_DATA

sudo ovs-vsctl add-br snapipop 2>&1 | tee $SNAP_USER_DATA/ovs.log

cd $SNAP
python3 -m controller.Controller -c $SNAP_USER_DATA/config.json
