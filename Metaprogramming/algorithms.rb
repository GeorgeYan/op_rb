require 'benchmark'
result = Benchmark.bm do |bm|
  bm.report do
    x = 5
    10_000_100.times do
      x += 1
    end
  end
end

def present?(array, element)
  array.each do |e|
    return true if e == element
  end
  false
end

million_items = Benchmark.measure do
  present?((1..1_000_000).to_a, :bob)
end

ten_million_item = Benchmark.measure do
  present?((1..10_000_000).to_a, :bob)
end
p million_items
p ten_million_item

def combine(a,b)
  result = []
  a.each do |i|
    b.each do |j|
      result << [i,j]
    end
  end
  result
end

first = Benchmark.measure do
  combine((1..2_000).to_a, (1..2_000).to_a)
end

Benchmark.bm do |bm|
  bm.report { "This is a test".split }
  bm.report { "This is a test".scan(/\w+/) }
end
