#!/bin/sh

echo $SNAP
echo $SNAP_DATA
echo $SNAP_USER_DATA

sudo echo "sudo echo successfull"

sudo $SNAP/bin/ovs-vsctl add-br snapipop4 2>&1 | tee -a $SNAP_USER_DATA/ovs.log
$SNAP/bin/ovs-vsctl add-br snapipop5 2>&1 | tee -a $SNAP_USER_DATA/ovs.log
sudo ovs-vsctl add-br snapipop6 2>&1 | tee -a $SNAP_USER_DATA/ovs.log
ovs-vsctl add-br snapipop7 2>&1 | tee -a $SNAP_USER_DATA/ovs.log
which ovs-vsctl

cd $SNAP
python3 -m controller.Controller -c $SNAP_USER_DATA/config.json
