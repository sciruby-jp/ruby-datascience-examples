import pandas as pd
from benchmarker import Benchmarker

df = pd.read_csv('./wine.csv', sep=',', header=0)

with Benchmarker() as bench:
    @bench('corr')
    def _(bm):
        for i in bm:
            df.corr()
