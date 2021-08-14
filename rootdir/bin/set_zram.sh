#! /vendor/bin/sh

ZMEM=$(cat /proc/meminfo | grep MemTotal | awk  '{print $2}')

# Setup ZRAM to 50% of memtotal
let 'ZMEM=((ZMEM/100)*50)*1024'
echo 1 > /sys/block/zram0/reset
echo 'zstd' > /sys/block/zram0/comp_algorithm
sleep 0.5
echo $ZMEM > /sys/block/zram0/disksize
sleep 0.5
mkswap /dev/block/zram0
sleep 0.5
swapon -d /dev/block/zram0
echo 100 > /proc/sys/vm/swappiness
