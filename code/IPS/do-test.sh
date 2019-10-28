#!/bin/bash

wn=1
w=0
ns='--ns'

tr='trva.99.remap.ips'
te='te.1.remap.ips'
item='item'

logs_pth='test-logs'
mkdir -p $logs_pth

task(){
t=100
k=8
l=8

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
}

task
#task | xargs -d '\n' -P $num_core -I {} sh -c {} &
