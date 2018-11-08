#!/bin/sh

echo $SNAP
echo $SNAP_DATA
echo $SNAP_USER_DATA

sudo echo "sudo echo successfull"

ifconfig

sudo $SNAP/usr/bin/ovs-vsctl add-br snapipop 2>&1 | tee $SNAP_USER_DATA/ovs.log
sudo usr/bin/ovs-vsctl add-br snapipop 2>&1 | tee -a $SNAP_USER_DATA/ovs.log
sudo ovs-vsctl add-br snapipop 2>&1 | tee -a $SNAP_USER_DATA/ovs.log
which ovs-vsctl

cd $SNAP
python3 -m controller.Controller -c $SNAP_USER_DATA/config.json
