#! /bin/bash

# Split data 
./yh.data/split-data/split.sh

# Filter data
./yh.data/filter.2.5/do-filter.sh

# Convert-format
./yh.data/convert-format/setting.sh

# ==================== #

# Link neccessary files
./preprocess/init.sh

# calc-IPS
./preprocess/calc-IPS/calc.sh

# calc itemwise r
./preprocess/calc-item-r/calc.sh

# calc-r
./preprocess/calc-r/calc.sh

# save imputation model
./preprocess/save-imputation-model/save-model.sh


# ==================== #

# Link neccessary files
./code/init.sh

# Source blas
. ./code/source-blas.sh

# CausE
make -C code/CauseE clean all
./code/CauseE/do-test.sh

# FFM-Sc
make -C code/FFM-Sc clean all
./code/FFM-Sc/do-test.sh

# FFM-St
make -C code/FFM-St clean all
./code/FFM-St/do-test.sh

# FFM-Sc_St
make -C code/FFM-Sc_St clean all
./code/FFM-Sc_St/do-test.sh

# IPS
make -C code/IPS clean all
./code/IPS/do-test.sh

# new-complex
make -C code/new-complex clean all
./code/new-complex/do-test.sh

# new item r
make -C code/new-item-r clean all
./code/new-item-r/do-test.sh

# new r
make -C code/new-r clean all
./code/new-r/do-test.sh


