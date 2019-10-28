#!/bin/bash

src=../../yh.data/convert-format/remap
src_pre=../../preprocess

# For CauseE
des=CauseE
ln -s ${src}/item ${des}/

ln -s ${src}/tr.99.remap ${des}/
ln -s ${src}/tr.1.remap ${des}/
ln -s ${src}/va.1.remap ${des}/

ln -s ${src}/trva.99.remap ${des}/
ln -s ${src}/trva.1.remap ${des}/
ln -s ${src}/te.1.remap ${des}/

# For new-complex
des=new-complex
ln -s ${src}/item ${des}/

ln -s ${src}/tr.100.remap ${des}/
ln -s ${src}/va.1.remap ${des}/

ln -s ${src}/trva.100.remap ${des}/
ln -s ${src}/te.1.remap ${des}/

ln -s ${src_pre}/save-imputation-model/tr.100.remap.model ${des}/tr.model
ln -s ${src_pre}/save-imputation-model/trva.100.remap.model ${des}/trva.model

# For IPS 
des=IPS
ln -s ${src}/item ${des}/

ln -s ${src_pre}/calc-IPS/tr.100.remap.ips ${des}/
ln -s ${src_pre}/calc-IPS/va.1.remap.ips ${des}/

ln -s ${src_pre}/calc-IPS/trva.100.remap.ips ${des}/
ln -s ${src_pre}/calc-IPS/te.1.remap.ips ${des}/

# For new-item-r
des=new-item-r
ln -s ${src}/item ${des}/

ln -s ${src}/tr.100.remap ${des}/
ln -s ${src}/va.1.remap ${des}/

ln -s ${src}/trva.100.remap ${des}/
ln -s ${src}/te.1.remap ${des}/

ln -s ${src_pre}/calc-item-r/tr.1.remap.r_score ${des}/tr.r_score
