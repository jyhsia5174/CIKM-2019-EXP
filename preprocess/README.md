# Preprocess

There are several way to exploit the random policy. We will consider four different ways.

## Initialization

- Config **init.sh** file
- Link necessary files
```shell
./init
```

## Calculate inverse propensity score (IPS) (calc-IPS)

```shell
cd calc-IPS
./calc.sh
```

## Calculate imputation constant (calc-r)

- constant from random policy
```shell
cd calc-r
./calc.sh
```
- constant from bias policy
```shell
cd calc-r
./bias.sh
```

## Calculate imputation itemwise constant (calc-item-r)

- constant from random policy
```shell
cd calc-r
./calc.sh
```
- constant from bias policy
```shell
cd calc-r
./bias.sh
```

## Generate impuation model (grid-and-save-imputation-model)

