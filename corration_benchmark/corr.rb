require 'daru'
require 'benchmark'

df = Daru::DataFrame.from_csv('./wine.csv')

Benchmark.bm 15 do |r|
  r.report "correlation" do
    df.corr
  end
end
