#!/bin/bash

dd if=/dev/zero of=file.txt count=1024 bs=1048576
rm file.txt
