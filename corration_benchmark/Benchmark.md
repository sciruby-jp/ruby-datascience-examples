# Daru

## default data container
[corr.rb](https://github.com/ash1day/ra2016/blob/master/corration_benchmark/corr.rb)

```shell
> ruby corr.rb
                      user     system      total        real
correlation       5.330000   0.100000   5.430000 (  5.613104)
```

## using nmatrix feature
[corr-nmatrix.rb](https://github.com/ash1day/ra2016/blob/master/corration_benchmark/corr-nmatrix.rb)

```shell
> ruby corr-nmatrix.rb
                      user     system      total        real
correlation       5.220000   0.060000   5.280000 (  5.303881)
```

# Pandas

[corr.py](https://github.com/ash1day/ra2016/blob/master/corration_benchmark/corr.py)

```shell
> python3 corr.py
## benchmarker:         release 4.0.1 (for python)
## python version:      3.5.2
## python compiler:     GCC 4.2.1 Compatible Apple LLVM 7.3.0 (clang-703.0.31)
## python platform:     Darwin-16.4.0-x86_64-i386-64bit
## python executable:   /usr/local/opt/python3/bin/python3.5
## cpu model:           Intel(R) Core(TM) i7-3520M CPU @ 2.90GHz
## parameters:          loop=1, cycle=1, extra=0

##                                       real    (total    = user    + sys)
corr                                   0.0032    0.0000    0.0000    0.0000

## Ranking                               real
corr                                   0.0032  (100.0) ********************

## Matrix                                real    [01]
[01] corr                              0.0032   100.0

```
