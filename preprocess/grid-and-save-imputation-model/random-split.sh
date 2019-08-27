#!/bin/bash

if [ -z $1 ]
then
echo "Usage: ./split.sh file ratio"
exit
fi

file=$1
ratio=$2


l=`wc -l < ${file}`
sz_a=`echo "scale=0; ${l} * ${ratio}" | bc | awk '{printf "%d\n", $0}'`
sz_b=`echo "scale=0; ${l} - ${sz_a}" | bc `

shuf ${file} > ${file}.shuf
head -n ${sz_a} ${file}.shuf > ${file}.${ratio} &
tail -n ${sz_b} ${file}.shuf > ${file}.${ratio}.inv

rm ${file}.shuf
