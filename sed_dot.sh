#!/bin/bash

sed -i 's/\.//g' /home/ubuntu/compara_distros/ansible/tempo_execucao_tmp/* 
sed -i '/Command exited with non-zero status 1/d' /home/ubuntu/compara_distros/ansible/tempo_execucao_tmp/* 
