# Grid model

## Modify yh.tr
Input: yh.tr 
Output: yh.all.tr.ps
```shell
awk '{printf "%s\t1\n", $0}' yh.tr > yh.all.tr.ps
```

## split.py file
Input: yh.all.tr.ps
Output: yh.all.tr.{0..4}.ps.tr yh.all.tr.{0..4}.ps.te
```shell
python split.py yh.all.tr.ps
```

## grid.py
Input: *.tr *.te
Output: *.logs
```shell
cd grid-code
make
cd ..
ln -s grid-code/train 
./grid.sh
```

## merge.py
Input: *.logs
Output: *.merges 
```shell
./merge_logs.sh
head *.best_score
```
Example:
\`==> 0.0001.best_score <==
200	1.6058

==> 0.001.best_score <==
200	1.3182

==> 0.01.best_score <==
62	1.2482

==> 0.1.best_score <==
34	1.2082

==> 1.best_score <==
1	1.5184
\`
Select best paramter with lowest mse score, then we have lowest mse  1.2092 with l = 0.1 and iteration 34.

## Filter yh.all.tr.ps

## use ocmf to filter yh.all.tr.ps with 2.5 threshold
