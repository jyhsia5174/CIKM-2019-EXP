#!/bin/bash

src=../remap

# For IPS
des=calc-IPS
ln -s ${src}/tr.100.remap ${des}/
ln -s ${src}/tr.1.remap ${des}/

# For item-r
des=calc-item-r
ln -s ${src}/tr.100.remap ${des}/
ln -s ${src}/tr.1.remap ${des}/

# For calc-r
des=calc-r
ln -s ${src}/tr.100.remap ${des}/
ln -s ${src}/tr.1.remap ${des}/

# For grid-and-save-imputation-model 
des=grid-and-save-imputation-model
ln -s ${src}/tr.100.remap ${des}/
ln -s ${src}/tr.1.remap ${des}/
ln -s ${src}/trva.100.remap ${des}/
ln -s ${src}/trva.1.remap ${des}/
cd ${des}
./random-split.sh tr.1.remap 0.5
./random-split.sh tr.100.remap 0.5
