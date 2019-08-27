#!/bin/bash

k=64
l=2
t=4

trva=tr.100.remap
echo "./train -l ${l} -t ${t} -p ${trva} -save-imp ${trva}.bias.model -w 0 -wn 1 -r 0 -c 5 -k ${k} --ns item tr.1.remap &"

trva=trva.100.remap
echo "./train -l ${l} -t ${t} -p ${trva} -save-imp ${trva}.bias.model -w 0 -wn 1 -r 0 -c 5 -k ${k} --ns item tr.1.remap &"
