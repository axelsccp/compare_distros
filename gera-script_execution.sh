#!/bin/bash

text=$@
#tempdir=$(mktemp -d /tmp/tmp.XXXXXXXX)

rm -f /home/ubuntu/compara_distros/ansible/script_execution

#recebe o repositório a clonar

if [ $# -ne 1 ]; then
  exit 0
fi



echo "#!/bin/bash"  >> /home/ubuntu/compara_distros/ansible/script_execution

for f in $@; do
        var=`echo $f | awk -F"/" '{ print $NF }'`
        echo $var
        echo "sh /root/$var" >> /home/ubuntu/compara_distros/ansible/script_execution
done

chmod +x /home/ubuntu/compara_distros/ansible/script_execution
