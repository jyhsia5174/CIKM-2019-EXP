# Grid model

1. split.py file
Input: yh.all.tr.ps
Output: yh.all.tr.{0..4}.ps.tr yh.all.tr.{0..4}.ps.te

2. grid.py
Input: *.tr *.te
Output: *.logs

3. merge.py
Input: *.logs
Output: *.merges 
-select best paramter

# Filter yh.all.tr.ps

4. use ocmf to filter yh.all.tr.ps with 2.5 threshold
