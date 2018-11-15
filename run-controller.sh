#!/bin/sh

echo $SNAP
echo $SNAP_DATA
echo $SNAP_USER_DATA

sudo echo "sudo echo successfull"

sudo $SNAP/bin/ovs-vsctl add-br snapipop00 2>&1 | tee -a $SNAP_USER_DATA/ovs.log
$SNAP/bin/ovs-vsctl add-br snapipop11 2>&1 | tee -a $SNAP_USER_DATA/ovs.log
sudo ovs-vsctl add-br snapipop22 2>&1 | tee -a $SNAP_USER_DATA/ovs.log
ovs-vsctl add-br snapipop33 2>&1 | tee -a $SNAP_USER_DATA/ovs.log
which ovs-vsctl

cd $SNAP
python3 -m controller.Controller -c $SNAP_USER_DATA/config.json
