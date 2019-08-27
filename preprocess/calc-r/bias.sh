#!/bin/bash

tr=tr.100.remap
python calc_r.py ${tr} > ${tr}.r_score &
