#!/bin/bash

t=100
ns='--ns'

tr='tr.99.remap'
treat='tr.1.remap'
te='va.1.remap'
item='item'

logs_pth='logs'
mkdir -p $logs_pth

task(){
for k in 8 16 32 64 
do
    for l in 0.0625 0.03125 0.015625 0.0078125 0.00390625 0.001953125 0.0009765625 
    do
        for ldiff in 0.0625 0.03125 0.015625 0.0078125 0.00390625 0.001953125 0.0009765625 
        do
            cmd='./trian'
            cmd="$cmd -k $k"
            cmd="$cmd -l $l"
            cmd="$cmd -ldiff $ldiff"
            cmd="$cmd -t $t"
            cmd="$cmd -c 5"
            cmd="$cmd $ns"
            cmd="$cmd -p ${te}"
            cmd="$cmd --treat ${treat}"
            cmd="$cmd ${item} ${tr}"
            cmd="$cmd > $logs_pth/${tr}.${k}.${l}.${ldiff}.$ns"
            echo $cmd
        done
    done
done
}

task
#task | xargs -d '\n' -P $num_core -I {} sh -c {} &
