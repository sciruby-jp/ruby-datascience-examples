require 'daru'
require 'benchmark'

df = Daru::DataFrame.from_csv('./wine.csv')
df = Daru::DataFrame.new(df.to_h, dtype: :nmatrix, nm_dtype: :dfloat)

Benchmark.bm 15 do |r|
  r.report "correlation" do
    df.corr
  end
end
