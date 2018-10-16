#!/bin/bash

dd if=/dev/zero of=file.txt count=512 bs=524288
rm file.txt
dd if=/dev/zero of=file.txt count=1024 bs=524288
rm file.txt
dd if=/dev/zero of=file.txt count=2048 bs=524288
rm file.txt
dd if=/dev/zero of=file.txt count=512 bs=1048576
rm file.txt
dd if=/dev/zero of=file.txt count=1024 bs=1048576
rm file.txt
dd if=/dev/zero of=file.txt count=2048 bs=1048576
rm file.txt
dd if=/dev/zero of=file.txt count=512 bs=2097152
rm file.txt
dd if=/dev/zero of=file.txt count=1024 bs=2097152
rm file.txt
dd if=/dev/zero of=file.txt count=2048 bs=2097152
rm file.txt
