#!/bin/bash

machineip=`cat /root/machineip`

if [ -e /etc/redhat-release ]
then
	dd if=/dev/zero bs=1M count=10 | nc -n $machineip 12345
else
	dd if=/dev/zero bs=1M count=10 | ncat -i0.001 $machineip 12345 || true
fi
