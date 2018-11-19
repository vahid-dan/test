#!/bin/sh

echo $SNAP
echo $SNAP_DATA
echo $SNAP_USER_DATA

sudo echo "sudo echo successfull"

$SNAP/bin/ovs-vsctl add-br snapipoptest0 2>&1 | tee -a $SNAP_USER_DATA/ovs.log
ovs-vsctl add-br snapipoptest1 2>&1 | tee -a $SNAP_USER_DATA/ovs.log
which ovs-vsctl

cd $SNAP
python3 -m controller.Controller -c $SNAP_USER_DATA/config.json
