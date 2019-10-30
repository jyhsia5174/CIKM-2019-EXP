#!/bin/bash

t=100
wn=1
w=0
ns='--ns'

tr='tr.100.remap.ips'
te='va.1.remap.ips'
item='item'

logs_pth='logs'
mkdir -p $logs_pth

task(){
for k in 8 16 32 64 
do
    for l in 1 2 4 8 16 32 64 128 
    do
        cmd='./train'
        cmd="$cmd -k $k"
        cmd="$cmd -l $l"
        cmd="$cmd -t $t"
        cmd="$cmd -c 5"
        cmd="$cmd -wn ${wn}"
        cmd="$cmd -w ${w}"
        cmd="$cmd $ns"
        cmd="$cmd -p ${te}"
        cmd="$cmd ${item} ${tr}"
        cmd="$cmd > $logs_pth/${tr}.${k}.${l}.$ns"
        echo $cmd
    done
done
}

task
#task | xargs -d '\n' -P $num_core -I {} sh -c {} &
