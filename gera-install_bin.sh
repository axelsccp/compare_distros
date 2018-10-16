#!/bin/bash

text=$@
#tempdir=$(mktemp -d /tmp/tmp.XXXXXXXX)

rm -f /home/ubuntu/compara_distros/ansible/yum-install

#recebe o repositório a clonar
echo "yum update -y"  >> /home/ubuntu/compara_distros/ansible/yum-install

if [ $# -ne 1 ]; then
  exit 0
fi



for f in $@; do
        echo "yum install -y $f" >> /home/ubuntu/compara_distros/ansible/yum-install 
done

chmod +x /home/ubuntu/compara_distros/ansible/yum-install
