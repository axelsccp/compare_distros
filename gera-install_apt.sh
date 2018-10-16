#!/bin/bash

text=$@
#tempdir=$(mktemp -d /tmp/tmp.XXXXXXXX)

rm -f /home/ubuntu/compara_distros/ansible/apt-install

#recebe o repositório a clonar
echo "apt-get update -y"  >> /home/ubuntu/compara_distros/ansible/apt-install
echo "apt-get upgrade -y"  >> /home/ubuntu/compara_distros/ansible/apt-install

if [ $# -ne 1 ]; then
  exit 0
fi



for f in $@; do
        echo "apt-get install -y $f" >> /home/ubuntu/compara_distros/ansible/apt-install 
done

chmod +x /home/ubuntu/compara_distros/ansible/apt-install
