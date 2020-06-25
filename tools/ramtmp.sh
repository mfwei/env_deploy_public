#!/bin/sh
#RamDisk tmp

mkdir /dev/shm/tmp
chmod 1777 /dev/shm/tmp
mount --bind /dev/shm/tmp /tmp
