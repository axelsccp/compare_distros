#!/bin/bash

ip route get 1.1.1.1 | awk '{print $NF; exit}' > /home/ubuntu/compara_distros/ansible/machineip
